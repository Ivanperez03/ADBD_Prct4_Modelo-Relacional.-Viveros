--
-- PostgreSQL database dump
--

\restrict x6KmymoomoxjT7W17ezNV5f74tgg3abidC0hBDviqC6SwGmyAhzXgTs40U6bd7s

-- Dumped from database version 16.10 (Ubuntu 16.10-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.10 (Ubuntu 16.10-0ubuntu0.24.04.1)

-- Started on 2025-10-14 20:15:33 UTC

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
-- TOC entry 225 (class 1259 OID 16521)
-- Name: clienteplus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clienteplus (
    id_plus integer NOT NULL,
    cantidadmensual numeric(10,2) DEFAULT 0,
    cantidadtotal numeric(10,2) DEFAULT 0,
    fechaalta date NOT NULL,
    id_cliente integer NOT NULL
);


ALTER TABLE public.clienteplus OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16520)
-- Name: clienteplus_id_plus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clienteplus_id_plus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clienteplus_id_plus_seq OWNER TO postgres;

--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 224
-- Name: clienteplus_id_plus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clienteplus_id_plus_seq OWNED BY public.clienteplus.id_plus;


--
-- TOC entry 220 (class 1259 OID 16486)
-- Name: clientevivero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientevivero (
    id_cliente integer NOT NULL
);


ALTER TABLE public.clientevivero OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16485)
-- Name: clientevivero_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientevivero_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientevivero_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 219
-- Name: clientevivero_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientevivero_id_cliente_seq OWNED BY public.clientevivero.id_cliente;


--
-- TOC entry 227 (class 1259 OID 16537)
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra (
    id_plus integer NOT NULL,
    id_prod integer NOT NULL,
    cantidad integer NOT NULL,
    fecha date NOT NULL,
    importetotal numeric(10,2),
    id_compra integer NOT NULL,
    CONSTRAINT compra_cantidad_check CHECK ((cantidad > 0))
);


ALTER TABLE public.compra OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16536)
-- Name: compra_id_compra_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compra_id_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.compra_id_compra_seq OWNER TO postgres;

--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 226
-- Name: compra_id_compra_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compra_id_compra_seq OWNED BY public.compra.id_compra;


--
-- TOC entry 233 (class 1259 OID 16598)
-- Name: controlpedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.controlpedido (
    id_emp integer NOT NULL,
    id_ped integer NOT NULL,
    puesto character varying(50),
    fecha date
);


ALTER TABLE public.controlpedido OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16555)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    id_emp integer NOT NULL,
    nombre character varying(100) NOT NULL,
    telefono character varying(20),
    direccion character varying(150),
    id_zona integer
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16554)
-- Name: empleado_id_emp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_id_emp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_id_emp_seq OWNER TO postgres;

--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 228
-- Name: empleado_id_emp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_id_emp_seq OWNED BY public.empleado.id_emp;


--
-- TOC entry 230 (class 1259 OID 16566)
-- Name: empleadodestino; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleadodestino (
    id_empleado integer NOT NULL,
    id_vivero integer NOT NULL
);


ALTER TABLE public.empleadodestino OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16614)
-- Name: historicodesempeno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historicodesempeno (
    id_historico integer NOT NULL,
    fecha date NOT NULL,
    valor numeric(10,2),
    id_zona integer NOT NULL,
    id_emp integer NOT NULL
);


ALTER TABLE public.historicodesempeno OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16613)
-- Name: historicodesempeno_id_historico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historicodesempeno_id_historico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.historicodesempeno_id_historico_seq OWNER TO postgres;

--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 234
-- Name: historicodesempeno_id_historico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historicodesempeno_id_historico_seq OWNED BY public.historicodesempeno.id_historico;


--
-- TOC entry 232 (class 1259 OID 16582)
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
    id_ped integer NOT NULL,
    importe numeric(10,2) NOT NULL,
    fecha date NOT NULL,
    id_plus integer NOT NULL,
    id_cliente integer NOT NULL
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16581)
-- Name: pedido_id_ped_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedido_id_ped_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedido_id_ped_seq OWNER TO postgres;

--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 231
-- Name: pedido_id_ped_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedido_id_ped_seq OWNED BY public.pedido.id_ped;


--
-- TOC entry 218 (class 1259 OID 16479)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id_prod integer NOT NULL,
    nombre character varying(100) NOT NULL,
    stock integer NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16478)
-- Name: producto_id_prod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_id_prod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_id_prod_seq OWNER TO postgres;

--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 217
-- Name: producto_id_prod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_id_prod_seq OWNED BY public.producto.id_prod;


--
-- TOC entry 223 (class 1259 OID 16504)
-- Name: productozona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productozona (
    id_zona integer NOT NULL,
    id_prod integer NOT NULL,
    cantidad integer,
    CONSTRAINT productozona_cantidad_check CHECK ((cantidad >= 0))
);


ALTER TABLE public.productozona OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16471)
-- Name: vivero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vivero (
    id_vivero integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.vivero OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16470)
-- Name: vivero_id_vivero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vivero_id_vivero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vivero_id_vivero_seq OWNER TO postgres;

--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 215
-- Name: vivero_id_vivero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vivero_id_vivero_seq OWNED BY public.vivero.id_vivero;


--
-- TOC entry 222 (class 1259 OID 16493)
-- Name: zona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zona (
    id_zona integer NOT NULL,
    latitud numeric(9,6),
    longitud numeric(9,6),
    geolocalizacion character varying(200),
    productividad numeric(10,2),
    id_vivero integer NOT NULL
);


ALTER TABLE public.zona OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16492)
-- Name: zona_id_zona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.zona_id_zona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zona_id_zona_seq OWNER TO postgres;

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 221
-- Name: zona_id_zona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.zona_id_zona_seq OWNED BY public.zona.id_zona;


--
-- TOC entry 3305 (class 2604 OID 16659)
-- Name: clienteplus id_plus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clienteplus ALTER COLUMN id_plus SET DEFAULT nextval('public.clienteplus_id_plus_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 16660)
-- Name: clientevivero id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientevivero ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientevivero_id_cliente_seq'::regclass);


--
-- TOC entry 3308 (class 2604 OID 16661)
-- Name: compra id_compra; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra ALTER COLUMN id_compra SET DEFAULT nextval('public.compra_id_compra_seq'::regclass);


--
-- TOC entry 3309 (class 2604 OID 16662)
-- Name: empleado id_emp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN id_emp SET DEFAULT nextval('public.empleado_id_emp_seq'::regclass);


--
-- TOC entry 3311 (class 2604 OID 16663)
-- Name: historicodesempeno id_historico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historicodesempeno ALTER COLUMN id_historico SET DEFAULT nextval('public.historicodesempeno_id_historico_seq'::regclass);


--
-- TOC entry 3310 (class 2604 OID 16664)
-- Name: pedido id_ped; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido ALTER COLUMN id_ped SET DEFAULT nextval('public.pedido_id_ped_seq'::regclass);


--
-- TOC entry 3302 (class 2604 OID 16665)
-- Name: producto id_prod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN id_prod SET DEFAULT nextval('public.producto_id_prod_seq'::regclass);


--
-- TOC entry 3301 (class 2604 OID 16666)
-- Name: vivero id_vivero; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vivero ALTER COLUMN id_vivero SET DEFAULT nextval('public.vivero_id_vivero_seq'::regclass);


--
-- TOC entry 3304 (class 2604 OID 16667)
-- Name: zona id_zona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zona ALTER COLUMN id_zona SET DEFAULT nextval('public.zona_id_zona_seq'::regclass);


--
-- TOC entry 3508 (class 0 OID 16521)
-- Dependencies: 225
-- Data for Name: clienteplus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clienteplus VALUES (1, 120.00, 1200.00, '2025-01-01', 1);
INSERT INTO public.clienteplus VALUES (2, 200.00, 1800.00, '2025-02-01', 2);
INSERT INTO public.clienteplus VALUES (3, 0.00, 500.00, '2025-03-01', 3);
INSERT INTO public.clienteplus VALUES (4, 150.00, 950.00, '2025-04-01', 4);
INSERT INTO public.clienteplus VALUES (5, 300.00, 2500.00, '2025-05-01', 5);


--
-- TOC entry 3503 (class 0 OID 16486)
-- Dependencies: 220
-- Data for Name: clientevivero; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clientevivero VALUES (1);
INSERT INTO public.clientevivero VALUES (2);
INSERT INTO public.clientevivero VALUES (3);
INSERT INTO public.clientevivero VALUES (4);
INSERT INTO public.clientevivero VALUES (5);


--
-- TOC entry 3510 (class 0 OID 16537)
-- Dependencies: 227
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.compra VALUES (1, 1, 5, '2025-09-01', 50.00, 1);
INSERT INTO public.compra VALUES (2, 2, 10, '2025-09-02', 200.00, 2);
INSERT INTO public.compra VALUES (3, 3, 2, '2025-09-03', 20.00, 3);
INSERT INTO public.compra VALUES (4, 4, 3, '2025-09-04', 75.00, 4);
INSERT INTO public.compra VALUES (5, 5, 1, '2025-09-05', 15.00, 5);


--
-- TOC entry 3516 (class 0 OID 16598)
-- Dependencies: 233
-- Data for Name: controlpedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.controlpedido VALUES (1, 1, 'Vendedor', '2025-09-01');
INSERT INTO public.controlpedido VALUES (2, 2, 'Vendedor', '2025-09-02');
INSERT INTO public.controlpedido VALUES (3, 3, 'Vendedor', '2025-09-03');
INSERT INTO public.controlpedido VALUES (4, 4, 'Vendedor', '2025-09-04');
INSERT INTO public.controlpedido VALUES (5, 5, 'Vendedor', '2025-09-05');


--
-- TOC entry 3512 (class 0 OID 16555)
-- Dependencies: 229
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empleado VALUES (1, 'Juan Pérez', '123456789', 'Calle A', 1);
INSERT INTO public.empleado VALUES (2, 'Ana Gómez', '987654321', 'Calle B', 2);
INSERT INTO public.empleado VALUES (3, 'Luis Torres', '555666777', 'Calle C', 3);
INSERT INTO public.empleado VALUES (4, 'Marta Díaz', '444555666', 'Calle D', 4);
INSERT INTO public.empleado VALUES (5, 'Carlos Ruiz', '333444555', 'Calle E', 5);
INSERT INTO public.empleado VALUES (13, 'Prueba Empleado 2', '444555666', 'Calle Prueba 2', NULL);
INSERT INTO public.empleado VALUES (12, 'Prueba Empleado 1', '111222333', 'Calle Prueba 1', NULL);
INSERT INTO public.empleado VALUES (15, 'Prueba Empleado 2', '444555666', 'Calle Prueba 2', 5);


--
-- TOC entry 3513 (class 0 OID 16566)
-- Dependencies: 230
-- Data for Name: empleadodestino; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empleadodestino VALUES (1, 1);
INSERT INTO public.empleadodestino VALUES (2, 1);
INSERT INTO public.empleadodestino VALUES (3, 2);
INSERT INTO public.empleadodestino VALUES (4, 3);
INSERT INTO public.empleadodestino VALUES (5, 4);


--
-- TOC entry 3518 (class 0 OID 16614)
-- Dependencies: 235
-- Data for Name: historicodesempeno; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.historicodesempeno VALUES (1, '2025-09-01', 90.00, 1, 1);
INSERT INTO public.historicodesempeno VALUES (2, '2025-09-02', 85.00, 2, 2);
INSERT INTO public.historicodesempeno VALUES (3, '2025-09-03', 88.00, 3, 3);
INSERT INTO public.historicodesempeno VALUES (4, '2025-09-04', 75.50, 4, 4);
INSERT INTO public.historicodesempeno VALUES (5, '2025-09-05', 92.00, 5, 5);
INSERT INTO public.historicodesempeno VALUES (9, '2025-10-01', 78.50, 5, 15);


--
-- TOC entry 3515 (class 0 OID 16582)
-- Dependencies: 232
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pedido VALUES (1, 50.00, '2025-09-01', 1, 1);
INSERT INTO public.pedido VALUES (2, 200.00, '2025-09-02', 2, 2);
INSERT INTO public.pedido VALUES (3, 20.00, '2025-09-03', 3, 3);
INSERT INTO public.pedido VALUES (4, 75.00, '2025-09-04', 4, 4);
INSERT INTO public.pedido VALUES (5, 15.00, '2025-09-05', 5, 5);


--
-- TOC entry 3501 (class 0 OID 16479)
-- Dependencies: 218
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.producto VALUES (1, 'Rosa Roja', 150);
INSERT INTO public.producto VALUES (2, 'Tulipán', 200);
INSERT INTO public.producto VALUES (3, 'Fertilizador A', 50);
INSERT INTO public.producto VALUES (4, 'Maceta Grande', 120);
INSERT INTO public.producto VALUES (5, 'Regadera', 80);
INSERT INTO public.producto VALUES (6, 'Abono Orgánico', 60);


--
-- TOC entry 3506 (class 0 OID 16504)
-- Dependencies: 223
-- Data for Name: productozona; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.productozona VALUES (1, 1, 50);
INSERT INTO public.productozona VALUES (1, 3, 10);
INSERT INTO public.productozona VALUES (2, 2, 100);
INSERT INTO public.productozona VALUES (3, 4, 30);
INSERT INTO public.productozona VALUES (5, 5, 20);


--
-- TOC entry 3499 (class 0 OID 16471)
-- Dependencies: 216
-- Data for Name: vivero; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.vivero VALUES (1, 'Vivero Central');
INSERT INTO public.vivero VALUES (2, 'Vivero Norte');
INSERT INTO public.vivero VALUES (3, 'Vivero Sur');
INSERT INTO public.vivero VALUES (4, 'Vivero Este');
INSERT INTO public.vivero VALUES (5, 'Vivero Oeste');


--
-- TOC entry 3505 (class 0 OID 16493)
-- Dependencies: 222
-- Data for Name: zona; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.zona VALUES (1, 28.123456, -16.123456, 'Zona Exterior', 95.50, 1);
INSERT INTO public.zona VALUES (2, 28.123500, -16.123500, 'Almacén', 80.00, 1);
INSERT INTO public.zona VALUES (3, 28.234567, -16.234567, 'Zona Exterior', 88.00, 2);
INSERT INTO public.zona VALUES (4, 28.345678, -16.345678, 'Almacén', 75.50, 3);
INSERT INTO public.zona VALUES (5, 28.456789, -16.456789, 'Zona de Decoración', 92.00, 4);


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 224
-- Name: clienteplus_id_plus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clienteplus_id_plus_seq', 5, true);


--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 219
-- Name: clientevivero_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientevivero_id_cliente_seq', 5, true);


--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 226
-- Name: compra_id_compra_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compra_id_compra_seq', 5, true);


--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 228
-- Name: empleado_id_emp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_id_emp_seq', 15, true);


--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 234
-- Name: historicodesempeno_id_historico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.historicodesempeno_id_historico_seq', 10, true);


--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 231
-- Name: pedido_id_ped_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedido_id_ped_seq', 5, true);


--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 217
-- Name: producto_id_prod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_id_prod_seq', 6, true);


--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 215
-- Name: vivero_id_vivero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vivero_id_vivero_seq', 7, true);


--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 221
-- Name: zona_id_zona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zona_id_zona_seq', 10, true);


--
-- TOC entry 3325 (class 2606 OID 16530)
-- Name: clienteplus clienteplus_id_cliente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clienteplus
    ADD CONSTRAINT clienteplus_id_cliente_key UNIQUE (id_cliente);


--
-- TOC entry 3327 (class 2606 OID 16528)
-- Name: clienteplus clienteplus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clienteplus
    ADD CONSTRAINT clienteplus_pkey PRIMARY KEY (id_plus);


--
-- TOC entry 3319 (class 2606 OID 16491)
-- Name: clientevivero clientevivero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientevivero
    ADD CONSTRAINT clientevivero_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 3329 (class 2606 OID 16543)
-- Name: compra compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id_plus, id_prod, id_compra);


--
-- TOC entry 3337 (class 2606 OID 16602)
-- Name: controlpedido controlpedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controlpedido
    ADD CONSTRAINT controlpedido_pkey PRIMARY KEY (id_emp, id_ped);


--
-- TOC entry 3331 (class 2606 OID 16560)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_emp);


--
-- TOC entry 3333 (class 2606 OID 16570)
-- Name: empleadodestino empleadodestino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleadodestino
    ADD CONSTRAINT empleadodestino_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 3339 (class 2606 OID 16619)
-- Name: historicodesempeno historicodesempeno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historicodesempeno
    ADD CONSTRAINT historicodesempeno_pkey PRIMARY KEY (id_historico);


--
-- TOC entry 3335 (class 2606 OID 16587)
-- Name: pedido pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_ped);


--
-- TOC entry 3317 (class 2606 OID 16484)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_prod);


--
-- TOC entry 3323 (class 2606 OID 16509)
-- Name: productozona productozona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productozona
    ADD CONSTRAINT productozona_pkey PRIMARY KEY (id_zona, id_prod);


--
-- TOC entry 3315 (class 2606 OID 16476)
-- Name: vivero vivero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vivero
    ADD CONSTRAINT vivero_pkey PRIMARY KEY (id_vivero);


--
-- TOC entry 3321 (class 2606 OID 16498)
-- Name: zona zona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zona
    ADD CONSTRAINT zona_pkey PRIMARY KEY (id_zona);


--
-- TOC entry 3343 (class 2606 OID 16531)
-- Name: clienteplus clienteplus_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clienteplus
    ADD CONSTRAINT clienteplus_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientevivero(id_cliente) ON DELETE CASCADE;


--
-- TOC entry 3344 (class 2606 OID 16544)
-- Name: compra compra_id_plus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_id_plus_fkey FOREIGN KEY (id_plus) REFERENCES public.clienteplus(id_plus) ON DELETE CASCADE;


--
-- TOC entry 3345 (class 2606 OID 16549)
-- Name: compra compra_id_prod_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_id_prod_fkey FOREIGN KEY (id_prod) REFERENCES public.producto(id_prod) ON DELETE CASCADE;


--
-- TOC entry 3351 (class 2606 OID 16603)
-- Name: controlpedido controlpedido_id_emp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controlpedido
    ADD CONSTRAINT controlpedido_id_emp_fkey FOREIGN KEY (id_emp) REFERENCES public.empleado(id_emp) ON DELETE CASCADE;


--
-- TOC entry 3352 (class 2606 OID 16608)
-- Name: controlpedido controlpedido_id_ped_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controlpedido
    ADD CONSTRAINT controlpedido_id_ped_fkey FOREIGN KEY (id_ped) REFERENCES public.pedido(id_ped) ON DELETE CASCADE;


--
-- TOC entry 3346 (class 2606 OID 16561)
-- Name: empleado empleado_id_zona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES public.zona(id_zona) ON DELETE SET NULL;


--
-- TOC entry 3347 (class 2606 OID 16571)
-- Name: empleadodestino empleadodestino_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleadodestino
    ADD CONSTRAINT empleadodestino_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_emp) ON DELETE CASCADE;


--
-- TOC entry 3348 (class 2606 OID 16576)
-- Name: empleadodestino empleadodestino_id_vivero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleadodestino
    ADD CONSTRAINT empleadodestino_id_vivero_fkey FOREIGN KEY (id_vivero) REFERENCES public.vivero(id_vivero) ON DELETE CASCADE;


--
-- TOC entry 3353 (class 2606 OID 16625)
-- Name: historicodesempeno historicodesempeno_id_emp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historicodesempeno
    ADD CONSTRAINT historicodesempeno_id_emp_fkey FOREIGN KEY (id_emp) REFERENCES public.empleado(id_emp) ON DELETE CASCADE;


--
-- TOC entry 3354 (class 2606 OID 16620)
-- Name: historicodesempeno historicodesempeno_id_zona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historicodesempeno
    ADD CONSTRAINT historicodesempeno_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES public.zona(id_zona) ON DELETE CASCADE;


--
-- TOC entry 3349 (class 2606 OID 16593)
-- Name: pedido pedido_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientevivero(id_cliente) ON DELETE CASCADE;


--
-- TOC entry 3350 (class 2606 OID 16588)
-- Name: pedido pedido_id_plus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_plus_fkey FOREIGN KEY (id_plus) REFERENCES public.clienteplus(id_plus) ON DELETE CASCADE;


--
-- TOC entry 3341 (class 2606 OID 16515)
-- Name: productozona productozona_id_prod_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productozona
    ADD CONSTRAINT productozona_id_prod_fkey FOREIGN KEY (id_prod) REFERENCES public.producto(id_prod) ON DELETE CASCADE;


--
-- TOC entry 3342 (class 2606 OID 16510)
-- Name: productozona productozona_id_zona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productozona
    ADD CONSTRAINT productozona_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES public.zona(id_zona) ON DELETE CASCADE;


--
-- TOC entry 3340 (class 2606 OID 16499)
-- Name: zona zona_id_vivero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zona
    ADD CONSTRAINT zona_id_vivero_fkey FOREIGN KEY (id_vivero) REFERENCES public.vivero(id_vivero) ON DELETE CASCADE;


-- Completed on 2025-10-14 20:15:42 UTC

--
-- PostgreSQL database dump complete
--

\unrestrict x6KmymoomoxjT7W17ezNV5f74tgg3abidC0hBDviqC6SwGmyAhzXgTs40U6bd7s

