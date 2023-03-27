--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance boolean NOT NULL,
    single boolean NOT NULL,
    description text NOT NULL,
    dimensions numeric NOT NULL,
    type integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    dimensions numeric NOT NULL,
    distance numeric NOT NULL,
    single integer NOT NULL,
    type integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    single integer NOT NULL,
    distance numeric NOT NULL,
    dimensions numeric NOT NULL,
    description text NOT NULL,
    type integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    dimensions numeric NOT NULL,
    description text NOT NULL,
    distance numeric NOT NULL,
    single integer NOT NULL,
    type integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: ufo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ufo (
    type integer NOT NULL,
    dimensions integer NOT NULL,
    ufo_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.ufo OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', true, true, '1', 1000000, 1);
INSERT INTO public.galaxy VALUES (2, '2', true, true, '2', 10000, 2);
INSERT INTO public.galaxy VALUES (3, '3', true, true, '12', 90000, 3);
INSERT INTO public.galaxy VALUES (4, '4', true, true, '1', 0, 4);
INSERT INTO public.galaxy VALUES (5, '5', false, true, '2', 10, 5);
INSERT INTO public.galaxy VALUES (6, '6', false, false, '1', 99999, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '2', '1', 1, 10000, 1, 1);
INSERT INTO public.moon VALUES (2, '2', '1', 10000, 1, 1, 2);
INSERT INTO public.moon VALUES (3, '2', '1', 10000, 1, 1, 3);
INSERT INTO public.moon VALUES (4, '2', '1', 10000, 1, 1, 4);
INSERT INTO public.moon VALUES (5, '2', '1', 10000, 1, 1, 5);
INSERT INTO public.moon VALUES (6, '2', '1', 10000, 1, 1, 6);
INSERT INTO public.moon VALUES (7, '2', '1', 10000, 1, 1, 7);
INSERT INTO public.moon VALUES (8, '2', '1', 10000, 1, 1, 8);
INSERT INTO public.moon VALUES (9, '2', '1', 10000, 1, 1, 9);
INSERT INTO public.moon VALUES (10, '2', '1', 10000, 1, 1, 10);
INSERT INTO public.moon VALUES (11, '2', '1', 10000, 1, 1, 11);
INSERT INTO public.moon VALUES (12, '2', '1', 10000, 1, 1, 12);
INSERT INTO public.moon VALUES (13, '2', '1', 10000, 1, 1, 13);
INSERT INTO public.moon VALUES (14, '2', '1', 10000, 1, 1, 14);
INSERT INTO public.moon VALUES (15, '2', '1', 10000, 1, 1, 15);
INSERT INTO public.moon VALUES (16, '2', '1', 10000, 1, 1, 16);
INSERT INTO public.moon VALUES (17, '2', '1', 10000, 1, 1, 17);
INSERT INTO public.moon VALUES (18, '2', '1', 10000, 1, 1, 18);
INSERT INTO public.moon VALUES (19, '2', '1', 10000, 1, 1, 19);
INSERT INTO public.moon VALUES (20, '2', '1', 10000, 1, 1, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1, 1, 10000, '1', 1);
INSERT INTO public.planet VALUES (2, '2', 1, 1, 10000, '1', 2);
INSERT INTO public.planet VALUES (3, '2', 1, 1, 10000, '1', 3);
INSERT INTO public.planet VALUES (4, '2', 1, 1, 10000, '1', 4);
INSERT INTO public.planet VALUES (5, '2', 1, 1, 10000, '1', 5);
INSERT INTO public.planet VALUES (6, '2', 1, 1, 10000, '1', 6);
INSERT INTO public.planet VALUES (7, '2', 1, 1, 10000, '1', 7);
INSERT INTO public.planet VALUES (8, '2', 1, 1, 10000, '1', 8);
INSERT INTO public.planet VALUES (9, '2', 1, 1, 10000, '1', 9);
INSERT INTO public.planet VALUES (10, '2', 1, 1, 10000, '1', 10);
INSERT INTO public.planet VALUES (11, '2', 1, 1, 10000, '1', 11);
INSERT INTO public.planet VALUES (12, '2', 1, 1, 10000, '1', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', 878789, '1', 1, 1, 1);
INSERT INTO public.star VALUES (2, '2', 100000, '2', 2, 2, 2);
INSERT INTO public.star VALUES (3, '3', 9999, '3', 3, 3, 3);
INSERT INTO public.star VALUES (4, '4', 103324325, '4', 4, 4, 4);
INSERT INTO public.star VALUES (5, '5', 1035, '5', 5, 5, 5);
INSERT INTO public.star VALUES (6, '6', 1009099, '6', 6, 6, 6);


--
-- Data for Name: ufo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ufo VALUES (1, 20000, 1, NULL);
INSERT INTO public.ufo VALUES (2, 1000, 2, NULL);
INSERT INTO public.ufo VALUES (3, 19999, 3, NULL);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_key UNIQUE (type);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_type_key UNIQUE (type);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_type_key UNIQUE (type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_type_key UNIQUE (type);


--
-- Name: ufo ufo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_pkey PRIMARY KEY (ufo_id);


--
-- Name: ufo ufo_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_type_key UNIQUE (type);


--
-- Name: ufo type; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT type FOREIGN KEY (type) REFERENCES public.galaxy(type);


--
-- PostgreSQL database dump complete
--

