--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.1

-- Started on 2022-07-18 16:27:31 CDT

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
-- TOC entry 3695 (class 0 OID 205547)
-- Dependencies: 211
-- Data for Name: account_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_user (id, first_name, last_name, email, password, phone, created, is_active) FROM stdin;
1	test	test	test@test.com	pbkdf2_sha256$320000$Te4hyVTHYomUSq5ITFzQQx$AwKlQA1onOm58q5Hk9RDkIm7zGozX/u7kjS1drXFevE=	123	2022-04-18	t
\.


--
-- TOC entry 3701 (class 0 OID 205569)
-- Dependencies: 217
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3703 (class 0 OID 205578)
-- Dependencies: 219
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3699 (class 0 OID 205562)
-- Dependencies: 215
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add geolocation	8	add_geolocation
30	Can change geolocation	8	change_geolocation
31	Can delete geolocation	8	delete_geolocation
32	Can view geolocation	8	view_geolocation
\.


--
-- TOC entry 3705 (class 0 OID 205585)
-- Dependencies: 221
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$fpMFq993JJ7Jd2Lqr1TLR9$kpSS8r5Sz58fTLWw1O41b0qfzJIoKzQmKYpI580ZFsA=	2022-07-16 09:14:44.497558-05	t	longniao			longniao@gmail.com	t	t	2022-07-16 09:12:30.480061-05
\.


--
-- TOC entry 3707 (class 0 OID 205594)
-- Dependencies: 223
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3709 (class 0 OID 205601)
-- Dependencies: 225
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3711 (class 0 OID 205660)
-- Dependencies: 227
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3697 (class 0 OID 205553)
-- Dependencies: 213
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	account	user
8	map	geolocation
\.


--
-- TOC entry 3694 (class 0 OID 205539)
-- Dependencies: 210
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	account	0001_initial	2022-07-15 22:23:44.30557-05
2	contenttypes	0001_initial	2022-07-15 22:23:44.336354-05
3	auth	0001_initial	2022-07-15 22:23:44.573613-05
4	admin	0001_initial	2022-07-15 22:23:44.625443-05
5	admin	0002_logentry_remove_auto_add	2022-07-15 22:23:44.662358-05
6	admin	0003_logentry_add_action_flag_choices	2022-07-15 22:23:44.699121-05
7	contenttypes	0002_remove_content_type_name	2022-07-15 22:23:44.777346-05
8	auth	0002_alter_permission_name_max_length	2022-07-15 22:23:44.824838-05
9	auth	0003_alter_user_email_max_length	2022-07-15 22:23:44.881531-05
10	auth	0004_alter_user_username_opts	2022-07-15 22:23:44.921633-05
11	auth	0005_alter_user_last_login_null	2022-07-15 22:23:44.961799-05
12	auth	0006_require_contenttypes_0002	2022-07-15 22:23:44.967644-05
13	auth	0007_alter_validators_add_error_messages	2022-07-15 22:23:45.005314-05
14	auth	0008_alter_user_username_max_length	2022-07-15 22:23:45.115845-05
15	auth	0009_alter_user_last_name_max_length	2022-07-15 22:23:45.156386-05
16	auth	0010_alter_group_name_max_length	2022-07-15 22:23:45.205422-05
17	auth	0011_update_proxy_permissions	2022-07-15 22:23:45.278373-05
18	auth	0012_alter_user_first_name_max_length	2022-07-15 22:23:45.322831-05
19	map	0001_initial	2022-07-15 22:23:45.364583-05
20	sessions	0001_initial	2022-07-15 22:23:45.399123-05
21	account	0002_user_is_active	2022-07-16 11:54:01.573265-05
22	account	0003_alter_user_password	2022-07-16 12:27:11.907982-05
\.


--
-- TOC entry 3713 (class 0 OID 205700)
-- Dependencies: 229
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ady0pey4i83xzwq9o3utiarrk8smmkvh	.eJxVjEEOwiAQRe_C2pDODITg0r1nIAMDUjUlKe2q8e62SRe6_e-9v6nA61LD2vMcRlFXBeryu0VOrzwdQJ48PZpObVrmMepD0Sft-t4kv2-n-3dQude9JhnYek6JBodISDYXYC8RS5RoM3gGxIJigKxg3KEDcGIskRFv1OcL56A3rA:1oCiZA:1_i-yGv1ZwfvIvu59srah76fNnO-UW_XIBcpl0VEmcI	2022-07-30 09:14:44.499725-05
\.


--
-- TOC entry 3712 (class 0 OID 205689)
-- Dependencies: 228
-- Data for Name: map_geolocation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.map_geolocation (id, name, longitude, latitude, created, user_id) FROM stdin;
1	MIRPUR	90.42770590528086	23.83164061208545	2022-07-18	1
2	KHILGAON	90.46478476270273	23.756875214682434	2022-07-18	1
3	Purbogram	90.5121633027418	23.746819445120746	2022-07-18	1
4	Howlipara	90.53070273145273	23.777612786003452	2022-07-18	1
5	DHANMONDI	90.37422180175781	23.746382895774083	2022-07-18	1
\.


--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3730 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- TOC entry 3731 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3732 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3733 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3734 (class 0 OID 0)
-- Dependencies: 226
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3735 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- TOC entry 3736 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


-- Completed on 2022-07-18 16:27:32 CDT

--
-- PostgreSQL database dump complete
--

