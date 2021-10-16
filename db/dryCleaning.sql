--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Ubuntu 13.3-1.pgdg18.04+1)
-- Dumped by pg_dump version 13.3 (Ubuntu 13.3-1.pgdg18.04+1)

-- Started on 2021-10-16 12:23:08 MSK

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
-- TOC entry 2997 (class 1262 OID 16386)
-- Name: dryCleaning; Type: DATABASE; Schema: -; Owner: postgres
--


ALTER DATABASE "dryCleaning" OWNER TO postgres;

\connect "dryCleaning"

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
-- TOC entry 643 (class 1247 OID 16442)
-- Name: Role; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."Role" AS ENUM (
    'ADMIN',
    'USER'
);


ALTER TYPE public."Role" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 204 (class 1259 OID 16431)
-- Name: feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback (
    id bigint NOT NULL,
    email text NOT NULL,
    text text NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.feedback OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16439)
-- Name: feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.feedback ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.feedback_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 200 (class 1259 OID 16387)
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    id bigint NOT NULL,
    author_id bigint,
    text text,
    title text,
    creation_date date
);


ALTER TABLE public.post OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16427)
-- Name: post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.post ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 201 (class 1259 OID 16403)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id bigint NOT NULL,
    email text,
    firstname text,
    lastname text,
    is_man boolean,
    password text,
    is_active boolean,
    role text
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16429)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."user" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2990 (class 0 OID 16431)
-- Dependencies: 204
-- Data for Name: feedback; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feedback (id, email, text, name) FROM stdin;
21	asd@mail.ru	Это лучший сайт, который я видел!	Максим
\.


--
-- TOC entry 2986 (class 0 OID 16387)
-- Dependencies: 200
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (id, author_id, text, title, creation_date) FROM stdin;
23	9	<p style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 20px 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 22px; font-family: &quot;Microsoft Sans Serif&quot;, sans-serif, Arial; vertical-align: baseline; color: rgb(51, 51, 51); letter-spacing: normal; outline: none !important;"><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;"><b>Для сохранения меховых изделий необходимы следующие правила:</b></span></p><ul style="margin-bottom: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: &quot;Microsoft Sans Serif&quot;, sans-serif, Arial; letter-spacing: normal; outline: none !important;"><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">Предохранять изделия от пыли и загрязнений, так как они чрезвычайно вредно действуют на волосяной покров меха. Пыль и грязь могут быть удалены с изделия чистой щеткой, частым встряхиванием или легким выколачиванием.</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">Рекомендуется периодически изделия проветривать на воздухе, используя для этого ясные морозные дни, или летом в тени оберегая, от палящего солнца.</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">При носке меховых изделий следует оберегать от увлажнения (дождя, снега и др.), а так же от продолжительного воздействия солнечного света.</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">Меховые изделия, намокшие от снега или дождя, необходимо встряхнуть и повесить на вешалке (плечико) для сушки при комнатной температуре.</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">Нельзя сушить меховые изделия около печки и других отопительных приборов. Просушенные изделия необходимо слегка выколотить. Волосяной покров расчесать металлической расческой против ворса (норка).</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">Хранить меховые изделия следует в шкафу, на вешалках с антимолью.</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">При длительном хранении в весенне-летние периоды, меховые изделия должны быть просушены, выколочены, вычищены от пыли и грязи, завернуты в бумагу, с антимолью или в тряпичный мешок,&nbsp;<strong style="font-weight: bold; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">в целлофане хранить нельзя</strong>. Упакованные таким образом изделия следует хранить в закрытых шкафах или специальных ящиках, очищенных от пыли и грязи.</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">Посыпать антимолью непосредственно меховые изделия, особенно со стороны мехового покрова&nbsp;<strong style="font-weight: bold; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">запрещено</strong>, так как могут быть повреждения волосяного покрова.</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;">При особо длительном хранение рекомендуется производить подсушку-проветривание и замену антимоли не реже 1 раза в 6 мес.</li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;"><strong style="font-weight: bold; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">Не носите тяжелых сумок на плече</strong><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">, так как трение ремешка&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">об мех приводит к выпадению волос и разрывом швов.</span></li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;"><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;"><strong style="font-weight: bold; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">Не используйте сильных духов и дезодорантов</strong>, так как они вредят<span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">&nbsp;меху и подкладке.</span></span></li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;"><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;"><strong style="font-weight: bold; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">Не рекомендуется сидеть в меховом изделии в автомобиле с подогревом сидений</strong>.</span></li><li style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 22px; margin-left: 30px; border: 0px; vertical-align: baseline; outline: none !important;"><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;"><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">Помните, что на каждом волоске меха осаждается грязь и жир.&nbsp;<strong style="font-weight: bold; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;"><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: none !important;">Если мех не чистить вовремя, мех быстро стариться!</span></strong></span></span></li></ul><ul><li> </li></ul>	Памятка по хранению и уходу за меховыми изделиями	2021-10-16
21	5	<ol><li style="margin-bottom: 1.875rem; line-height: 1.7; font-family: " open="" sans",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" letter-spacing:="" -0.144px;"="">Первую&nbsp;стирку&nbsp;следует&nbsp;производить&nbsp;не&nbsp;ранее&nbsp;чем&nbsp;через&nbsp;24&nbsp;часа&nbsp;после&nbsp;нанесения;</li><li>Рекомендуется&nbsp;исключительно&nbsp;ручная&nbsp;стирка&nbsp;в&nbsp;холодной&nbsp;воде при&nbsp;температуре&nbsp;не&nbsp;более&nbsp;30?С;</li><li>Всегда&nbsp;выворачивайте&nbsp;изделие&nbsp;наизнанку&nbsp;перед&nbsp;стиркой;</li><li>Не&nbsp;используйте&nbsp;отбеливающие&nbsp;и&nbsp;другие&nbsp;агрессивные&nbsp;моющие&nbsp;средства;</li><li>Не&nbsp;подвергайте&nbsp;химической&nbsp;чистке;</li><li>Не&nbsp;используйте&nbsp;ЗАМАЧИВАНИЕ!!!!</li><li>Выжимать&nbsp;изделие&nbsp;рекомендуется&nbsp;без&nbsp;усилий;</li><li>Утюжьте&nbsp;изделие&nbsp;только&nbsp;с&nbsp;обратной&nbsp;стороны&nbsp;или&nbsp;используйте&nbsp;лист&nbsp;белой&nbsp;бумаги&nbsp;при&nbsp;утюжении&nbsp;места&nbsp;с&nbsp;нанесенным&nbsp;изображением.</li></ol><h2 style="margin-top: 30px; margin-bottom: 25px; font-family: " open="" sans",="" helvetica,="" arial,="" sans-serif;="" font-weight:="" 400;="" line-height:="" 28px;="" color:="" rgb(34,="" 34,="" 34);="" font-size:="" 1.866em;="" letter-spacing:="" normal;="" outline:="" none="" !important;"=""></h2>	Правила ухода за футболками	2021-09-20
\.


--
-- TOC entry 2987 (class 0 OID 16403)
-- Dependencies: 201
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, email, firstname, lastname, is_man, password, is_active, role) FROM stdin;
5	admin@ru	max	maximov	\N	$2a$10$4I4pcChHqEpMCRimJR8vve2.XC1qAXYV0WP6SHpOx5BRbDYvuPc82	t	ADMIN
9	admin@mail.ru	ivan	ivanov	t	$2a$10$d2mYD1TjysfJ9y/f9yn.1umWXZpvHSfqP6o8t0ugvuDcAMvp9HY5K	t	ADMIN
\.


--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 205
-- Name: feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feedback_id_seq', 21, true);


--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 202
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_id_seq', 23, true);


--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 203
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 9, true);


--
-- TOC entry 2854 (class 2606 OID 16438)
-- Name: feedback feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id);


--
-- TOC entry 2850 (class 2606 OID 16394)
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- TOC entry 2852 (class 2606 OID 16410)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 2855 (class 2606 OID 16452)
-- Name: post fk12njtf8e0jmyb45lqfpt6ad89; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT fk12njtf8e0jmyb45lqfpt6ad89 FOREIGN KEY (author_id) REFERENCES public."user"(id);


-- Completed on 2021-10-16 12:23:08 MSK

--
-- PostgreSQL database dump complete
--

