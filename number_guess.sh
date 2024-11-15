#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read USERNAME

USER_QUERY=$($PSQL "SELECT user_id, games_played, best_game FROM users WHERE username='$USERNAME'")
if [[ -z $USER_QUERY ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
else
  IFS="|" read USER_ID GAMES_PLAYED BEST_GAME <<< "$USER_QUERY"
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$((RANDOM % 1000 + 1))
GUESSES=0

echo "Guess the secret number between 1 and 1000:"
while true; do
  read GUESS
  ((GUESSES++))

  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  if (( GUESS == SECRET_NUMBER )); then
    echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  elif (( GUESS > SECRET_NUMBER )); then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done

if [[ -z $USER_QUERY ]]; then
  # First game for a new user
  UPDATE_USER=$($PSQL "UPDATE users SET games_played = 1, best_game = $GUESSES WHERE username = '$USERNAME'")
else
  NEW_GAMES_PLAYED=$((GAMES_PLAYED + 1))
  if [[ -z $BEST_GAME || $GUESSES -lt $BEST_GAME ]]; then
    UPDATE_USER=$($PSQL "UPDATE users SET games_played = $NEW_GAMES_PLAYED, best_game = $GUESSES WHERE username = '$USERNAME'")
  else
    UPDATE_USER=$($PSQL "UPDATE users SET games_played = $NEW_GAMES_PLAYED WHERE username = '$USERNAME'")
  fi
fi
