--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game (
);


ALTER TABLE public.game OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1731249414033', 0, NULL);
INSERT INTO public.users VALUES (2, 'user_1731249414032', 0, NULL);
INSERT INTO public.users VALUES (3, 'user_1731249514401', 0, NULL);
INSERT INTO public.users VALUES (4, 'user_1731249514400', 0, NULL);
INSERT INTO public.users VALUES (5, 'user_1731249539700', 0, NULL);
INSERT INTO public.users VALUES (6, 'user_1731249539699', 0, NULL);
INSERT INTO public.users VALUES (58, 'user_1731253966597', 5, 120);
INSERT INTO public.users VALUES (8, 'user_1731249664463', 2, 139);
INSERT INTO public.users VALUES (7, 'user_1731249664464', 5, 53);
INSERT INTO public.users VALUES (24, 'user_1731250796705', 2, 147);
INSERT INTO public.users VALUES (74, 'user_1731255505272', 2, 246);
INSERT INTO public.users VALUES (10, 'user_1731249804592', 2, 297);
INSERT INTO public.users VALUES (23, 'user_1731250796706', 5, 325);
INSERT INTO public.users VALUES (9, 'user_1731249804593', 5, 325);
INSERT INTO public.users VALUES (43, 'user_1731252141255', 2, 56);
INSERT INTO public.users VALUES (12, 'user_1731249855779', 2, 201);
INSERT INTO public.users VALUES (26, 'user_1731251039778', 2, 171);
INSERT INTO public.users VALUES (11, 'user_1731249855780', 5, 113);
INSERT INTO public.users VALUES (42, 'user_1731252141256', 5, 64);
INSERT INTO public.users VALUES (25, 'user_1731251039779', 5, 166);
INSERT INTO public.users VALUES (14, 'user_1731250087063', 2, 505);
INSERT INTO public.users VALUES (13, 'user_1731250087064', 5, 218);
INSERT INTO public.users VALUES (61, 'user_1731254057616', 2, 230);
INSERT INTO public.users VALUES (16, 'user_1731250302695', 2, 50);
INSERT INTO public.users VALUES (28, 'user_1731251128546', 2, 89);
INSERT INTO public.users VALUES (73, 'user_1731255505273', 5, 218);
INSERT INTO public.users VALUES (15, 'user_1731250302696', 5, 158);
INSERT INTO public.users VALUES (45, 'user_1731252583967', 2, 549);
INSERT INTO public.users VALUES (27, 'user_1731251128547', 5, 324);
INSERT INTO public.users VALUES (18, 'user_1731250446995', 2, 539);
INSERT INTO public.users VALUES (60, 'user_1731254057617', 5, 89);
INSERT INTO public.users VALUES (17, 'user_1731250446996', 5, 113);
INSERT INTO public.users VALUES (44, 'user_1731252583968', 5, 129);
INSERT INTO public.users VALUES (30, 'user_1731251211854', 2, 138);
INSERT INTO public.users VALUES (20, 'user_1731250631766', 2, 6);
INSERT INTO public.users VALUES (19, 'user_1731250631767', 5, 18);
INSERT INTO public.users VALUES (29, 'user_1731251211855', 5, 158);
INSERT INTO public.users VALUES (31, 'giftsunni', 0, NULL);
INSERT INTO public.users VALUES (22, 'user_1731250740801', 2, 308);
INSERT INTO public.users VALUES (21, 'user_1731250740802', 5, 75);
INSERT INTO public.users VALUES (33, 'user_1731251482243', 2, 517);
INSERT INTO public.users VALUES (47, 'user_1731252611015', 2, 4);
INSERT INTO public.users VALUES (32, 'user_1731251482244', 5, 268);
INSERT INTO public.users VALUES (46, 'user_1731252611016', 5, 230);
INSERT INTO public.users VALUES (35, 'user_1731251659330', 2, 733);
INSERT INTO public.users VALUES (63, 'user_1731254118560', 2, 186);
INSERT INTO public.users VALUES (34, 'user_1731251659331', 5, 155);
INSERT INTO public.users VALUES (76, 'user_1731255523093', 2, 83);
INSERT INTO public.users VALUES (49, 'user_1731252670002', 2, 667);
INSERT INTO public.users VALUES (37, 'user_1731252065313', 2, 83);
INSERT INTO public.users VALUES (62, 'user_1731254118561', 5, 42);
INSERT INTO public.users VALUES (36, 'user_1731252065314', 5, 193);
INSERT INTO public.users VALUES (48, 'user_1731252670003', 5, 130);
INSERT INTO public.users VALUES (39, 'user_1731252073896', 2, 323);
INSERT INTO public.users VALUES (38, 'user_1731252073897', 5, 214);
INSERT INTO public.users VALUES (51, 'user_1731253497104', 2, 347);
INSERT INTO public.users VALUES (75, 'user_1731255523094', 5, 194);
INSERT INTO public.users VALUES (41, 'user_1731252096274', 2, 13);
INSERT INTO public.users VALUES (65, 'user_1731254470307', 2, 571);
INSERT INTO public.users VALUES (50, 'user_1731253497105', 5, 96);
INSERT INTO public.users VALUES (40, 'user_1731252096275', 5, 86);
INSERT INTO public.users VALUES (64, 'user_1731254470308', 5, 102);
INSERT INTO public.users VALUES (53, 'user_1731253560551', 2, 343);
INSERT INTO public.users VALUES (52, 'user_1731253560552', 5, 115);
INSERT INTO public.users VALUES (55, 'user_1731253623938', 2, 122);
INSERT INTO public.users VALUES (67, 'user_1731254552794', 2, 129);
INSERT INTO public.users VALUES (78, 'user_1731255629826', 2, 21);
INSERT INTO public.users VALUES (54, 'user_1731253623939', 5, 21);
INSERT INTO public.users VALUES (66, 'user_1731254552795', 5, 50);
INSERT INTO public.users VALUES (57, 'user_1731253759701', 2, 98);
INSERT INTO public.users VALUES (77, 'user_1731255629827', 5, 210);
INSERT INTO public.users VALUES (56, 'user_1731253759702', 5, 37);
INSERT INTO public.users VALUES (69, 'user_1731254755344', 2, 235);
INSERT INTO public.users VALUES (59, 'user_1731253966596', 2, 629);
INSERT INTO public.users VALUES (68, 'user_1731254755345', 5, 142);
INSERT INTO public.users VALUES (70, 'giftsuuni', 0, NULL);
INSERT INTO public.users VALUES (72, 'user_1731255471089', 2, 684);
INSERT INTO public.users VALUES (71, 'user_1731255471090', 5, 103);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 78, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

