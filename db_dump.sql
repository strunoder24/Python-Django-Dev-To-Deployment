--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: contacts_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts_contact (
    id integer NOT NULL,
    listing character varying(200) NOT NULL,
    listing_id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL,
    contact_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    realtor_email character varying(100) NOT NULL
);


ALTER TABLE public.contacts_contact OWNER TO postgres;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_contact_id_seq OWNER TO postgres;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: listings_listing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listings_listing (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    zip_code character varying(20) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    square_feet integer NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    is_published boolean NOT NULL,
    garage integer NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    realtor_id integer NOT NULL,
    list_date timestamp with time zone NOT NULL,
    CONSTRAINT listings_listing_bedrooms_check CHECK ((bedrooms >= 0)),
    CONSTRAINT listings_listing_garage_check CHECK ((garage >= 0)),
    CONSTRAINT listings_listing_price_check CHECK ((price >= 0)),
    CONSTRAINT listings_listing_square_feet_check CHECK ((square_feet >= 0))
);


ALTER TABLE public.listings_listing OWNER TO postgres;

--
-- Name: listings_listing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listings_listing_id_seq OWNER TO postgres;

--
-- Name: listings_listing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;


--
-- Name: realtors_realtor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.realtors_realtor (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.realtors_realtor OWNER TO postgres;

--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.realtors_realtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.realtors_realtor_id_seq OWNER TO postgres;

--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: contacts_contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: listings_listing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);


--
-- Name: realtors_realtor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission VALUES (25, 'Can add listing', 7, 'add_listing');
INSERT INTO public.auth_permission VALUES (26, 'Can change listing', 7, 'change_listing');
INSERT INTO public.auth_permission VALUES (27, 'Can delete listing', 7, 'delete_listing');
INSERT INTO public.auth_permission VALUES (28, 'Can view listing', 7, 'view_listing');
INSERT INTO public.auth_permission VALUES (29, 'Can add realtor', 8, 'add_realtor');
INSERT INTO public.auth_permission VALUES (30, 'Can change realtor', 8, 'change_realtor');
INSERT INTO public.auth_permission VALUES (31, 'Can delete realtor', 8, 'delete_realtor');
INSERT INTO public.auth_permission VALUES (32, 'Can view realtor', 8, 'view_realtor');
INSERT INTO public.auth_permission VALUES (33, 'Can add contact', 9, 'add_contact');
INSERT INTO public.auth_permission VALUES (34, 'Can change contact', 9, 'change_contact');
INSERT INTO public.auth_permission VALUES (35, 'Can delete contact', 9, 'delete_contact');
INSERT INTO public.auth_permission VALUES (36, 'Can view contact', 9, 'view_contact');


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user VALUES (1, 'pbkdf2_sha256$120000$n6prFiaTCs61$T5C4+JNUwUvphx/ufh3/uOQDNiSwRwfhpz8GtDOW62o=', '2019-04-27 18:30:26.208923+10', true, 'superadmin', '', '', 'strunoder24@yandex.ru', true, true, '2019-04-02 18:12:46.208035+10');
INSERT INTO public.auth_user VALUES (2, 'pbkdf2_sha256$120000$t8ZEQhAlq8jH$ipLlj5IulFnTD6z7YgeIz5FZRr8+TmHYahdU4XADuL8=', '2019-04-27 18:30:56.994753+10', false, 'strunoder24', 'Viktor', 'Kondik', 'strunoder24@mail.ru', false, true, '2019-04-23 20:31:22.921458+10');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: contacts_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contacts_contact VALUES (1, '187 Woodrow Street', 3, 'asdasd', 'asdasd@sdlasd.ru', '123123123123', '', '2019-04-27 18:16:43.211127+10', 0, 'jenny@btrealestate.co');
INSERT INTO public.contacts_contact VALUES (2, '18 Jefferson Lane', 2, 'Viktor', 'strunoder24@mail.ru', '', '', '2019-04-27 18:16:43.211127+10', 2, 'mark@berealestate.co');
INSERT INTO public.contacts_contact VALUES (3, '18 Jefferson Lane', 2, 'Viktor', 'strunoder24@mail.ru', '89242222406', 'mynamesjaff', '2019-04-27 18:16:43.211127+10', 2, 'mark@berealestate.co');
INSERT INTO public.contacts_contact VALUES (4, 'testcase', 7, 'Viktor', 'strunoder24@mail.ru', '2312312312', 'asasd', '2019-04-27 18:29:33.60924+10', 2, 'mark@berealestate.co');
INSERT INTO public.contacts_contact VALUES (5, 'Jenny Puss', 5, 'Viktor', 'strunoder24@mail.ru', '', '', '2019-04-27 18:42:03.128758+10', 2, 'jenny@btrealestate.co');
INSERT INTO public.contacts_contact VALUES (6, 'Fast Boi Shelter', 6, 'Viktor', 'strunoder24@mail.ru', '', '', '2019-04-27 18:43:06.556808+10', 2, 'kyle@btrealestate.co');


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log VALUES (1, '2019-04-02 18:43:24.996381+10', '1', 'Kyle Brown', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (2, '2019-04-02 18:45:28.733088+10', '2', 'Mark Hudson', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (3, '2019-04-02 18:46:12.857707+10', '3', 'Jenny Jonson', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (4, '2019-04-02 18:50:16.041872+10', '1', '45 Drivewood Circle', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (5, '2019-04-02 18:53:01.429469+10', '2', '18 Jefferson Lane', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (6, '2019-04-02 18:55:07.893745+10', '3', '187 Woodrow Street', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (7, '2019-04-02 18:57:16.580885+10', '4', 'Halupa Wood 9', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (8, '2019-04-02 18:58:43.557497+10', '5', 'Jenny Puss', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (9, '2019-04-02 19:00:07.009868+10', '6', 'Fast Boi Shelter', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (10, '2019-04-05 14:36:40.0834+10', '5', 'Jenny Puss', 2, '[{"changed": {"fields": ["is_published"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (11, '2019-04-17 22:51:26.032303+10', '5', 'Jenny Puss', 2, '[{"changed": {"fields": ["is_published"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (12, '2019-04-18 11:56:28.709211+10', '7', 'testcase', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (13, '2019-04-18 12:32:16.148491+10', '3', 'Jenny Jonson', 2, '[{"changed": {"fields": ["is_mvp"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (14, '2019-04-18 12:32:24.390037+10', '2', 'Mark Hudson', 2, '[{"changed": {"fields": ["is_mvp"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (15, '2019-04-18 12:32:33.891759+10', '2', 'Mark Hudson', 2, '[{"changed": {"fields": ["is_mvp"]}}]', 8, 1);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (7, 'listings', 'listing');
INSERT INTO public.django_content_type VALUES (8, 'realtors', 'realtor');
INSERT INTO public.django_content_type VALUES (9, 'contacts', 'contact');


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2019-04-01 20:01:54.798645+10');
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2019-04-01 20:01:54.910181+10');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2019-04-01 20:01:54.954906+10');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-04-01 20:01:54.968343+10');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-01 20:01:54.980782+10');
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-04-01 20:01:55.011437+10');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-04-01 20:01:55.034086+10');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-04-01 20:01:55.046794+10');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-04-01 20:01:55.058915+10');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-04-01 20:01:55.073505+10');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-04-01 20:01:55.075956+10');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-01 20:01:55.087679+10');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-04-01 20:01:55.108986+10');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-01 20:01:55.122907+10');
INSERT INTO public.django_migrations VALUES (15, 'sessions', '0001_initial', '2019-04-01 20:01:55.135656+10');
INSERT INTO public.django_migrations VALUES (16, 'realtors', '0001_initial', '2019-04-02 12:51:15.476871+10');
INSERT INTO public.django_migrations VALUES (17, 'listings', '0001_initial', '2019-04-02 12:51:15.50501+10');
INSERT INTO public.django_migrations VALUES (18, 'listings', '0002_remove_listing_list_date', '2019-04-02 18:26:46.926743+10');
INSERT INTO public.django_migrations VALUES (19, 'listings', '0003_listing_list_date', '2019-04-02 18:26:46.95765+10');
INSERT INTO public.django_migrations VALUES (20, 'listings', '0004_auto_20190402_0826', '2019-04-02 18:26:46.966876+10');
INSERT INTO public.django_migrations VALUES (21, 'realtors', '0002_auto_20190402_0826', '2019-04-02 18:26:46.979794+10');
INSERT INTO public.django_migrations VALUES (22, 'listings', '0005_auto_20190418_0152', '2019-04-18 11:53:10.887384+10');
INSERT INTO public.django_migrations VALUES (23, 'realtors', '0003_auto_20190418_0152', '2019-04-18 11:53:10.89892+10');
INSERT INTO public.django_migrations VALUES (24, 'contacts', '0001_initial', '2019-04-27 17:17:41.24764+10');
INSERT INTO public.django_migrations VALUES (25, 'contacts', '0002_auto_20190427_0816', '2019-04-27 18:17:03.480249+10');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session VALUES ('7d4aopmtc177c4eafmedxjnf0z9rq6yf', 'NWY0YTZmMDEyYTE1MTEzMjE0MzI3MDMwOWJiYTUyNmFkZWRiODg1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNzE2ZGJkNmVlZTQyMmU0Y2JlODY1NDYwOTc1M2ViMTEwODMzNTRhIn0=', '2019-04-16 18:17:13.646617+10');
INSERT INTO public.django_session VALUES ('ar77alxk88e506qtigswh4njrcbtbl5j', 'YjA1YWYxM2UxYzc1ZTIyMTAxYTJkNTMyNTczODRiYWRiOGI2ZGViZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NTI0OGJlZmI1OGM1ZTZiZjA4ZWM2M2I5MTMzMGMyOGQ4N2Q1NWNjIn0=', '2019-05-11 18:30:56.997556+10');


--
-- Data for Name: listings_listing; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.listings_listing VALUES (1, '45 Drivewood Circle', '45 Drivewood Circle', 'Norwood', 'MA', '02062', 'Suspendisse potenti. Aliquam pellentesque justo orci, quis placerat lectus tempus sed. Morbi a ipsum augue. Etiam sed ligula sed odio porttitor fringilla mollis et massa. Donec vitae tincidunt mauris, et convallis lectus. Etiam eget laoreet arcu. Curabitur sapien ante, sollicitudin eget consequat sit amet, tempus at felis. Nunc consequat dignissim felis, et commodo orci euismod aliquam. Curabitur imperdiet ex et lacus tincidunt ultrices.', 490000, 3, 2.0, 3298, 2.3, true, 2, 'photos/2019/04/02/home-1.jpg', 'photos/2019/04/02/home-inside-1.jpg', 'photos/2019/04/02/home-inside-2.jpg', 'photos/2019/04/02/home-inside-3.jpg', 'photos/2019/04/02/home-inside-4.jpg', 'photos/2019/04/02/home-inside-5.jpg', 'photos/2019/04/02/home-inside-6.jpg', 1, '2019-04-02 10:00:00+10');
INSERT INTO public.listings_listing VALUES (2, '18 Jefferson Lane', '18 Jefferson Lane', 'Wouborn', 'LA', '01801', 'Suspendisse potenti. Aliquam pellentesque justo orci, quis placerat lectus tempus sed. Morbi a ipsum augue. Etiam sed ligula sed odio porttitor fringilla mollis et massa. Donec vitae tincidunt mauris, et convallis lectus. Etiam eget laoreet arcu. Curabitur sapien ante, sollicitudin eget consequat sit amet, tempus at felis. Nunc consequat dignissim felis, et commodo orci euismod aliquam. Curabitur imperdiet ex et lacus tincidunt ultrices.', 560000, 4, 2.5, 3100, 1.5, true, 1, 'photos/2019/04/02/home-2.jpg', 'photos/2019/04/02/home-inside-2_mIFNoRa.jpg', 'photos/2019/04/02/home-inside-1_oAy5x6y.jpg', 'photos/2019/04/02/home-inside-5_7QVrzBh.jpg', 'photos/2019/04/02/home-inside-3_TSEZjvq.jpg', 'photos/2019/04/02/home-inside-6_NvueJqb.jpg', 'photos/2019/04/02/home-inside-4_1EXevzv.jpg', 2, '2019-04-02 10:00:00+10');
INSERT INTO public.listings_listing VALUES (3, '187 Woodrow Street', '187 Woodrow Street', 'Salem', 'MAN', '692001', 'Suspendisse potenti. Aliquam pellentesque justo orci, quis placerat lectus tempus sed. Morbi a ipsum augue. Etiam sed ligula sed odio porttitor fringilla mollis et massa. Donec vitae tincidunt mauris, et convallis lectus. Etiam eget laoreet arcu. Curabitur sapien ante, sollicitudin eget consequat sit amet, tempus at felis. Nunc consequat dignissim felis, et commodo orci euismod aliquam. Curabitur imperdiet ex et lacus tincidunt ultrices.', 666000, 2, 2.0, 2000, 2.1, true, 0, 'photos/2019/04/02/home-3.jpg', 'photos/2019/04/02/home-inside-2_uTwmeS1.jpg', 'photos/2019/04/02/home-inside-5_Gx56dzD.jpg', 'photos/2019/04/02/home-1_UxolqDz.jpg', '', '', '', 3, '2019-04-02 10:00:00+10');
INSERT INTO public.listings_listing VALUES (4, 'Halupa Wood 9', 'Halupa Wood 9', 'New Tokio', 'TK', '889012', 'Suspendisse potenti. Aliquam pellentesque justo orci, quis placerat lectus tempus sed. Morbi a ipsum augue. Etiam sed ligula sed odio porttitor fringilla mollis et massa. Donec vitae tincidunt mauris, et convallis lectus. Etiam eget laoreet arcu. Curabitur sapien ante, sollicitudin eget consequat sit amet, tempus at felis. Nunc consequat dignissim felis, et commodo orci euismod aliquam. Curabitur imperdiet ex et lacus tincidunt ultrices.', 465000, 2, 9.0, 1029, 2.2, true, 2, 'photos/2019/04/02/home-4.jpg', 'photos/2019/04/02/home-inside-3_Oz2veYK.jpg', 'photos/2019/04/02/home-inside-5_o3B7a4H.jpg', '', '', '', '', 1, '2019-04-02 10:00:00+10');
INSERT INTO public.listings_listing VALUES (6, 'Fast Boi Shelter', 'Fast Boi Shelter', 'Park', 'PH', '666777', 'Suspendisse potenti. Aliquam pellentesque justo orci, quis placerat lectus tempus sed. Morbi a ipsum augue. Etiam sed ligula sed odio porttitor fringilla mollis et massa. Donec vitae tincidunt mauris, et convallis lectus. Etiam eget laoreet arcu. Curabitur sapien ante, sollicitudin eget consequat sit amet, tempus at felis. Nunc consequat dignissim felis, et commodo orci euismod aliquam. Curabitur imperdiet ex et lacus tincidunt ultrices.', 900000, 5, 6.0, 5000, 3.5, true, 4, 'photos/2019/04/02/home-6.jpg', 'photos/2019/04/02/home-3_S4hiulD.jpg', '', '', '', '', '', 1, '2019-04-02 10:00:00+10');
INSERT INTO public.listings_listing VALUES (5, 'Jenny Puss', 'Right there m8', 'YR MOM', 'FAT', '94948', 'Suspendisse potenti. Aliquam pellentesque justo orci, quis placerat lectus tempus sed. Morbi a ipsum augue. Etiam sed ligula sed odio porttitor fringilla mollis et massa. Donec vitae tincidunt mauris, et convallis lectus. Etiam eget laoreet arcu. Curabitur sapien ante, sollicitudin eget consequat sit amet, tempus at felis. Nunc consequat dignissim felis, et commodo orci euismod aliquam. Curabitur imperdiet ex et lacus tincidunt ultrices.', 1000, 1, 1.0, 500, 1.2, true, 3, 'photos/2019/04/02/home-5.jpg', 'photos/2019/04/02/home-inside-6_Ny4JcLM.jpg', '', '', '', '', '', 3, '2019-04-02 10:00:00+10');
INSERT INTO public.listings_listing VALUES (7, 'testcase', 'blalbl', 'Moscow', 'RU', '879223', 'Right in the kenny puss', 349000, 2, 2.0, 1231, 0.7, true, 1, 'photos/2019/04/18/home-5.jpg', '', '', '', '', '', '', 2, '2019-04-18 11:54:55+10');


--
-- Data for Name: realtors_realtor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.realtors_realtor VALUES (1, 'Kyle Brown', 'photos/2019/04/02/kyle.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id sem tortor. Pellentesque nec dignissim arcu. Ut dictum, neque sed malesuada venenatis, felis orci vulputate nisl, vel imperdiet dui velit vitae neque. Quisque sed ultricies urna, eget varius lectus. Maecenas id malesuada dolor, ac congue tellus. Donec vulputate bibendum ex non tincidunt. Vivamus eleifend quam non nisi volutpat semper. Morbi accumsan enim ut neque facilisis elementum. Etiam pretium euismod molestie. Maecenas eu tempus sapien. Nulla lacinia nisi at odio imperdiet venenatis. Nam tempor in odio et ultrices. Pellentesque tempor pulvinar orci pellentesque aliquam. Nunc tincidunt lorem id nibh blandit vulputate.', '555-555-5555', 'kyle@btrealestate.co', false, '2018-04-02 18:40:11+10');
INSERT INTO public.realtors_realtor VALUES (3, 'Jenny Jonson', 'photos/2019/04/02/jenny.jpg', 'Vestibulum convallis mi metus. Nulla dictum, neque quis lobortis venenatis, tellus enim molestie diam, et faucibus ante nisi nec velit. In mollis tincidunt commodo. Sed a ex turpis. Curabitur maximus turpis risus, tempus hendrerit felis tincidunt ac. Aliquam pellentesque condimentum eros, nec feugiat velit lobortis nec. Nullam lacinia volutpat erat id ullamcorper. Nullam sed erat nec lorem viverra hendrerit. Morbi blandit aliquam nunc in imperdiet. Nunc id molestie lorem. Duis aliquam sagittis ex vitae aliquet.', '333-333-3333', 'jenny@btrealestate.co', true, '2017-04-02 18:40:11+10');
INSERT INTO public.realtors_realtor VALUES (2, 'Mark Hudson', 'photos/2019/04/02/mark.jpg', 'Vestibulum convallis mi metus. Nulla dictum, neque quis lobortis venenatis, tellus enim molestie diam, et faucibus ante nisi nec velit. In mollis tincidunt commodo. Sed a ex turpis. Curabitur maximus turpis risus, tempus hendrerit felis tincidunt ac. Aliquam pellentesque condimentum eros, nec feugiat velit lobortis nec. Nullam lacinia volutpat erat id ullamcorper. Nullam sed erat nec lorem viverra hendrerit. Morbi blandit aliquam nunc in imperdiet. Nunc id molestie lorem. Duis aliquam sagittis ex vitae aliquet.', '444-444-4444', 'mark@berealestate.co', false, '2019-02-02 18:40:11+10');


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: contacts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_contact_id_seq', 6, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: listings_listing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.listings_listing_id_seq', 7, true);


--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: contacts_contact contacts_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: listings_listing listings_listing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);


--
-- Name: realtors_realtor realtors_realtor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: listings_listing_realtor_id_90583529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

