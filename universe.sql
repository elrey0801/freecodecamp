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
    age numeric(5,1),
    dfrom_earth integer NOT NULL,
    name character varying(20) NOT NULL,
    describe text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: just_for_passing; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.just_for_passing (
    name character varying(20) NOT NULL,
    just_for_passing_id integer NOT NULL,
    thethird integer
);


ALTER TABLE public.just_for_passing OWNER TO freecodecamp;

--
-- Name: just_for_passing_just_for_passing_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.just_for_passing_just_for_passing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.just_for_passing_just_for_passing_id_seq OWNER TO freecodecamp;

--
-- Name: just_for_passing_just_for_passing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.just_for_passing_just_for_passing_id_seq OWNED BY public.just_for_passing.just_for_passing_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age numeric(5,1),
    dfrom_earth integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    has_life boolean,
    age numeric(5,1),
    describe text,
    dfrom_earth integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age numeric(5,1),
    dfrom_earth integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: just_for_passing just_for_passing_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_for_passing ALTER COLUMN just_for_passing_id SET DEFAULT nextval('public.just_for_passing_just_for_passing_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 9999.0, 10000000, 'milkyway', NULL);
INSERT INTO public.galaxy VALUES (2, 9999.0, 2000, 'galaxy 2', '2nd');
INSERT INTO public.galaxy VALUES (3, 9999.0, 3000, 'galaxy 3', '3rd');
INSERT INTO public.galaxy VALUES (4, 9999.0, 4000, 'galaxy 4', '4th');
INSERT INTO public.galaxy VALUES (5, 9999.0, 5000, 'galaxy 5', '5th');
INSERT INTO public.galaxy VALUES (6, 9999.0, 6000, 'galaxy 6', '6th');


--
-- Data for Name: just_for_passing; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.just_for_passing VALUES ('1', 1, NULL);
INSERT INTO public.just_for_passing VALUES ('2', 2, NULL);
INSERT INTO public.just_for_passing VALUES ('3', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 5000.0, 5, 'themoon', false, 1);
INSERT INTO public.moon VALUES (2, NULL, 20, 'moon 2', NULL, 2);
INSERT INTO public.moon VALUES (3, NULL, 20, 'moon 3', NULL, 3);
INSERT INTO public.moon VALUES (4, NULL, 20, 'moon 4', NULL, 4);
INSERT INTO public.moon VALUES (5, NULL, 20, 'moon 5', NULL, 5);
INSERT INTO public.moon VALUES (6, NULL, 20, 'moon 6', NULL, 6);
INSERT INTO public.moon VALUES (7, NULL, 20, 'moon 7', NULL, 7);
INSERT INTO public.moon VALUES (8, NULL, 20, 'moon 8', NULL, 8);
INSERT INTO public.moon VALUES (9, NULL, 20, 'moon 9', NULL, 9);
INSERT INTO public.moon VALUES (10, NULL, 20, 'moon 10', NULL, 10);
INSERT INTO public.moon VALUES (11, NULL, 20, 'moon 11', NULL, 11);
INSERT INTO public.moon VALUES (12, NULL, 20, 'moon 12', NULL, 12);
INSERT INTO public.moon VALUES (13, NULL, 20, 'moon 13', NULL, 1);
INSERT INTO public.moon VALUES (14, NULL, 20, 'moon 14', NULL, 2);
INSERT INTO public.moon VALUES (15, NULL, 20, 'moon 15', NULL, 3);
INSERT INTO public.moon VALUES (16, NULL, 20, 'moon 16', NULL, 4);
INSERT INTO public.moon VALUES (17, NULL, 20, 'moon 17', NULL, 5);
INSERT INTO public.moon VALUES (18, NULL, 20, 'moon 18', NULL, 6);
INSERT INTO public.moon VALUES (19, NULL, 20, 'moon 19', NULL, 7);
INSERT INTO public.moon VALUES (20, NULL, 20, 'moon 20', NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, true, 9999.0, 'our home', 0, 'theearth', 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, 1000, 'earth 2', 2);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, 1000, 'earth 3', 3);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, 1000, 'earth 4', 4);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, 1000, 'earth 5', 5);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, 1000, 'earth 6', 6);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, 1000, 'earth 7', 1);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, 1000, 'earth 8', 2);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, 1000, 'earth 9', 3);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, 1000, 'earth 10', 4);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, 1000, 'earth 11', 5);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, 1000, 'earth 12', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 9999.0, 140, 'thesun', 1);
INSERT INTO public.star VALUES (2, 9999.0, 240, 'thesun 2', 2);
INSERT INTO public.star VALUES (3, 9999.0, 340, 'thesun 3', 3);
INSERT INTO public.star VALUES (4, 9999.0, 440, 'thesun 4', 4);
INSERT INTO public.star VALUES (5, 9999.0, 540, 'thesun 5', 5);
INSERT INTO public.star VALUES (6, 9999.0, 640, 'thesun 6', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: just_for_passing_just_for_passing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.just_for_passing_just_for_passing_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: just_for_passing just_for_passing_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_for_passing
    ADD CONSTRAINT just_for_passing_name_key UNIQUE (name);


--
-- Name: just_for_passing just_for_passing_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_for_passing
    ADD CONSTRAINT just_for_passing_pkey PRIMARY KEY (just_for_passing_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

