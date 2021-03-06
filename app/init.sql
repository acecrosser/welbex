--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-05-18 13:45:50

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
-- TOC entry 200 (class 1259 OID 42588)
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 42595)
-- Name: single_page_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.single_page_table (
    id integer NOT NULL,
    title character varying(120),
    volume integer,
    distance double precision,
    date timestamp without time zone
);


ALTER TABLE public.single_page_table OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 42593)
-- Name: single_page_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.single_page_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.single_page_table_id_seq OWNER TO postgres;

--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 201
-- Name: single_page_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.single_page_table_id_seq OWNED BY public.single_page_table.id;


--
-- TOC entry 2854 (class 2604 OID 42601)
-- Name: single_page_table id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.single_page_table ALTER COLUMN id SET DEFAULT nextval('public.single_page_table_id_seq'::regclass);


--
-- TOC entry 2989 (class 0 OID 42588)
-- Dependencies: 200
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alembic_version (version_num) VALUES ('42c917a0b205');


--
-- TOC entry 2991 (class 0 OID 42595)
-- Dependencies: 202
-- Data for Name: single_page_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1, 'JI', 26, 1035, '2021-12-13 00:23:38');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (101, 'Leinster', 51, 1036, '2021-11-18 06:39:58');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (201, 'Namen', 58, 1044, '2020-06-06 04:29:35');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (301, 'Sokoto', 20, 1013, '2020-05-13 04:59:29');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (401, 'LAM', 38, 1031, '2021-01-11 21:53:17');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (501, 'Ayd??n', 46, 1010, '2021-01-07 08:54:08');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (601, 'Gye', 28, 1001, '2021-05-11 18:29:33');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (701, 'LA', 34, 1041, '2021-09-12 02:35:37');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (801, 'JB', 47, 1004, '2020-12-11 22:15:37');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (901, 'Huntingdonshire', 27, 1020, '2022-02-05 23:02:05');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1001, 'Gelderland', 19, 1043, '2020-08-18 00:07:17');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1101, 'AB', 13, 1036, '2020-11-08 22:17:12');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1201, 'ANT', 55, 1039, '2022-03-11 00:05:19');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1301, 'VA', 40, 1002, '2021-03-04 08:51:40');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1401, 'Metropolitana de Santiago', 11, 1008, '2022-02-03 02:56:31');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1501, 'Andaluc??a', 36, 1048, '2021-05-08 20:34:10');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1601, 'BR', 34, 1029, '2022-02-03 00:54:17');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1701, 'Mexico City', 36, 1033, '2021-03-18 08:00:45');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1801, 'Galicia', 40, 1037, '2020-05-26 08:32:05');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (1901, 'JT', 46, 1031, '2022-03-02 00:08:28');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2001, 'Friesland', 32, 1043, '2021-08-10 20:26:07');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2101, 'VIC', 52, 1015, '2020-11-05 19:51:07');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2201, 'Cajamarca', 32, 1030, '2021-12-25 03:38:26');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2301, 'Vermont', 22, 1004, '2020-07-09 07:39:20');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2401, 'Oax', 34, 1036, '2021-08-20 15:17:34');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2501, 'LIM', 19, 1026, '2021-11-13 18:55:29');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2601, 'Vienna', 38, 1048, '2020-12-09 12:31:14');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2701, 'Valpara??so', 23, 1047, '2020-12-30 06:34:35');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2801, 'Pomorskie', 55, 1007, '2021-07-08 22:21:35');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (2901, 'WV', 33, 1011, '2021-01-19 09:43:36');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3001, 'Azad Kashmir', 54, 1041, '2021-04-13 12:08:36');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3101, 'UP', 12, 1047, '2022-04-28 08:30:57');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3201, 'YT', 17, 1014, '2022-02-24 04:35:01');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3301, 'Koc', 11, 1003, '2022-04-20 02:27:56');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3401, 'J??nk??pings l??n', 19, 1010, '2020-07-02 03:16:47');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3501, 'ON', 42, 1038, '2021-12-27 04:42:57');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3601, 'Metropolitana de Santiago', 42, 1005, '2020-11-05 17:12:38');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3701, 'Bretagne', 33, 1002, '2020-11-11 04:31:31');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3801, 'Sonora', 37, 1009, '2021-09-26 05:24:42');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (3901, 'WI', 57, 1003, '2021-04-12 21:39:17');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4001, 'Saskatchewan', 21, 1047, '2020-06-09 01:05:41');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4101, 'A', 24, 1034, '2020-12-05 11:43:03');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4201, 'SP', 21, 1025, '2020-10-23 07:41:51');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4301, 'Kursk Oblast', 49, 1008, '2021-12-30 03:24:34');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4401, 'Kurgan Oblast', 57, 1003, '2021-03-11 18:41:35');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4501, 'Berlin', 42, 1022, '2021-04-11 06:54:37');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4601, 'Castilla - La Mancha', 37, 1021, '2020-08-28 10:57:25');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4701, 'Berlin', 14, 1000, '2021-05-06 08:21:48');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4801, 'Vienna', 43, 1046, '2021-10-28 23:51:42');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (4901, 'Ontario', 37, 1023, '2021-05-30 11:56:11');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5001, 'Kano', 15, 1002, '2021-05-24 22:43:04');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5101, 'Hamburg', 22, 1007, '2021-08-25 19:48:43');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5201, 'Minas Gerais', 27, 1037, '2022-04-21 14:19:23');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5301, 'Queensland', 24, 1021, '2021-08-08 05:32:03');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5401, 'WA', 30, 1020, '2020-12-27 11:08:21');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5501, 'Wie', 60, 1013, '2021-12-05 00:47:32');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5601, 'AZ', 33, 1011, '2021-11-07 09:09:42');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5701, 'Vienna', 60, 1009, '2021-08-18 18:09:22');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5801, 'VB', 16, 1032, '2022-02-10 05:29:43');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (5901, 'Saskatchewan', 30, 1007, '2022-03-03 10:57:46');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6001, 'Ontario', 56, 1050, '2020-09-10 06:34:42');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6101, 'Lima', 56, 1038, '2020-06-18 15:34:18');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6201, 'IN', 35, 1047, '2021-09-27 17:33:00');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6301, 'LU', 25, 1050, '2020-12-12 22:45:20');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6401, 'V??stra G??talands l??n', 55, 1018, '2020-09-28 12:09:04');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6501, 'PUN', 54, 1036, '2021-05-27 13:03:25');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6601, 'Nunavut', 31, 1009, '2021-05-05 10:26:28');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6701, 'N.', 25, 1045, '2020-10-11 21:59:59');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6801, 'South Chungcheong', 27, 1038, '2021-02-06 19:43:27');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (6901, 'Quebec', 21, 1026, '2021-05-13 22:29:16');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7001, 'Ma??opolskie', 35, 1041, '2020-12-14 17:13:09');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7101, 'MA', 56, 1049, '2021-12-05 11:01:04');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7201, 'GUA', 57, 1027, '2020-11-02 10:43:04');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7301, 'Jeo', 11, 1004, '2022-01-03 15:17:23');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7401, 'KN', 32, 1035, '2020-12-01 12:37:57');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7501, 'L', 32, 1046, '2021-01-15 07:53:17');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7601, 'Berlin', 23, 1031, '2022-03-07 15:55:27');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7701, 'Gye', 18, 1043, '2022-02-07 19:34:36');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7801, 'BE', 24, 1036, '2020-12-01 05:28:05');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (7901, 'S??o Paulo', 41, 1043, '2021-07-05 18:26:02');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8001, 'Pue', 30, 1028, '2021-11-08 02:42:51');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8101, 'Jeju', 18, 1005, '2021-11-10 21:59:20');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8201, 'OR', 54, 1044, '2021-12-18 06:16:45');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8301, 'New Brunswick', 56, 1027, '2020-09-27 14:56:06');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8401, 'UP', 60, 1020, '2020-06-24 05:05:20');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8501, 'Wie', 17, 1030, '2021-01-03 00:03:36');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8601, 'BO', 32, 1048, '2021-07-08 00:10:13');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8701, 'Zl', 56, 1002, '2020-07-18 12:41:15');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8801, 'GB', 29, 1016, '2021-12-13 02:30:43');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (8901, 'New South Wales', 44, 1027, '2021-11-12 08:40:12');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9001, 'Yucat??n', 48, 1032, '2020-05-25 23:54:27');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9101, 'Sindh', 32, 1037, '2020-11-15 00:39:39');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9201, 'Wielkopolskie', 24, 1040, '2020-09-18 23:44:51');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9301, 'J??nk??pings l??n', 17, 1048, '2021-04-23 17:26:23');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9401, 'Vienna', 11, 1046, '2021-10-30 02:17:23');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9501, 'FVG', 13, 1026, '2021-11-18 01:13:23');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9601, 'XII', 46, 1016, '2021-03-10 08:16:49');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9701, 'ANC', 13, 1048, '2020-07-17 21:43:14');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9801, 'Kujawsko-pomorskie', 18, 1041, '2021-01-24 05:42:11');
INSERT INTO public.single_page_table (id, title, volume, distance, date) VALUES (9901, 'RI', 17, 1005, '2021-11-03 11:29:31');


--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 201
-- Name: single_page_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.single_page_table_id_seq', 1, false);


--
-- TOC entry 2856 (class 2606 OID 42592)
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- TOC entry 2858 (class 2606 OID 42600)
-- Name: single_page_table single_page_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.single_page_table
    ADD CONSTRAINT single_page_table_pkey PRIMARY KEY (id);


-- Completed on 2021-05-18 13:45:50

--
-- PostgreSQL database dump complete
--

