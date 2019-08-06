--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: answers; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.answers (
    id bigint NOT NULL,
    answer character varying,
    question_id integer,
    score integer
);


ALTER TABLE public.answers OWNER TO "Guest";

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO "Guest";

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: chosen_answers; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.chosen_answers (
    id bigint NOT NULL,
    score integer
);


ALTER TABLE public.chosen_answers OWNER TO "Guest";

--
-- Name: chosen_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.chosen_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chosen_answers_id_seq OWNER TO "Guest";

--
-- Name: chosen_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.chosen_answers_id_seq OWNED BY public.chosen_answers.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.questions (
    id bigint NOT NULL,
    question character varying,
    survey_id integer
);


ALTER TABLE public.questions OWNER TO "Guest";

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO "Guest";

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: surveys; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.surveys (
    id bigint NOT NULL,
    name character varying
);


ALTER TABLE public.surveys OWNER TO "Guest";

--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.surveys_id_seq OWNER TO "Guest";

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.surveys_id_seq OWNED BY public.surveys.id;


--
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- Name: chosen_answers id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.chosen_answers ALTER COLUMN id SET DEFAULT nextval('public.chosen_answers_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.surveys ALTER COLUMN id SET DEFAULT nextval('public.surveys_id_seq'::regclass);


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.answers (id, answer, question_id, score) FROM stdin;
1	It's round.	1	1
2	Pretty flat, but not totally. It has mountains and stuff.	1	2
3	Flat.	1	3
4	What is Earth?	1	4
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-06 16:33:26.826221	2019-08-06 16:33:26.826221
\.


--
-- Data for Name: chosen_answers; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.chosen_answers (id, score) FROM stdin;
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.questions (id, question, survey_id) FROM stdin;
1	How flat is the Earth?	2
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20190806155127
20190806155339
20190806155551
20190806160325
20190806160857
20190806160917
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.surveys (id, name) FROM stdin;
2	How Stupid are You?
\.


--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.answers_id_seq', 4, true);


--
-- Name: chosen_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.chosen_answers_id_seq', 1, false);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.questions_id_seq', 1, true);


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.surveys_id_seq', 2, true);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: chosen_answers chosen_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.chosen_answers
    ADD CONSTRAINT chosen_answers_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: questions fk_rails_15f8f0ec98; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fk_rails_15f8f0ec98 FOREIGN KEY (survey_id) REFERENCES public.surveys(id);


--
-- Name: answers fk_rails_3d5ed4418f; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fk_rails_3d5ed4418f FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- PostgreSQL database dump complete
--

