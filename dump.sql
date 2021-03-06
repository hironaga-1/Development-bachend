--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 14.3

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

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.admin (id, username, roles, password) FROM stdin;
3	admin	["ROLE_ADMIN"]	\\$2y\\$13\\$qEdv6ua2fYjEsbp6uy3/YuUKbnGZhhJqnOyoepzpI7J7stpHSkEcO
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.conference (id, city, year, in_international) FROM stdin;
1	Amsterdam	2019	t
2	Paris	2020	f
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.comment (id, conference_id, author, text, email, create_at, photo_filename) FROM stdin;
1	1	Yuta	Hello, world!	yuta@gmail.com	2022-05-28 12:22:00	\N
2	1	Taka	This conference is important session for all of the scientist.	taka@gmail.com	2022-05-28 12:39:00	\N
3	2	Ema	OMG! This is the happiest conference!	ema@gmail.com	2022-05-28 12:41:00	\N
4	1	Chika	I like this poster session. Computer Science is a super hot field.	chika@gmail.com	2022-05-28 12:42:00	\N
5	1	Sakura	Good morning. I love Koron.	sakura@gmail.com	2022-05-28 09:12:03	\N
6	1	Sayaka	Hey! Hey! You! You! I don't want a girlfriend!	sayaka@gmail.com	2022-05-28 10:21:46	\N
7	1	Reiko	I love BTS.	reiko@gmail.com	2022-05-28 10:43:48	dc46078aabd7.png
8	2	Isamu	I want to run endlessly...!	isamu@gmail.com	2022-05-28 10:50:11	719ffd90cd51.jpg
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20220527132948	2022-05-27 15:31:44	351
DoctrineMigrations\\Version20220528023320	2022-05-28 04:34:09	283
DoctrineMigrations\\Version20220528030940	2022-05-28 05:10:52	728
DoctrineMigrations\\Version20220528060531	2022-05-28 08:08:24	92
DoctrineMigrations\\Version20220528062554	2022-05-28 08:28:33	86
DoctrineMigrations\\Version20220528063008	2022-05-28 08:30:18	65
DoctrineMigrations\\Version20220528090704	2022-05-28 11:08:19	88
DoctrineMigrations\\Version20220528092839	2022-05-28 11:28:51	60
DoctrineMigrations\\Version20220528140837	2022-05-28 16:09:00	322
\.


--
-- Data for Name: messenger_messages; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.admin_id_seq', 3, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.comment_id_seq', 8, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.conference_id_seq', 2, true);


--
-- Name: messenger_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

