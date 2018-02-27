--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.11
-- Dumped by pg_dump version 9.5.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: empresa; Type: TABLE; Schema: public; Owner: miguel
--

CREATE TABLE empresa (
    id_empresa integer NOT NULL,
    nombre_empresa character varying(90),
    oficinas character varying(90),
    fundacion character varying(90),
    numeroempleados integer,
    presidente character varying(90),
    contacto character varying(90)
);


ALTER TABLE empresa OWNER TO miguel;

--
-- Name: empresa_id_empresa_seq; Type: SEQUENCE; Schema: public; Owner: miguel
--

CREATE SEQUENCE empresa_id_empresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE empresa_id_empresa_seq OWNER TO miguel;

--
-- Name: empresa_id_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: miguel
--

ALTER SEQUENCE empresa_id_empresa_seq OWNED BY empresa.id_empresa;


--
-- Name: postular; Type: TABLE; Schema: public; Owner: miguel
--

CREATE TABLE postular (
    id_postular integer NOT NULL,
    fk_profesionista integer,
    fk_vacante integer
);


ALTER TABLE postular OWNER TO miguel;

--
-- Name: postular_id_postular_seq; Type: SEQUENCE; Schema: public; Owner: miguel
--

CREATE SEQUENCE postular_id_postular_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postular_id_postular_seq OWNER TO miguel;

--
-- Name: postular_id_postular_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: miguel
--

ALTER SEQUENCE postular_id_postular_seq OWNED BY postular.id_postular;


--
-- Name: profesionista; Type: TABLE; Schema: public; Owner: miguel
--

CREATE TABLE profesionista (
    id_profesionista integer NOT NULL,
    carrera character varying(90),
    nacionalidad character varying(90),
    contrasena character varying(90),
    telefono_profesionista character varying(13),
    nombre_profesionista character varying(90),
    empresa_laboral character varying(90),
    correo_profesionista character varying(90),
    cargo_laboral character varying(90),
    periodo_laboral character varying(90),
    colegio_formacion character varying(90),
    grado_formacion character varying(90),
    periodo_formacion character varying(90),
    nombre_skils character varying(90),
    grado_skils character varying(90)
);


ALTER TABLE profesionista OWNER TO miguel;

--
-- Name: profesionista_id_profesionista_seq; Type: SEQUENCE; Schema: public; Owner: miguel
--

CREATE SEQUENCE profesionista_id_profesionista_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profesionista_id_profesionista_seq OWNER TO miguel;

--
-- Name: profesionista_id_profesionista_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: miguel
--

ALTER SEQUENCE profesionista_id_profesionista_seq OWNED BY profesionista.id_profesionista;


--
-- Name: tener; Type: TABLE; Schema: public; Owner: miguel
--

CREATE TABLE tener (
    id_tener integer NOT NULL,
    fk_vacante integer,
    fk_empresa integer
);


ALTER TABLE tener OWNER TO miguel;

--
-- Name: tener_id_tener_seq; Type: SEQUENCE; Schema: public; Owner: miguel
--

CREATE SEQUENCE tener_id_tener_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tener_id_tener_seq OWNER TO miguel;

--
-- Name: tener_id_tener_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: miguel
--

ALTER SEQUENCE tener_id_tener_seq OWNED BY tener.id_tener;


--
-- Name: vacante; Type: TABLE; Schema: public; Owner: miguel
--

CREATE TABLE vacante (
    id_vacante integer NOT NULL,
    descripcion character varying(90),
    puesto character varying(90),
    horario character varying(90),
    lugar character varying(90),
    salario character varying(90),
    actividades character varying(90)
);


ALTER TABLE vacante OWNER TO miguel;

--
-- Name: vacante_id_vacante_seq; Type: SEQUENCE; Schema: public; Owner: miguel
--

CREATE SEQUENCE vacante_id_vacante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vacante_id_vacante_seq OWNER TO miguel;

--
-- Name: vacante_id_vacante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: miguel
--

ALTER SEQUENCE vacante_id_vacante_seq OWNED BY vacante.id_vacante;


--
-- Name: id_empresa; Type: DEFAULT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY empresa ALTER COLUMN id_empresa SET DEFAULT nextval('empresa_id_empresa_seq'::regclass);


--
-- Name: id_postular; Type: DEFAULT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY postular ALTER COLUMN id_postular SET DEFAULT nextval('postular_id_postular_seq'::regclass);


--
-- Name: id_profesionista; Type: DEFAULT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY profesionista ALTER COLUMN id_profesionista SET DEFAULT nextval('profesionista_id_profesionista_seq'::regclass);


--
-- Name: id_tener; Type: DEFAULT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY tener ALTER COLUMN id_tener SET DEFAULT nextval('tener_id_tener_seq'::regclass);


--
-- Name: id_vacante; Type: DEFAULT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY vacante ALTER COLUMN id_vacante SET DEFAULT nextval('vacante_id_vacante_seq'::regclass);


--
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: miguel
--

COPY empresa (id_empresa, nombre_empresa, oficinas, fundacion, numeroempleados, presidente, contacto) FROM stdin;
\.


--
-- Name: empresa_id_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: miguel
--

SELECT pg_catalog.setval('empresa_id_empresa_seq', 1, false);


--
-- Data for Name: postular; Type: TABLE DATA; Schema: public; Owner: miguel
--

COPY postular (id_postular, fk_profesionista, fk_vacante) FROM stdin;
\.


--
-- Name: postular_id_postular_seq; Type: SEQUENCE SET; Schema: public; Owner: miguel
--

SELECT pg_catalog.setval('postular_id_postular_seq', 1, false);


--
-- Data for Name: profesionista; Type: TABLE DATA; Schema: public; Owner: miguel
--

COPY profesionista (id_profesionista, carrera, nacionalidad, contrasena, telefono_profesionista, nombre_profesionista, empresa_laboral, correo_profesionista, cargo_laboral, periodo_laboral, colegio_formacion, grado_formacion, periodo_formacion, nombre_skils, grado_skils) FROM stdin;
\.


--
-- Name: profesionista_id_profesionista_seq; Type: SEQUENCE SET; Schema: public; Owner: miguel
--

SELECT pg_catalog.setval('profesionista_id_profesionista_seq', 1, false);


--
-- Data for Name: tener; Type: TABLE DATA; Schema: public; Owner: miguel
--

COPY tener (id_tener, fk_vacante, fk_empresa) FROM stdin;
\.


--
-- Name: tener_id_tener_seq; Type: SEQUENCE SET; Schema: public; Owner: miguel
--

SELECT pg_catalog.setval('tener_id_tener_seq', 1, false);


--
-- Data for Name: vacante; Type: TABLE DATA; Schema: public; Owner: miguel
--

COPY vacante (id_vacante, descripcion, puesto, horario, lugar, salario, actividades) FROM stdin;
\.


--
-- Name: vacante_id_vacante_seq; Type: SEQUENCE SET; Schema: public; Owner: miguel
--

SELECT pg_catalog.setval('vacante_id_vacante_seq', 1, false);


--
-- Name: empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id_empresa);


--
-- Name: postular_pkey; Type: CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY postular
    ADD CONSTRAINT postular_pkey PRIMARY KEY (id_postular);


--
-- Name: profesionista_pkey; Type: CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY profesionista
    ADD CONSTRAINT profesionista_pkey PRIMARY KEY (id_profesionista);


--
-- Name: tener_pkey; Type: CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY tener
    ADD CONSTRAINT tener_pkey PRIMARY KEY (id_tener);


--
-- Name: vacante_pkey; Type: CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY vacante
    ADD CONSTRAINT vacante_pkey PRIMARY KEY (id_vacante);


--
-- Name: postular_fk_profesionista_fkey; Type: FK CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY postular
    ADD CONSTRAINT postular_fk_profesionista_fkey FOREIGN KEY (fk_profesionista) REFERENCES profesionista(id_profesionista);


--
-- Name: postular_fk_vacante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY postular
    ADD CONSTRAINT postular_fk_vacante_fkey FOREIGN KEY (fk_vacante) REFERENCES vacante(id_vacante);


--
-- Name: tener_fk_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY tener
    ADD CONSTRAINT tener_fk_empresa_fkey FOREIGN KEY (fk_empresa) REFERENCES empresa(id_empresa);


--
-- Name: tener_fk_vacante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: miguel
--

ALTER TABLE ONLY tener
    ADD CONSTRAINT tener_fk_vacante_fkey FOREIGN KEY (fk_vacante) REFERENCES vacante(id_vacante);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

