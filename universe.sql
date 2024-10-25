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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30),
    mass_in_solar_mass numeric NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_million integer,
    approx_stars_in_billion integer,
    night_sky_observable boolean NOT NULL,
    has_supermassive_blackhole boolean,
    description text,
    distance_in_light_years numeric NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_million integer,
    size integer,
    night_sky_observable boolean NOT NULL,
    has_atmosphere boolean,
    description text,
    distance_in_light_years numeric NOT NULL,
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
    name character varying(30),
    age_in_million integer,
    size integer,
    night_sky_observable boolean NOT NULL,
    in_goldilocks_zone boolean,
    description text,
    distance_in_light_years numeric NOT NULL,
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
    name character varying(30),
    age_in_million integer,
    size integer,
    night_sky_observable boolean NOT NULL,
    completed_lifecycle boolean,
    description text,
    distance_in_light_years numeric NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (4, 'Sagittarius A*', 4.1);
INSERT INTO public.blackhole VALUES (5, 'Cygnus X-1', 15.0);
INSERT INTO public.blackhole VALUES (6, 'V616 Monocerotis (A0620-00)', 6.0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 100, true, true, 'Our home galaxy', 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 1000, true, true, 'Nearest major galaxy to the Milky Way', 2.537);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 500, 50, false, true, 'A spiral galaxy with a prominent companion galaxy', 23);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 14000, 1100, false, true, 'A supergiant elliptical galaxy', 53);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 10000, 40, true, false, 'A spiral galaxy in the Local Group', 3);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 12000, 70, false, true, 'A face-on spiral galaxy', 21);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (18, 'Moon', 4500, 0, true, false, 'Earth moon.', 0.384, 15);
INSERT INTO public.moon VALUES (19, 'Europa', 4500, 0, true, true, 'Moon of Jupiter with a subsurface ocean.', 484, 17);
INSERT INTO public.moon VALUES (20, 'Titan', 4500, 0, true, true, 'Saturn largest moon with a thick atmosphere.', 1.2, 18);
INSERT INTO public.moon VALUES (21, 'Callisto', 4500, 0, true, false, 'Second largest moon of Jupiter.', 1.88, 17);
INSERT INTO public.moon VALUES (22, 'Ganymede', 4500, 0, true, false, 'Largest moon in the solar system.', 1.07, 17);
INSERT INTO public.moon VALUES (23, 'Enceladus', 4500, 0, true, true, 'Moon of Saturn known for its geysers.', 1.27, 18);
INSERT INTO public.moon VALUES (24, 'Io', 4500, 0, true, false, 'Volcanic moon of Jupiter.', 0.42, 17);
INSERT INTO public.moon VALUES (25, 'Rhea', 4500, 0, true, false, 'Moon of Saturn with a wispy ring.', 1.23, 18);
INSERT INTO public.moon VALUES (26, 'Triton', 4000, 0, true, true, 'Neptune largest moon with a retrograde orbit.', 4.36, 20);
INSERT INTO public.moon VALUES (27, 'Phobos', 4500, 0, true, false, 'Larger moon of Mars.', 0.0006, 16);
INSERT INTO public.moon VALUES (28, 'Deimos', 4500, 0, true, false, 'Smaller moon of Mars.', 0.0005, 16);
INSERT INTO public.moon VALUES (29, 'Oberon', 4500, 0, true, false, 'Moon of Uranus.', 3.1, 19);
INSERT INTO public.moon VALUES (30, 'Miranda', 4500, 0, true, false, 'Moon of Uranus with a varied surface.', 3.1, 19);
INSERT INTO public.moon VALUES (31, 'Mimas', 4500, 0, true, false, 'Small moon of Saturn known for its large crater.', 1.12, 18);
INSERT INTO public.moon VALUES (32, 'Ariel', 4500, 0, true, false, 'Moon of Uranus with a bright surface.', 3.1, 19);
INSERT INTO public.moon VALUES (33, 'Nereid', 4500, 0, true, false, 'Moon of Neptune.', 5.1, 20);
INSERT INTO public.moon VALUES (34, 'Triton II', 4500, 0, true, false, 'Second moon of Neptune, an irregular moon.', 4.0, 20);
INSERT INTO public.moon VALUES (35, 'Thalassa', 4500, 0, true, false, 'Small moon of Neptune.', 4.5, 20);
INSERT INTO public.moon VALUES (36, 'Hippocamp', 4500, 0, true, false, 'Small moon of Neptune.', 4.5, 20);
INSERT INTO public.moon VALUES (37, 'Leda', 4500, 0, true, false, 'Irregular moon of Jupiter.', 11.3, 17);
INSERT INTO public.moon VALUES (38, 'Triton III', 4500, 0, true, true, 'Another irregular moon of Neptune.', 4.0, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 4500, 1, false, false, 'The smallest planet in the solar system', 0, 10);
INSERT INTO public.planet VALUES (14, 'Venus', 4500, 1, true, false, 'The hottest planet in the solar system', 0, 10);
INSERT INTO public.planet VALUES (15, 'Earth', 4500, 1, true, true, 'The only planet known to support life', 0, 10);
INSERT INTO public.planet VALUES (16, 'Mars', 4500, 1, true, false, 'The red planet', 0, 10);
INSERT INTO public.planet VALUES (17, 'Jupiter', 4500, 11, true, false, 'The largest planet in the solar system', 0, 10);
INSERT INTO public.planet VALUES (18, 'Saturn', 4500, 9, true, false, 'The planet with the most prominent ring system', 0, 10);
INSERT INTO public.planet VALUES (19, 'Uranus', 4500, 4, true, false, 'An ice giant with a unique tilt', 0, 10);
INSERT INTO public.planet VALUES (20, 'Neptune', 4500, 3, true, false, 'An ice giant with strong winds', 0, 10);
INSERT INTO public.planet VALUES (21, 'Kepler-22b', 600, 2, false, true, 'An exoplanet in the habitable zone of Kepler-22', 620, 15);
INSERT INTO public.planet VALUES (22, 'Proxima b', 100, 1, false, true, 'Closest known exoplanet to Earth', 4.24, 14);
INSERT INTO public.planet VALUES (23, 'Gliese 581g', 7000, 1, false, true, 'An exoplanet potentially in the habitable zone of Gliese 581', 20.3, 16);
INSERT INTO public.planet VALUES (24, 'HD 209458 b', 10, 1, false, false, 'A hot Jupiter orbiting HD 209458', 150, 17);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (10, 'Sun', 4600, 1, true, false, 'The star at the center of our solar system', 0, 1);
INSERT INTO public.star VALUES (11, 'Alpha Centauri A', 5500, 1, true, false, 'A star in the closest star system to the Sun', 4.37, 1);
INSERT INTO public.star VALUES (12, 'Betelgeuse', 8000, 100, true, false, 'A red supergiant star nearing the end of its life', 642.5, 1);
INSERT INTO public.star VALUES (13, 'Sirius A', 250, 1, true, false, 'The brightest star in the night sky', 8.6, 1);
INSERT INTO public.star VALUES (14, 'Proxima Centauri', 4900, 0, true, false, 'The closest known star to the Sun', 4.24, 1);
INSERT INTO public.star VALUES (15, 'Kepler-22', 2000, 1, false, false, 'A star with an exoplanet in the habitable zone', 620, 2);
INSERT INTO public.star VALUES (16, 'Gliese 581', 7000, 0, true, false, 'A red dwarf star located in the Libra constellation, known for its exoplanets.', 20.3, 1);
INSERT INTO public.star VALUES (17, 'HD 209458', 3000, 1, true, false, 'A G-type star in the Pegasus constellation, known for having the first detected exoplanet transiting its star (HD 209458 b).', 159, 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 38, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 17, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: blackhole unique_black_hole; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_black_hole UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

