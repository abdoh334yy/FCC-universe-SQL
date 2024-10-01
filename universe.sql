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
    speed integer,
    description text,
    name character varying(30),
    nuts boolean,
    deez numeric NOT NULL
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
-- Name: goal; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.goal (
    name character varying(30),
    goal_id integer NOT NULL,
    nuts boolean,
    deez numeric NOT NULL,
    description text
);


ALTER TABLE public.goal OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(30),
    nuts boolean,
    deez numeric NOT NULL,
    planet_id integer
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
    speed integer,
    description text,
    name character varying(30),
    nuts boolean,
    deez numeric NOT NULL,
    star_id integer
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
    speed integer,
    description text,
    name character varying(30),
    nuts boolean,
    deez numeric NOT NULL,
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

INSERT INTO public.galaxy VALUES (1, NULL, 'Our home galaxy', 'Milky Way', NULL, 1001);
INSERT INTO public.galaxy VALUES (2, NULL, 'Closest major galaxy', 'Andromeda', NULL, 1002);
INSERT INTO public.galaxy VALUES (3, NULL, 'Small spiral galaxy', 'Triangulum', NULL, 1003);
INSERT INTO public.galaxy VALUES (4, NULL, 'Unbarred spiral galaxy', 'Sombrero', NULL, 1004);
INSERT INTO public.galaxy VALUES (5, NULL, 'Grand-design spiral galaxy', 'Whirlpool', NULL, 1005);
INSERT INTO public.galaxy VALUES (6, NULL, 'Irregular galaxy', 'Cigar', NULL, 1006);


--
-- Data for Name: goal; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.goal VALUES ('Goal1', 1, NULL, 1001, 'First goal');
INSERT INTO public.goal VALUES ('Goal2', 2, NULL, 1002, 'Second goal');
INSERT INTO public.goal VALUES ('Goal3', 3, NULL, 1003, 'Third goal');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 'First moon of Earth', 'Moon1', NULL, 101, 4);
INSERT INTO public.moon VALUES (2, NULL, 'Second moon of Earth', 'Moon2', NULL, 202, 4);
INSERT INTO public.moon VALUES (3, NULL, 'First moon of Mars', 'Moon3', NULL, 303, 2);
INSERT INTO public.moon VALUES (4, NULL, 'Second moon of Mars', 'Moon4', NULL, 404, 2);
INSERT INTO public.moon VALUES (5, NULL, 'First moon of Jupiter', 'Moon5', NULL, 505, 8);
INSERT INTO public.moon VALUES (6, NULL, 'Second moon of Jupiter', 'Moon6', NULL, 606, 8);
INSERT INTO public.moon VALUES (7, NULL, 'First moon of Saturn', 'Moon7', NULL, 707, 7);
INSERT INTO public.moon VALUES (8, NULL, 'Second moon of Saturn', 'Moon8', NULL, 808, 7);
INSERT INTO public.moon VALUES (9, NULL, 'First moon of Uranus', 'Moon9', NULL, 909, 6);
INSERT INTO public.moon VALUES (10, NULL, 'Second moon of Uranus', 'Moon10', NULL, 1010, 6);
INSERT INTO public.moon VALUES (11, NULL, 'First moon of Neptune', 'Moon11', NULL, 1111, 5);
INSERT INTO public.moon VALUES (12, NULL, 'Second moon of Neptune', 'Moon12', NULL, 1212, 5);
INSERT INTO public.moon VALUES (13, NULL, 'First moon of Haumea', 'Moon13', NULL, 1313, 10);
INSERT INTO public.moon VALUES (14, NULL, 'Second moon of Haumea', 'Moon14', NULL, 1414, 10);
INSERT INTO public.moon VALUES (15, NULL, 'First moon of Makemake', 'Moon15', NULL, 1515, 11);
INSERT INTO public.moon VALUES (16, NULL, 'Second moon of Makemake', 'Moon16', NULL, 1616, 11);
INSERT INTO public.moon VALUES (17, NULL, 'First moon of Eris', 'Moon17', NULL, 1717, 12);
INSERT INTO public.moon VALUES (18, NULL, 'Second moon of Eris', 'Moon18', NULL, 1818, 12);
INSERT INTO public.moon VALUES (19, NULL, 'First moon of Pluto', 'Moon19', NULL, 1919, 9);
INSERT INTO public.moon VALUES (20, NULL, 'Second moon of Pluto', 'Moon20', NULL, 2020, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 'Closest planet to the sun', 'Mercury', NULL, 101, 1);
INSERT INTO public.planet VALUES (2, NULL, 'Red planet', 'Mars', NULL, 202, 1);
INSERT INTO public.planet VALUES (3, NULL, 'Hottest planet', 'Venus', NULL, 303, 2);
INSERT INTO public.planet VALUES (4, NULL, 'Home planet', 'Earth', NULL, 404, 1);
INSERT INTO public.planet VALUES (5, NULL, 'Farthest planet from the sun', 'Neptune', NULL, 505, 3);
INSERT INTO public.planet VALUES (6, NULL, 'Tilted axis', 'Uranus', NULL, 606, 3);
INSERT INTO public.planet VALUES (7, NULL, 'Ringed planet', 'Saturn', NULL, 707, 2);
INSERT INTO public.planet VALUES (8, NULL, 'Largest planet', 'Jupiter', NULL, 808, 2);
INSERT INTO public.planet VALUES (9, NULL, 'Dwarf planet', 'Pluto', NULL, 909, 3);
INSERT INTO public.planet VALUES (10, NULL, 'Irregular shape', 'Haumea', NULL, 1010, 1);
INSERT INTO public.planet VALUES (11, NULL, 'Highly inclined orbit', 'Makemake', NULL, 1111, 1);
INSERT INTO public.planet VALUES (12, NULL, 'Dwarf planet in the Kuiper belt', 'Eris', NULL, 1212, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, 'Our home star', 'Sun', NULL, 2001, 1);
INSERT INTO public.star VALUES (2, NULL, 'Brightest star in the sky', 'Sirius', NULL, 2002, 2);
INSERT INTO public.star VALUES (3, NULL, 'Second-brightest star', 'Canopus', NULL, 2003, 2);
INSERT INTO public.star VALUES (4, NULL, 'Orange giant star', 'Arcturus', NULL, 2004, 3);
INSERT INTO public.star VALUES (5, NULL, 'Bright white star', 'Vega', NULL, 2005, 1);
INSERT INTO public.star VALUES (6, NULL, 'Yellow-orange giant star', 'Capella', NULL, 2006, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 2, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_nuts_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nuts_key UNIQUE (nuts);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: goal goal_goal_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.goal
    ADD CONSTRAINT goal_goal_id_key UNIQUE (goal_id);


--
-- Name: goal goal_nuts_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.goal
    ADD CONSTRAINT goal_nuts_key UNIQUE (nuts);


--
-- Name: goal goal_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.goal
    ADD CONSTRAINT goal_pkey PRIMARY KEY (goal_id);


--
-- Name: moon moon_nuts_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nuts_key UNIQUE (nuts);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nuts_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nuts_key UNIQUE (nuts);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_nuts_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nuts_key UNIQUE (nuts);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

