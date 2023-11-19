--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    name character varying(255),
    country character varying(255),
    address character varying(255)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_customer_id_seq OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;


--
-- Name: marketing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marketing (
    marketing_id integer NOT NULL,
    campaign character varying(255)
);


ALTER TABLE public.marketing OWNER TO postgres;

--
-- Name: marketing_marketing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marketing_marketing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.marketing_marketing_id_seq OWNER TO postgres;

--
-- Name: marketing_marketing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marketing_marketing_id_seq OWNED BY public.marketing.marketing_id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_product_id_seq OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;


--
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    sales_id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    date_hired date,
    department character varying(255)
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- Name: sales_sales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sales_sales_id_seq OWNER TO postgres;

--
-- Name: sales_sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_sales_id_seq OWNED BY public.sales.sales_id;


--
-- Name: transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction (
    transaction_id integer NOT NULL,
    customer_id integer,
    product_id integer,
    spend numeric(10,2),
    tax numeric(10,2),
    commission numeric(10,2),
    sales_id integer,
    marketing_id integer
);


ALTER TABLE public.transaction OWNER TO postgres;

--
-- Name: transaction_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaction_transaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transaction_transaction_id_seq OWNER TO postgres;

--
-- Name: transaction_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaction_transaction_id_seq OWNED BY public.transaction.transaction_id;


--
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- Name: marketing marketing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing ALTER COLUMN marketing_id SET DEFAULT nextval('public.marketing_marketing_id_seq'::regclass);


--
-- Name: product product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Name: sales sales_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales ALTER COLUMN sales_id SET DEFAULT nextval('public.sales_sales_id_seq'::regclass);


--
-- Name: transaction transaction_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction ALTER COLUMN transaction_id SET DEFAULT nextval('public.transaction_transaction_id_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, name, country, address) FROM stdin;
1	GreenTech Solutions	USA	1234 Windy Lane, New York
2	EcoEnergy Corp	Germany	5678 Renewable Road, Berlin
21	Renewable Dynamics	Canada	2345 Maple Drive, Toronto
22	EcoWind Systems	UK	6789 Windmill Road, London
23	Sustainable Energy Corp	Australia	1011 Kangaroo Court, Sydney
24	Green Revolution Ltd.	Netherlands	1213 Tulip Lane, Amsterdam
25	WindVestors Group	Ireland	1415 Emerald Street, Dublin
26	EcoTech Solutions	Japan	1617 Sakura Avenue, Tokyo
27	Global Wind Partners	Brazil	1819 Rainforest Road, Brasilia
28	Pure Energy Inc.	South Africa	2021 Sunshine Street, Cape Town
29	CleanWind Innovations	Norway	2223 Fjord Avenue, Oslo
30	Future Energy Enterprises	Sweden	2425 Viking Way, Stockholm
\.


--
-- Data for Name: marketing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marketing (marketing_id, campaign) FROM stdin;
1	Green Energy for a Sustainable Future
2	Harnessing the Power of Wind
5	Wind Energy for Remote Areas
6	Sustainable Cities with Wind Power
7	Next-Gen Turbines for a Greener Tomorrow
8	Empowering Communities with Wind Farms
9	Eco-Friendly Energy Revolution
10	Advancing Wind Technology for Future Generations
11	Harnessing Wind: Powering Progress
12	The Future of Energy: Wind Unleashed
13	Wind Power: Sustainable and Reliable
14	Revolutionizing Energy with Advanced Wind Turbines
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, name) FROM stdin;
1	Standard Wind Turbine Model A
2	Advanced Wind Turbine Model B
11	Compact Urban Wind Turbine Model E
12	High-Efficiency Turbine Model F
13	Low-Noise Wind Turbine Model G
14	Smart Wind Turbine Model H
15	Vertical Axis Turbine Model I
16	Residential Wind Turbine Kit
17	Wind Farm Optimization Service
18	Remote Monitoring and Control Service
19	Wind Turbine Retrofitting Service
20	Energy Storage Integration Service
\.


--
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales (sales_id, firstname, lastname, date_hired, department) FROM stdin;
1	John	Doe	2019-06-15	Domestic Sales
2	Jane	Smith	2018-04-22	International Sales
3	Alice	Martin	2020-08-15	Domestic Sales
4	Chris	Garcia	2021-01-22	International Sales
5	Eva	Lopez	2019-05-30	Corporate Sales
6	Liam	Clark	2018-11-14	Renewable Energy Sales
7	Zoe	Nguyen	2020-02-20	Domestic Sales
8	Omar	Robinson	2021-07-03	International Sales
9	Maya	Hernandez	2019-09-17	Corporate Sales
10	Noah	Patel	2018-12-28	Renewable Energy Sales
11	Sophia	Wright	2020-06-05	Domestic Sales
12	Ryan	Murphy	2021-03-12	International Sales
13	Alice	Martin	2020-08-15	Domestic Sales
14	Chris	Garcia	2021-01-22	International Sales
15	Eva	Lopez	2019-05-30	Corporate Sales
16	Liam	Clark	2018-11-14	Renewable Energy Sales
17	Zoe	Nguyen	2020-02-20	Domestic Sales
18	Omar	Robinson	2021-07-03	International Sales
19	Maya	Hernandez	2019-09-17	Corporate Sales
20	Noah	Patel	2018-12-28	Renewable Energy Sales
21	Sophia	Wright	2020-06-05	Domestic Sales
22	Ryan	Murphy	2021-03-12	International Sales
\.


--
-- Data for Name: transaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaction (transaction_id, customer_id, product_id, spend, tax, commission, sales_id, marketing_id) FROM stdin;
1	1	1	250000.00	5000.00	12500.00	1	\N
2	2	2	180000.00	3600.00	9000.00	2	1
9	1	2	220000.00	4400.00	11000.00	1	\N
10	2	1	195000.00	3900.00	9750.00	2	2
11	21	16	120000.00	2400.00	6000.00	1	\N
12	22	11	310000.00	6200.00	15500.00	2	1
13	23	12	50000.00	1000.00	2500.00	1	\N
14	24	13	75000.00	1500.00	3750.00	2	5
15	25	14	180000.00	3600.00	9000.00	1	\N
16	26	15	200000.00	4000.00	10000.00	2	6
\.


--
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, true);


--
-- Name: marketing_marketing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marketing_marketing_id_seq', 1, false);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);


--
-- Name: sales_sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_sales_id_seq', 22, true);


--
-- Name: transaction_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaction_transaction_id_seq', 1, false);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- Name: marketing marketing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_pkey PRIMARY KEY (marketing_id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sales_id);


--
-- Name: transaction transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (transaction_id);


--
-- Name: transaction transaction_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);


--
-- Name: transaction transaction_marketing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_marketing_id_fkey FOREIGN KEY (marketing_id) REFERENCES public.marketing(marketing_id);


--
-- Name: transaction transaction_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);


--
-- Name: transaction transaction_sales_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_sales_id_fkey FOREIGN KEY (sales_id) REFERENCES public.sales(sales_id);


--
-- PostgreSQL database dump complete
--

