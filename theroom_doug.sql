--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: meeting; Type: TABLE; Schema: public; Owner: doug
--

CREATE TABLE meeting (
    id integer NOT NULL,
    name character varying(1000) NOT NULL,
    notes character varying(2000),
    updated timestamp without time zone NOT NULL,
    url character varying(2000),
    meetingtime character varying(20) NOT NULL,
    day character varying(15) NOT NULL,
    address character varying(500) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(2),
    postal_code character varying(15),
    country character varying(10),
    latitude double precision,
    longitude double precision,
    region character varying(100),
    timezone character varying(100),
    location character varying(2000),
    location_notes character varying(2000)
);


ALTER TABLE meeting OWNER TO doug;

--
-- Name: meeting_id_seq; Type: SEQUENCE; Schema: public; Owner: doug
--

CREATE SEQUENCE meeting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meeting_id_seq OWNER TO doug;

--
-- Name: meeting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doug
--

ALTER SEQUENCE meeting_id_seq OWNED BY meeting.id;


--
-- Name: meeting_old; Type: TABLE; Schema: public; Owner: doug
--

CREATE TABLE meeting_old (
    list_name character varying(41),
    list_slug integer,
    list_notes character varying(877),
    list_updated date,
    list_url character varying(44),
    list_time character varying(8),
    list_day character varying(9),
    list_types character varying(5),
    list_address character varying(30),
    list_city character varying(13),
    list_state character varying(2),
    list_postal_code integer,
    list_country character varying(2),
    list_latitude numeric(15,13),
    list_longitude numeric(12,10),
    list_region character varying(13),
    list_timezone character varying(16),
    list_location character varying(49),
    list_location_notes character varying(168)
);


ALTER TABLE meeting_old OWNER TO doug;

--
-- Name: meeting_type; Type: TABLE; Schema: public; Owner: doug
--

CREATE TABLE meeting_type (
    meetingid integer NOT NULL,
    typeid integer NOT NULL
);


ALTER TABLE meeting_type OWNER TO doug;

--
-- Name: type; Type: TABLE; Schema: public; Owner: doug
--

CREATE TABLE type (
    id integer NOT NULL,
    abbreviation character varying(5),
    name character varying(100)
);


ALTER TABLE type OWNER TO doug;

--
-- Name: type_id_seq; Type: SEQUENCE; Schema: public; Owner: doug
--

CREATE SEQUENCE type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE type_id_seq OWNER TO doug;

--
-- Name: type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doug
--

ALTER SEQUENCE type_id_seq OWNED BY type.id;


--
-- Name: meeting id; Type: DEFAULT; Schema: public; Owner: doug
--

ALTER TABLE ONLY meeting ALTER COLUMN id SET DEFAULT nextval('meeting_id_seq'::regclass);


--
-- Name: type id; Type: DEFAULT; Schema: public; Owner: doug
--

ALTER TABLE ONLY type ALTER COLUMN id SET DEFAULT nextval('type_id_seq'::regclass);


--
-- Data for Name: meeting; Type: TABLE DATA; Schema: public; Owner: doug
--

COPY meeting (id, name, notes, updated, url, meetingtime, meetingday, address, city, state, postal_code, country, latitude, longitude, region, timezone, location, location_notes) FROM stdin;
2755	Sobriety First	4th Sunday each Month is Open Speaker Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=1	18:00:00	Sunday	725 N Boylan Ave	Raleigh	NC	27605	US	35.7897425818507031	-78.6488592624999967	Raleigh	America/New_York	Jenkins Memorial Methodist Church	between Peace &amp; Wills Forest
2756	Morning Meditation Group	Open 11th Step Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=2	06:30:00	Sunday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2757	Morning Meditation Group	Open 11th Step Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=3	06:30:00	Monday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2758	Non Smoking Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=4	20:00:00	Wednesday	1520 Canterbury Rd	Raleigh	NC	27608	US	35.8092520000000007	-78.6673640000000063	Raleigh	America/New_York	St Michael`s Episcopal Church	Off Wade avenue between Oberlin and the Beltline 
2759	Morning Meditation Group	Open 11th Step Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=6	06:30:00	Thursday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2760	Morning Meditation Group	Open 11th Step Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=7	06:30:00	Tuesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2761	Morning Meditation Group	Open 11th Step Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=8	06:30:00	Wednesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2762	Morning Meditation Group	Open 11th Step Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=9	06:30:00	Friday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2763	Greenwood Forest Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=10	08:30:00	Sunday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2764	Greenwood Forest Group	Women`s Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=13	18:30:00	Sunday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2765	Greenwood Forest Group	Men`s Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=12	10:00:00	Sunday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2766	Apex Group	1st and 3rd Sundays of the Month - Open discussion meeting <br><br />2nd and last Sundays - Open Speaker meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=15	20:00:00	Sunday	408 E Williams St	Apex	NC	27539	US	35.7251290000000026	-78.8491250000000008	Apex	America/New_York	Apex Masonic Lodge	
2767	Henderson Central Group	Open Speaker 2nd and Last Sundays	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=18	20:00:00	Sunday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2768	Louisburg 12 Step Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=19	20:00:00	Sunday	302 North Main St	Louisburg	NC	27549	US	36.1013870000000026	-78.2991499999999974	Louisburg	America/New_York	Louisburg Baptist Church	
2769	Came to Believe Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=20	09:00:00	Sunday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2770	Spiritual Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=21	11:00:00	Sunday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2771	Place of Miracles Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=22	12:30:00	Sunday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2772	Hills Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=23	14:00:00	Sunday	4523 Six Forks Rd	Raleigh	NC	27609	US	35.8418040000000033	-78.6440000000000055	Raleigh	America/New_York	St Timothy`s Episcopal Church	
2773	Weekender`s Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=24	17:00:00	Sunday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2774	Longview Group	1st Sunday Open Discussion<br />2nd Sunday Open Speaker	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=25	20:00:00	Sunday	1950 New Bern Ave	Raleigh	NC	27610	US	35.7786779999999993	-78.6086959999999948	Raleigh	America/New_York	Milner Memorial Presbyterian Church	
2775	Valley Group	Beginners Meeting Same Time<BR><br />Last Sunday Open Speaker Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=26	20:00:00	Sunday	5101 Oak Park Rd	Raleigh	NC	27612	US	35.8542135521102026	-78.7038767338000014	Raleigh	America/New_York	St Giles Presbyterian Church	
2776	Westminster Group	TWO MEETINGS AT 8 PM:<BR><BR><br />Open Discussion<br><br />Beginners Group meets at the same time in a different room<br><br>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=27	20:00:00	Sunday	301 East Whitaker Mill Rd	Raleigh	NC	27608	US	35.8078773435825966	-78.6376905440999963	Raleigh	America/New_York	Westminister Presbyterian Church	
2777	Willow Springs Group	Beginners Meeting<br /> - first three steps and sponsorship<br /><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=28	19:00:00	Sunday	402 N Main St	Fuquay-Varina	NC		US	35.5890800000000027	-78.7986240000000038	Fuquay-Varina	America/New_York	First United Methodist Church	
2778	Willow Springs Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=29	19:01:00	Sunday	402 N Main St	Fuquay-Varina	NC		US	35.5890800000000027	-78.7986240000000038	Fuquay-Varina	America/New_York	First United Methodist Church	
2779	Zebulon Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=30	20:00:00	Sunday	118 W Sycamore St	Zebulon	NC	27597	US	35.8233829999999998	-78.3159950000000009	Zebulon	America/New_York	Zebulon Methodist Church	Corner of Gannon Ave. & Church St.
2780	Living Now	As Bill Sees It<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=32	12:00:00	Monday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2781	Living Now	As Bill Sees It	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=34	18:00:00	Monday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2782	Reaching Out Group	1st-12 & 12<br>2nd-Discussion<br>3rd-Traditions<br>4th-Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=38	19:00:00	Monday	111 Lee Court	Clayton	NC	27520	US	35.6585970000000003	-78.4636330000000015	Clayton	America/New_York	Grace Episcopal Church	
2783	Franklinton Evergreen Group	1st and 3rd Monday-Closed Discussion<br />2nd and 4th Monday-Big Book Study<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=39	18:30:00	Monday	102 West Mason St	Franklinton	NC	27525	US	36.1043809999999965	-78.4586589999999973	Franklinton	America/New_York	Franklinton Baptist Church	
2784	Lakeside Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=40	20:00:00	Monday	503 Lakeside Dr	Garner	NC	27529	US	35.6978730000000013	-78.6113189999999946	Garner	America/New_York	First Presbyterian Church-Garner	Corner of Lakeside Dr. & Hwy. 50<br>Meets Upstairs
2785	Maynard Road Group	Beginners Discussion - Steps 1,2,3 / <br />4th Monday - Open Speaker Meeting (with Book Raffle)	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=37	20:00:00	Monday	110 SE Maynard Rd	Cary	NC	27511	US	35.7704370000000011	-78.7807829999999996	Cary	America/New_York	Greenwood Forest Baptist Church	
2786	Henderson Central Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=41	12:00:00	Monday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2787	New Start Group	This location is NOT handicapped accessible.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=42	17:30:00	Monday	210 S Chestnut St	Henderson	NC	27536	US	36.3282639999999972	-78.4057899999999961	Henderson	America/New_York	Church of the Holy Innocents	
2788	Knightdale Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=43	20:00:00	Monday	7071 Forestville Rd	Knightdale	NC	27545	US	35.8101830000000021	-78.4868220000000036	Knightdale	America/New_York	Knightdale United Methodist Church	Church Annex
2789	Early Risers Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=45	10:30:00	Monday	2312 Milburnie Rd	Raleigh	NC	27610	US	35.789082999999998	-78.6050570000000022	Raleigh	America/New_York	Longview Methodist Church	
2790	First Things First Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=46	12:00:00	Monday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2791	Gateway Group	Open Discussion/Beginners Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=47	12:00:00	Monday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2792	Oasis Group	Monday is step/Tradition (closed) with Tradition Meetings on the first Monday of each month	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=48	12:30:00	Monday	7506 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8865920000000003	-78.6266300000000058	Raleigh	America/New_York	St Andrews Presbyterian Church	
2793	Place of Miracles Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=49	12:30:00	Monday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2794	Happy Hour Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=50	17:30:00	Monday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2795	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=51	17:45:00	Monday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2796	Jenkins Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=52	18:00:00	Monday	725 N Boylan Ave	Raleigh	NC	27605	US	35.7897425818507031	-78.6488592624999967	Raleigh	America/New_York	Jenkins Memorial Methodist Church	between Peace &amp; Wills Forest
2797	Women`s Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=54	18:30:00	Monday	7509 Leadmine Rd	Raleigh	NC	27615	US	35.8843214868599034	-78.6607146263000061	Raleigh	America/New_York	Greystone Baptist Church	Corner of Leadmine and Sawmill Rd
2798	2001 Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=55	18:30:00	Monday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2799	Hayes Barton Group	Beginners Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=56	19:00:00	Monday	1704 Oberlin Rd	Raleigh	NC	27608	US	35.806635	-78.655508999999995	Raleigh	America/New_York	White Memorial Presbyterian Church	
2800	Brickhouse Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=58	20:00:00	Monday	7509 Leadmine Rd	Raleigh	NC	27615	US	35.8843214868599034	-78.6607146263000061	Raleigh	America/New_York	Greystone Baptist Church	Corner of Leadmine and Sawmill Rd
2801	Fairview Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=59	20:00:00	Monday	2011 Ridge Rd	Raleigh	NC	27607	US	35.8180150000000026	-78.6807699999999954	Raleigh	America/New_York	Ridge Road Baptist Church	
2802	Gratitude Study Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=60	19:00:00	Monday	99 N Salisbury St	Raleigh	NC	27603	US	35.7810589999999991	-78.6408490000000029	Raleigh	America/New_York	First Baptist Church	Enter the building from the covered walkway in the parking lot that borders McDowell Street. This parking lot can only be accessed from Hillsborough or Edenton Streets.
2803	Sunlight of the Spirit		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=517	09:00:00	Saturday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
2804	Oak City Speakers Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=518	20:00:00	Saturday	3313 Wade Ave	Raleigh	NC	27607	US	35.8005380000000031	-78.6797799999999938	Raleigh	America/New_York	Unitarian Universalist Fellowship of Raleigh	
2805	Ladies Into Action 		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=519	18:30:00	Tuesday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
2806	Hayes Barton Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=62	20:00:00	Monday	1704 Oberlin Rd	Raleigh	NC	27608	US	35.806635	-78.655508999999995	Raleigh	America/New_York	White Memorial Presbyterian Church	
2807	Millbrook Step Study Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=63	20:00:00	Monday	1712 E Millbrook Rd	Raleigh	NC	27609	US	35.8495890000000017	-78.6068559999999934	Raleigh	America/New_York	Millbrook United Methodist Church	
2808	RTP Lunch Bunch		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=64	12:00:00	Monday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
2809	Ladies Into Action	<BR> CANDLELIGHT MEETING<br><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=510	18:30:00	Saturday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
2810	Mitchell Mill Group	Last Monday Traditions	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=66	20:00:00	Monday	2405 Wait Ave	Wake Forest	NC	27587	US	35.9620859999999993	-78.4491270000000043	Wake Forest	America/New_York	Grace Assembly	Handicap Accessible
2811	Green Level Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=68	20:00:00	Tuesday	8509 Green Level Church Rd	Cary	NC	27519	US	35.7823950000000011	-78.9042309999999958	Cary	America/New_York	Green Level Baptist Church	
2843	Big Book Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=109	20:00:00	Thursday	2723 Clark Ave	Raleigh	NC	27607	US	35.7908970000000011	-78.672735000000003	Raleigh	America/New_York	Holy Trinity Lutheran Church	
2812	Living Now	Grapevine<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=70	12:00:00	Tuesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2813	Clayton Big Book	As Bill Sees It, Beginners meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=73	19:00:00	Tuesday	121 E Second St	Clayton	NC	27520	US	35.7802140000000009	-78.368700000000004	Clayton	America/New_York	Horne Memorial United Methodist Church	
2814	Garner Big Book Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=74	20:00:00	Tuesday	4926 Fayetteville Rd	Garner	NC	27529	US	35.7132059999999996	-78.6579930000000047	Garner	America/New_York	Ernest Myatt Presbyterian Church	Meeting in Fellowship hall
2815	Henderson Central Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=75	12:00:00	Tuesday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2816	New Start Group	This location is NOT handicapped accessible.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=76	17:30:00	Tuesday	210 S Chestnut St	Henderson	NC	27536	US	36.3282639999999972	-78.4057899999999961	Henderson	America/New_York	Church of the Holy Innocents	
2817	Henderson Central Group	Step/Traditions	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=77	20:00:00	Tuesday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2818	Louisburg Spanish AA Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=78	20:00:00	Tuesday	937 N Main St	Louisburg	NC	27549	US	36.1143280000000004	-78.2956760000000003	Louisburg	America/New_York	Our Lady of the Rosary Roman Catholic Church	
2819	First Things First Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=79	12:00:00	Tuesday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2820	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=80	12:00:00	Tuesday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2821	Tuesday - Thursday-Nooners		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=81	12:00:00	Tuesday	718 Hillsborough St	Raleigh	NC	27603	US	35.7811560000000028	-78.6499869999999959	Raleigh	America/New_York	Hillyer Memorial	
2822	Place of Miracles Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=82	12:30:00	Tuesday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2823	Happy Hour Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=83	17:30:00	Tuesday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2824	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=84	17:45:00	Tuesday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2825	Big Book Group	Beginners Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=85	19:00:00	Tuesday	2723 Clark Ave	Raleigh	NC	27607	US	35.7908970000000011	-78.672735000000003	Raleigh	America/New_York	Holy Trinity Lutheran Church	
2826	Big Book Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=86	20:00:00	Tuesday	2723 Clark Ave	Raleigh	NC	27607	US	35.7908970000000011	-78.672735000000003	Raleigh	America/New_York	Holy Trinity Lutheran Church	
2827	Crabtree Discussion Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=87	20:00:00	Tuesday	1901 Ridge Rd	Raleigh	NC	27607	US	35.8154409999999999	-78.6823610000000002	Raleigh	America/New_York	Highland United Methodist Church	
2828	Downtown Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=88	20:00:00	Tuesday	124 S Salisbury St	Raleigh	NC	27601	US	35.7787099999999967	-78.6404119999999978	Raleigh	America/New_York	124 S Salisbury St	Meeting Downstairs
2829	Light Group	Closed Step/Closed Big Book Study	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=90	20:00:00	Tuesday	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851209999999966	-78.6609260000000035	Raleigh	America/New_York	Pullen Memorial Baptist Church	
2830	Green Level Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=92	20:00:00	Thursday	8509 Green Level Church Rd	Cary	NC	27519	US	35.7823950000000011	-78.9042309999999958	Cary	America/New_York	Green Level Baptist Church	
2831	Living Now		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=95	18:00:00	Thursday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2832	Cary 12 Step Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=153	20:00:00	Monday	221 Union St	Cary	NC	27511	US	35.7799947426701976	-78.7915205956000051	Cary	America/New_York	St Pauls Episcopal Church	
2833	Clayton Big Book	LAST THURSDAY OF THE MONTH IS OPEN SPEAKER   	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=98	19:00:00	Thursday	121 E Second St	Clayton	NC	27520	US	35.7802140000000009	-78.368700000000004	Clayton	America/New_York	Horne Memorial United Methodist Church	
2834	Henderson Central Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=100	12:00:00	Thursday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2835	Henderson Central Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=101	20:00:00	Thursday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2836	Early Risers Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=102	10:30:00	Thursday	2312 Milburnie Rd	Raleigh	NC	27610	US	35.789082999999998	-78.6050570000000022	Raleigh	America/New_York	Longview Methodist Church	
2837	First Things First Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=103	12:00:00	Thursday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2838	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=104	12:00:00	Thursday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2839	Tuesday - Thursday-Nooners	Last Thursday - Traditions	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=105	12:00:00	Thursday	718 Hillsborough St	Raleigh	NC	27603	US	35.7811560000000028	-78.6499869999999959	Raleigh	America/New_York	Hillyer Memorial	
2840	Place of Miracles Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=106	12:30:00	Thursday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2841	Happy Hour Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=107	17:30:00	Thursday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2842	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=108	17:45:00	Thursday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2844	Fairview Group	Every 4th Thursday of the month is an Open Speaker meeting.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=110	20:00:00	Thursday	2011 Ridge Rd	Raleigh	NC	27607	US	35.8180150000000026	-78.6807699999999954	Raleigh	America/New_York	Ridge Road Baptist Church	
2845	Gratitude Study Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=111	19:00:00	Thursday	99 N Salisbury St	Raleigh	NC	27603	US	35.7810589999999991	-78.6408490000000029	Raleigh	America/New_York	First Baptist Church	Enter the building from the covered walkway in the parking lot that borders McDowell Street. This parking lot can only be accessed from Hillsborough or Edenton Streets.
2846	Principles Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=112	20:00:00	Thursday	1725 North New Hope Rd	Raleigh	NC	27604	US	35.8041490000000024	-78.5652199999999965	Raleigh	America/New_York	St Mark`s Episcopal Church	
2847	Twelve & Twelve Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=113	20:00:00	Thursday	4921 Six Forks Rd	Raleigh	NC	27609	US	35.8488680000000031	-78.6450030000000027	Raleigh	America/New_York	Hudson Memorial Presbyterian Church	
2848	Wake Forest Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=114	20:00:00	Thursday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
2849	Willow Springs Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=115	20:00:00	Thursday	402 N Main St	Fuquay-Varina	NC		US	35.5890800000000027	-78.7986240000000038	Fuquay-Varina	America/New_York	First United Methodist Church	
2850	Mitchell Mill Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=116	20:00:00	Thursday	2405 Wait Ave	Wake Forest	NC	27587	US	35.9620859999999993	-78.4491270000000043	Wake Forest	America/New_York	Grace Assembly	Handicap Accessible
2851	Living Now	<br />Some participants break out into a BEGINNERS MEETING. 	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=118	12:00:00	Thursday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2852	Young People`s Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=222	20:00:00	Friday	7304 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8845519999999993	-78.6258650000000046	Raleigh	America/New_York	St Phillip Lutheran Church	
2853	Apex Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=121	20:00:00	Friday	408 E Williams St	Apex	NC	27539	US	35.7251290000000026	-78.8491250000000008	Apex	America/New_York	Apex Masonic Lodge	
2854	Living Now	Beginners Meeting Steps 1,2 & 3	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=122	12:00:00	Friday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2855	North East Street Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=221	20:00:00	Wednesday	10 North East St	Raleigh	NC	27601	US	35.7802599999999984	-78.6322540000000032	Raleigh	America/New_York	Emmaus House	
2856	Greenwood Forest Group	Beginners Meeting <br><br />Two 10 minute speakers then sobriety count-up<br><br />to give newcomers the opportunity to share.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=124	18:00:00	Friday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2857	Henderson Central Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=126	12:00:00	Friday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2858	New Start Group	This meeting is NOT handicapped accessible.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=127	17:30:00	Friday	210 S Chestnut St	Henderson	NC	27536	US	36.3282639999999972	-78.4057899999999961	Henderson	America/New_York	Church of the Holy Innocents	
2859	Knightdale Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=128	20:00:00	Friday	7071 Forestville Rd	Knightdale	NC	27545	US	35.8101830000000021	-78.4868220000000036	Knightdale	America/New_York	Knightdale United Methodist Church	Church Annex
2860	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=129	12:00:00	Friday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2861	Place of Miracles Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=130	12:30:00	Friday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2862	Oasis Group	Friday we have both a discussion and beginners/newcomers meeting (both closed meetings)	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=131	12:30:00	Friday	7506 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8865920000000003	-78.6266300000000058	Raleigh	America/New_York	St Andrews Presbyterian Church	
2863	Happy Hour Meeting	Last Friday-OS	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=132	17:30:00	Friday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2864	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=133	17:45:00	Friday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2865	Brickhouse Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=134	20:00:00	Friday	7509 Leadmine Rd	Raleigh	NC	27615	US	35.8843214868599034	-78.6607146263000061	Raleigh	America/New_York	Greystone Baptist Church	Corner of Leadmine and Sawmill Rd
2866	Downtown Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=135	20:00:00	Friday	124 S Salisbury St	Raleigh	NC	27601	US	35.7787099999999967	-78.6404119999999978	Raleigh	America/New_York	124 S Salisbury St	Meeting Downstairs
2867	Hayes Barton Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=136	20:00:00	Friday	1704 Oberlin Rd	Raleigh	NC	27608	US	35.806635	-78.655508999999995	Raleigh	America/New_York	White Memorial Presbyterian Church	
2868	Westminster Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=137	20:00:00	Friday	301 East Whitaker Mill Rd	Raleigh	NC	27608	US	35.8078773435825966	-78.6376905440999963	Raleigh	America/New_York	Westminister Presbyterian Church	
2869	Promises Of A New Beginning Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=238	20:00:00	Friday	201 Methodist Dr	Garner	NC	27529	US	35.7101409101236982	-78.6203634738999995	Garner	America/New_York	Garner United Methodist Church	at Hwy 70
2870	Warren County Group	Open Step / Closed Big Book Study<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=139	20:00:00	Friday	210 N Main St	Warrenton	NC	27589	US	36.4002809999999997	-78.1539410000000032	Warrenton	America/New_York	Wesley Memorial Methodist Church	
2871	Zebulon Group	2nd Friday-OS	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=140	20:00:00	Friday	118 W Sycamore St	Zebulon	NC	27597	US	35.8233829999999998	-78.3159950000000009	Zebulon	America/New_York	Zebulon Methodist Church	Corner of Gannon Ave. & Church St.
2872	Apex Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=155	20:00:00	Wednesday	408 E Williams St	Apex	NC	27539	US	35.7251290000000026	-78.8491250000000008	Apex	America/New_York	Apex Masonic Lodge	
2904	Cary Young People`s Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=188	20:00:00	Saturday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2873	Living Now	<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=156	12:00:00	Wednesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2874	Living Now		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=157	18:00:00	Wednesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2875	Sobriety First	Literature Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=252	19:00:00	Thursday	725 N Boylan Ave	Raleigh	NC	27605	US	35.7897425818507031	-78.6488592624999967	Raleigh	America/New_York	Jenkins Memorial Methodist Church	between Peace &amp; Wills Forest
2876	One Day at a Time		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=160	20:00:00	Wednesday	600 Walnut St	Cary	NC	27511	US	35.7744590000000002	-78.7678800000000052	Cary	America/New_York	Christ the King Lutheran Church	
2877	Fuquay-Varina Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=162	20:00:00	Wednesday	401 S Main St	Fuquay-Varina	NC	27526	US	35.5803060000000002	-78.7997720000000044	Fuquay-Varina	America/New_York	Fellowship Bible Church	
2878	Henderson Central Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=163	12:00:00	Wednesday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2879	Louisburg 12 Step Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=165	20:00:00	Wednesday	302 North Main St	Louisburg	NC	27549	US	36.1013870000000026	-78.2991499999999974	Louisburg	America/New_York	Louisburg Baptist Church	
2880	Early Risers Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=166	10:30:00	Wednesday	2312 Milburnie Rd	Raleigh	NC	27610	US	35.789082999999998	-78.6050570000000022	Raleigh	America/New_York	Longview Methodist Church	
2881	First Things First Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=167	12:00:00	Wednesday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2882	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=168	12:00:00	Wednesday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2883	Oasis Group	Wednesday is a Speaker meeting (open)	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=169	12:30:00	Wednesday	7506 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8865920000000003	-78.6266300000000058	Raleigh	America/New_York	St Andrews Presbyterian Church	
2884	Place of Miracles Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=170	12:30:00	Wednesday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2885	Happy Hour Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=171	17:30:00	Wednesday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2886	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=172	17:45:00	Wednesday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2887	2001 Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=173	18:30:00	Wednesday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2888	Men`s Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=174	19:00:00	Wednesday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2889	Longview Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=175	20:00:00	Wednesday	1950 New Bern Ave	Raleigh	NC	27610	US	35.7786779999999993	-78.6086959999999948	Raleigh	America/New_York	Milner Memorial Presbyterian Church	
2890	North Raleigh Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=176	20:00:00	Wednesday	10301 Old Creedmoor Rd	Raleigh	NC	27613	US	35.9323029999999974	-78.6929389999999955	Raleigh	America/New_York	Soapstone Chapel	
2891	Spanish Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=177	20:00:00	Wednesday	5801 Falls of Neuse Rd	Raleigh	NC	27609	US	35.859060999999997	-78.6182019999999966	Raleigh	America/New_York	St Raphael Catholic Church	
2892	Valley Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=178	20:00:00	Wednesday	5101 Oak Park Rd	Raleigh	NC	27612	US	35.8542135521102026	-78.7038767338000014	Raleigh	America/New_York	St Giles Presbyterian Church	
2893	Progress Not Perfection	Last Wed. Open Speaker	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=179	20:00:00	Wednesday	2718 Overbrook Dr	Raleigh	NC	27608	US	35.8194069999999982	-78.634325000000004	Raleigh	America/New_York	Our Lady of Lourdes Church	Meets in Fallon Center, Rm. 202
2894	RTP Lunch Bunch		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=180	12:00:00	Wednesday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
2895			2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=181	20:00:00	Wednesday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
2896	Wendell Group	Last Wed Open Speaker	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=182	20:00:00	Wednesday	125 Selma Rd	Wendell	NC	27591	US	35.7788439999999994	-78.3615389999999934	Wendell	America/New_York	Covenant Presbyterian Church	
2897	Morning Meditation Group	Open 11th Step Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=183	06:30:00	Saturday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2898	Gateway Group	Beginners literature meeting. 	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=513	09:15:00	Saturday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2899	Change Agents	1st Sunday of each month is Open Speaker<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=506	19:30:00	Sunday	300 Powell Drive	Raleigh	NC	27606	US	35.7881629999999973	-78.7134870000000006	Raleigh	America/New_York	Westover Methodist Church	
2900		Last Monday of each month is an Open Speaker Meeting<br /><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=507	20:00:00	Monday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
2901		Meeting Format is Chairperson`s Choice	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=509	20:00:00	Friday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
2902	Youngsville Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=185	20:00:00	Saturday	315 E Main St	Youngsville	NC	27596	US	36.0255160000000032	-78.4712889999999987	Youngsville	America/New_York	Youngsville Baptist Church	
2903	Living Now		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=186	08:00:00	Saturday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2905	Garner Big Book Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=189	20:00:00	Saturday	4926 Fayetteville Rd	Garner	NC	27529	US	35.7132059999999996	-78.6579930000000047	Garner	America/New_York	Ernest Myatt Presbyterian Church	Meeting in Fellowship hall
2906	Henderson Central Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=190	20:00:00	Saturday	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000001	-78.3683297000000039	Gillburg	America/New_York	Gillburg United Methodist Church	
2907	Keep It Simple Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=191	08:00:00	Saturday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2908	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=192	08:00:00	Saturday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2909	Saturday Morning Woman`s Group	Speaker Last Sat. of Month	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=193	09:30:00	Saturday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2910	North Raleigh Group	Men`s Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=194	10:00:00	Saturday	10301 Old Creedmoor Rd	Raleigh	NC	27613	US	35.9323029999999974	-78.6929389999999955	Raleigh	America/New_York	Soapstone Chapel	
2911	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=195	10:30:00	Saturday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2912	Place of Miracles Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=196	12:30:00	Saturday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2913	Weekender`s Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=197	17:00:00	Saturday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2914	2001 Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=198	18:30:00	Saturday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
2915	Cameron Village Candlelight Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=199	20:00:00	Saturday	2501 Clark Ave	Raleigh	NC	27607	US	35.7894580000000033	-78.6676729999999935	Raleigh	America/New_York	Fairmont United Methodist Church	
2916	Crabtree Discussion Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=200	20:00:00	Saturday	1901 Ridge Rd	Raleigh	NC	27607	US	35.8154409999999999	-78.6823610000000002	Raleigh	America/New_York	Highland United Methodist Church	
2917	Primary Purpose Group of Raleigh		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=544	19:30:00	Tuesday	6339 Glenwood Ave	Raleigh	NC	27612	US	35.8569340000000025	-78.7064730000000026	Raleigh	America/New_York	Providence Baptist Church	Glenwood Ave/Pleasant Valley Road
2918	Hills Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=202	19:00:00	Saturday	4523 Six Forks Rd	Raleigh	NC	27609	US	35.8418040000000033	-78.6440000000000055	Raleigh	America/New_York	St Timothy`s Episcopal Church	
2919	Light Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=203	20:00:00	Saturday	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851209999999966	-78.6609260000000035	Raleigh	America/New_York	Pullen Memorial Baptist Church	
2920	St. Ambrose Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=205	20:00:00	Saturday	813 Darby Dr	Raleigh	NC	27610	US	35.7565209999999993	-78.6250359999999944	Raleigh	America/New_York	St Ambrose Episcopal Church	
2921	Unity Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=206	20:00:00	Saturday	4301 Louisburg Rd	Raleigh	NC	27604	US	35.8430740000000014	-78.5747400000000056	Raleigh	America/New_York	New Hope Baptist Church	
2922	North Raleigh Group	Open Meditation Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=209	19:00:00	Tuesday	10301 Old Creedmoor Rd	Raleigh	NC	27613	US	35.9323029999999974	-78.6929389999999955	Raleigh	America/New_York	Soapstone Chapel	
2923	Log Cabin Group	Closed Big Book Study	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=210	19:00:00	Thursday	200 High Meadow Dr	Cary	NC	27511	US	35.7618971474579013	-78.784857988400006	Cary	America/New_York	Kirks of Kildare Presbyterian Auxillary Bldg	
2924	Living Now		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=211	18:00:00	Saturday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2925	Log Cabin Group	Closed Big Book / Step Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=213	19:00:00	Friday	200 High Meadow Dr	Cary	NC	27511	US	35.7618971474579013	-78.784857988400006	Cary	America/New_York	Kirks of Kildare Presbyterian Auxillary Bldg	
2926	On Awakening		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=534	06:15:00	Monday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
2927	On Awakening		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=535	06:15:00	Tuesday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
2928	Wake Forest Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=215	20:00:00	Tuesday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
2929	One Noon at a Time Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=217	12:00:00	Monday	4216 Kildaire Farm Rd	Apex	NC		US	35.6858144043427998	-78.7973195314000066	Apex	America/New_York	Triangle Community Church	
2930	One Noon at a Time Group	Closed Step / Tradition Study	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=218	12:00:00	Wednesday	4216 Kildaire Farm Rd	Apex	NC		US	35.6858144043427998	-78.7973195314000066	Apex	America/New_York	Triangle Community Church	
2931	One Noon at a Time Group	Closed Literature meetings, except the Second and Last Friday of each month, which are Open Speaker meetings.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=219	12:00:00	Friday	4216 Kildaire Farm Rd	Apex	NC		US	35.6858144043427998	-78.7973195314000066	Apex	America/New_York	Triangle Community Church	
2932	Discovery Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=223	20:00:00	Friday	2501 Clark Ave	Raleigh	NC	27607	US	35.7894580000000033	-78.6676729999999935	Raleigh	America/New_York	Fairmont United Methodist Church	
2933	Twelve & Twelve Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=229	20:00:00	Tuesday	4921 Six Forks Rd	Raleigh	NC	27609	US	35.8488680000000031	-78.6450030000000027	Raleigh	America/New_York	Hudson Memorial Presbyterian Church	
2934	Sunday Morning Spiritual Meeting	Sunday Morning Spiritual Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=230	09:00:00	Sunday	230 US Hwy 70 W 	Garner	NC	27529	US	35.701551000000002	-78.5998000000000019	Garner	America/New_York	Garner Women`s Club	
2935	New Inner City Group	Last Thursday Open Speaker	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=231	20:00:00	Thursday	718 Hillsborough St	Raleigh	NC	27603	US	35.7811560000000028	-78.6499869999999959	Raleigh	America/New_York	Hillyer Memorial	
2936	Wednesday Womens Group	ENTER BUILDING THROUGH LEFT SIDE DOOR WHEN FACING CHURCH.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=232	17:45:00	Wednesday	2501 Clark Ave	Raleigh	NC	27607	US	35.7894580000000033	-78.6676729999999935	Raleigh	America/New_York	Fairmont United Methodist Church	
2937	Back to Basics	Beginners Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=233	20:00:00	Thursday	4801 Six Forks Rd	Raleigh	NC	27609	US	35.8450950000000006	-78.6448039999999935	Raleigh	America/New_York	St Mark`s United Methodist Church	turn off Six Forks onto Northbrook Dr. (by the Daycare center), then immediately right onto Terry Street for easy parking
2938	Principles Group	<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=235	20:00:00	Tuesday	1725 North New Hope Rd	Raleigh	NC	27604	US	35.8041490000000024	-78.5652199999999965	Raleigh	America/New_York	St Mark`s Episcopal Church	
2939	TGIF		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=236	11:00:00	Friday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2940	Lambda Group	Closed Gay Men`s Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=237	17:30:00	Sunday	301 East Whitaker Mill Rd	Raleigh	NC	27608	US	35.8078773435825966	-78.6376905440999963	Raleigh	America/New_York	Westminister Presbyterian Church	
2941		Women`s Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=239	18:30:00	Monday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2942		Women`s Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=240	18:30:00	Wednesday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2943		Women`s Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=241	18:30:00	Saturday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2944	Sobriety at School	Close Discussion Grapevine Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=242	17:30:00	Tuesday	2212 Gardner Hall	Raleigh	NC		US	0	0	Raleigh	America/New_York	Gardner Hall, NCSU	
2945	Last Call		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=243	22:00:00	Monday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2946	Acceptance Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=246	12:00:00	Saturday	520 W Holding Ave	Wake Forest	NC	27587	US	35.974260000000001	-78.5250819999999976	Wake Forest	America/New_York	St Catherine of Siena Parish	
2947	Garner Big Book Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=247	20:00:00	Thursday	4926 Fayetteville Rd	Garner	NC	27529	US	35.7132059999999996	-78.6579930000000047	Garner	America/New_York	Ernest Myatt Presbyterian Church	Meeting in Fellowship hall
2948	Design For Living	Beginners Meeting<br><br><br />Speaker 1st and last Wednesday<br><br />Discussion 2nd and 3rd Wednesday	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=248	19:00:00	Wednesday	201 Methodist Dr	Garner	NC	27529	US	35.7101409101236982	-78.6203634738999995	Garner	America/New_York	Garner United Methodist Church	at Hwy 70
2949	Holly Springs Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=249	19:00:00	Saturday	4216 Kildaire Farm Rd	Apex	NC		US	35.6858144043427998	-78.7973195314000066	Apex	America/New_York	Triangle Community Church	
2950	RTP Lunch Bunch		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=250	12:00:00	Thursday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
2951	Westminster Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=251	20:00:00	Tuesday	301 East Whitaker Mill Rd	Raleigh	NC	27608	US	35.8078773435825966	-78.6376905440999963	Raleigh	America/New_York	Westminister Presbyterian Church	
2952	Healing Hour	Open Discussion open to Men and Women	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=253	12:30:00	Sunday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2953	Healing Hour	Open Discussion open to Men and Women	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=254	12:30:00	Monday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2954	Healing Hour	Open Discussion open to Men and Women	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=255	12:30:00	Tuesday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2955	Healing Hour	Open Discussion open to Men and Women	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=256	12:30:00	Wednesday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2956	Healing Hour	Open Discussion open to Men and Women	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=257	12:30:00	Thursday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2957	Healing Hour	Open Discussion open to Men and Women	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=258	12:30:00	Friday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2958	Healing Hour	Open Discussion open to Men and Women	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=259	12:30:00	Saturday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
2959	Holly Springs Group	Beginner`s Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=262	20:00:00	Monday	4216 Kildaire Farm Rd	Apex	NC		US	35.6858144043427998	-78.7973195314000066	Apex	America/New_York	Triangle Community Church	
2960	North Raleigh Big Book Study Group	<br /><br />LAST THURSDAY OF THE MONTH IS OPEN DISCUSSION	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=268	19:00:00	Thursday	5801 Falls of Neuse Rd	Raleigh	NC	27609	US	35.859060999999997	-78.6182019999999966	Raleigh	America/New_York	St Raphael Catholic Church	
2961	What Now?	Step 11 Discussion<BR><BR><br /><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=269	06:30:00	Saturday	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000002	-78.6764519999999976	Raleigh	America/New_York	Community United Church of Christ	
2962	What Now?	Step 11 Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=270	06:30:00	Monday	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000002	-78.6764519999999976	Raleigh	America/New_York	Community United Church of Christ	
2963	What Now?	Step 11 Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=271	06:30:00	Tuesday	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000002	-78.6764519999999976	Raleigh	America/New_York	Community United Church of Christ	
2964	What Now?	Step 11 Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=272	06:30:00	Wednesday	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000002	-78.6764519999999976	Raleigh	America/New_York	Community United Church of Christ	
2965	What Now?	Step 11 Discussion<BR><BR><br /><br />NOTE NEW LOCATION EFFECTIVE MAY 21, 2012!<BR><BR>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=273	06:30:00	Thursday	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000002	-78.6764519999999976	Raleigh	America/New_York	Community United Church of Christ	
2966	What Now?	Step 11 Discussion <BR><BR><br /><br />NOTE NEW LOCATION EFFECTIVE MAY 21, 2012!<BR><BR>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=274	06:30:00	Friday	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000002	-78.6764519999999976	Raleigh	America/New_York	Community United Church of Christ	
2967	No Reservations	Last Tuesday of the month is an OPEN Speaker Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=275	18:45:00	Tuesday	6175 Old Jenks Road	Apex	NC		US	35.7545100000000033	-78.8524479999999954	Apex	America/New_York	Hope Chapel	
2968	Upper Room		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=276	12:00:00	Friday	211 E Six Forks Rd, Suite 117	Raleigh	NC	27609	US	35.7720959999999977	-78.6386145000000027	Raleigh	America/New_York	211 E Six Forks Rd	
2969	Last Call	Open Beginners Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=277	22:00:00	Thursday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2970	Last Call	<br> Eleventh Step Candlelight Discussion <br><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=503	22:00:00	Friday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2971	Gateway Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=280	12:00:00	Saturday	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362615969	-78.7458854914000028	Raleigh	America/New_York	Ephesus Baptist Church	
2972	Life of New Beginnings		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=281	07:30:00	Sunday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
2973	Unity Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=283	20:00:00	Tuesday	4301 Louisburg Rd	Raleigh	NC	27604	US	35.8430740000000014	-78.5747400000000056	Raleigh	America/New_York	New Hope Baptist Church	
2974	Wake Forest Nooners		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=284	12:00:00	Tuesday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
2975	Wake Forest Nooners		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=285	12:00:00	Thursday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
2976	Saturday Night Live		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=286	19:00:00	Saturday	7304 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8845519999999993	-78.6258650000000046	Raleigh	America/New_York	St Phillip Lutheran Church	
2977	Sisters of Sobriety	NOTE MEETING LOCATION CHANGE AS OF JANUARY 2012	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=287	16:00:00	Sunday	111 Lee Ct	Clayton	NC	27520	US	35.6386210000000005	-78.4759049999999974	Clayton	America/New_York	Grace Episcopal	
2978	Fuquay-Varina Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=291	20:00:00	Friday	401 S Main St	Fuquay-Varina	NC	27526	US	35.5803060000000002	-78.7997720000000044	Fuquay-Varina	America/New_York	Fellowship Bible Church	
2979	Greenwood Forest Group	BEGINNING SEPTEMBER 2012 THIS IS A BIG BOOK STUDY.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=306	18:00:00	Tuesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2980			2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=295	17:30:00	Thursday	527 Plaza Circle	Garner	NC	27529	US	35.7043899999999965	-78.6116240000000062	Garner	America/New_York	Sovereign King Church	
2981	Experience Strength And Hope	First Sunday each month is an open speaker meeting.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=296	19:00:00	Sunday	9713 Old Stage Rd	Garner	NC	27529	US	35.641961000000002	-78.6699530000000067	Garner	America/New_York	Triangle Baptist Church	
2982	Let Go and Let God		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=303	17:30:00	Tuesday	1308 Hwy 70 West	Garner	NC	27529	US	35.7112642000000022	-78.6141709000000048	Garner	America/New_York	Capital Church	
2983	Womens Steps to Serenity	<br /><br /> 	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=305	19:00:00	Monday	600 Walnut St	Cary	NC	27511	US	35.7744590000000002	-78.7678800000000052	Cary	America/New_York	Christ the King Lutheran Church	
2984	Prodigious Results Big Book Study		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=528	18:45:00	Wednesday	136 East Morgan Street	Raleigh	NC	27601	US	35.7793309999999991	-78.6368120000000062	Raleigh	America/New_York	Church on Morgan	
2985	Daily Reprieve	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=312	07:00:00	Monday	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000029	-78.7383549999999985	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
2986	Daily Reprieve	Meditation and Discussion<br /><BR><BR><br /><br />* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=313	07:00:00	Friday	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000029	-78.7383549999999985	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
2987	Acceptance Group	<BR><br />Open Speaker/Discussion<br><br><br />Last wednesday of the month is `Chair Person`s Choice.`	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=314	19:30:00	Wednesday	520 W Holding Ave	Wake Forest	NC	27587	US	35.974260000000001	-78.5250819999999976	Wake Forest	America/New_York	St Catherine of Siena Parish	
2988	A New Freedom		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=489	12:00:00	Monday	1308 Hwy 70 West	Garner	NC	27529	US	35.7112642000000022	-78.6141709000000048	Garner	America/New_York	Capital Church	
2989	Agnostics and Others		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=514	19:00:00	Monday	3313 Wade Ave	Raleigh	NC	27607	US	35.8005380000000031	-78.6797799999999938	Raleigh	America/New_York	Unitarian Universalist Fellowship of Raleigh	
2990	Women`s Step Meeting	Last Tuesday of the month is a Tradition meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=320	18:30:00	Tuesday	7509 Leadmine Rd	Raleigh	NC	27615	US	35.8843214868599034	-78.6607146263000061	Raleigh	America/New_York	Greystone Baptist Church	Corner of Leadmine and Sawmill Rd
2991	Keep It Simple Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=321	12:30:00	Saturday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
2992	Holly Springs Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=323	20:00:00	Thursday	4216 Kildaire Farm Rd	Apex	NC		US	35.6858144043427998	-78.7973195314000066	Apex	America/New_York	Triangle Community Church	
3020	Transmitelo	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=367	20:00:00	Saturday	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047449999999969	-78.6577300000000008	Raleigh	America/New_York	St John`s Baptist Church	
2993	Turning Point Group	Open Beginner/Literature meeting<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=328	18:30:00	Tuesday	3000 New Bern Ave	Raleigh	NC	27610	US	35.7852559999999968	-78.5883390000000048	Raleigh	America/New_York	Wake Medical Center	Temporary Location: C Tower, 6th Floor Conference Room - until 1/31/17<br /><br><br><br />5th Floor conference room C tower
2994	West Cary Noon	Handicap access / No Smoking<BR><br />Meeting is in Room 206<br /><BR><br />Follow signs to Fellowship Hall	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=329	12:00:00	Thursday	200 West High St	Cary	NC	27513	US	35.7677309999999977	-78.8319369999999964	Cary	America/New_York	Westwood Baptist Church	No Smoking on church campus
2995	Epiphany Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=334	12:30:00	Tuesday	1800 Glenwood Ave	Raleigh	NC	27608	US	35.8044470000000032	-78.6456380000000053	Raleigh	America/New_York	Hayes Barton Baptist Church	
2996	Epiphany Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=335	12:30:00	Thursday	1800 Glenwood Ave	Raleigh	NC	27608	US	35.8044470000000032	-78.6456380000000053	Raleigh	America/New_York	Hayes Barton Baptist Church	
2997	North Raleigh Group	Beginner`s Meeting - Living Sober Book Study	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=337	08:30:00	Saturday	10301 Old Creedmoor Rd	Raleigh	NC	27613	US	35.9323029999999974	-78.6929389999999955	Raleigh	America/New_York	Soapstone Chapel	
2998	Together We Live		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=543	19:00:00	Monday	407 East End Ave	Littleton	NC	27850	US	36.4384250000000023	-77.9001279999999952	Littleton	America/New_York	Johns center	
2999	Hope of Fuquay	Spiritual	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=341	08:15:00	Sunday	6400 Johnson Pond Rd	Fuquay-Varina	NC	27526	US	35.6098599999999976	-78.7567200000000014	Fuquay-Varina	America/New_York	American Legion Lodge # 116	
3000	Chapter 7 Group (Western Wake Med Center)	Open Beginners/Literature meeting.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=343	18:30:00	Wednesday	1900 Kildaire Farm Rd	Cary	NC	27518	US	35.7401819999999972	-78.7815439999999967	Cary	America/New_York	Cary Wake Medical Center	The meeting is held in the Points West Conference Room #2 in the Points West Cafeteria.<br />
3001	RTP Lunch Bunch	Beginners Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=344	12:00:00	Tuesday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
3002	RTP Lunch Bunch	Meditation Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=345	12:00:00	Friday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
3003	There Is A Solution	<br><br><br /><br /><br />1st Thursday - Open Speaker <br><br /><br><br />2nd Thursday - Closed Step Study <br><br /><br><br />3rd Thursday - Closed Literature Study <br><br /><br><br />4th Thursday - Closed Tradition Study <br><br /><br><br />5th Thursday - Open Workshop <br><br /><br><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=346	19:00:00	Thursday	108 Avent Ferry Rd	Holly Springs	NC	27540	US	35.6509110000000007	-78.8350539999999995	Holly Springs	America/New_York	Holly Springs United Methodist Church	
3004	Turning Point Group	Open Beginner Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=348	18:30:00	Friday	3000 New Bern Ave	Raleigh	NC	27610	US	35.7852559999999968	-78.5883390000000048	Raleigh	America/New_York	Wake Medical Center	Temporary Location: C Tower, 6th Floor Conference Room - until 1/31/17<br /><br><br><br />5th Floor conference room C tower
3005	11th Step at 11 Group	Topic will always be the 11th Step and includes periods of silent meditation.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=349	11:00:00	Sunday	1251 Goode St	Raleigh	NC	27603	US	35.7641693659823972	-78.6586976051000022	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
3006	Volver a Empezar	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=355	20:00:00	Wednesday	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410379999999975	-78.5747149999999976	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	
3007	Volver a Empezar	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=357	20:00:00	Thursday	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410379999999975	-78.5747149999999976	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	
3008	Pickles in the Park Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=352	09:00:00	Sunday	1800 N Harrison Ave	Cary	NC	27513	US	35.8333149999999989	-78.7604410000000001	Cary	America/New_York	Umstead Park - Reedy Creek Entrance	
3009	Volver a Empezar	Meets 8:00pm until 10:00pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=353	20:00:00	Monday	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410379999999975	-78.5747149999999976	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	
3010	Volver a Empezar	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=354	20:00:00	Tuesday	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410379999999975	-78.5747149999999976	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	
3011	Volver a Empezar	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=358	20:00:00	Friday	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410379999999975	-78.5747149999999976	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	
3012	Volver a Empezar	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=359	20:00:00	Saturday	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410379999999975	-78.5747149999999976	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	
3013	Volver a Empezar	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=360	20:00:00	Sunday	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410379999999975	-78.5747149999999976	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	
3014	Transmitelo	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=361	20:00:00	Sunday	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047449999999969	-78.6577300000000008	Raleigh	America/New_York	St John`s Baptist Church	
3015	Transmitelo	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=362	20:00:00	Monday	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047449999999969	-78.6577300000000008	Raleigh	America/New_York	St John`s Baptist Church	
3016	Transmitelo	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=363	20:00:00	Tuesday	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047449999999969	-78.6577300000000008	Raleigh	America/New_York	St John`s Baptist Church	
3017	Transmitelo	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=364	20:00:00	Wednesday	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047449999999969	-78.6577300000000008	Raleigh	America/New_York	St John`s Baptist Church	
3018	Transmitelo	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=365	20:00:00	Thursday	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047449999999969	-78.6577300000000008	Raleigh	America/New_York	St John`s Baptist Church	
3019	Transmitelo	Meets 8:00 pm - 10:00 pm	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=366	20:00:00	Friday	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047449999999969	-78.6577300000000008	Raleigh	America/New_York	St John`s Baptist Church	
3021	Divina Providencia		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=375	20:00:00	Thursday	608 Lions Club Rd	Wendell	NC	27591	US	35.7809870000000032	-78.3697212999999948	Wendell	America/New_York	St Eugene`s Catholic Church	
3022	Let Go and Let God	Women`s Big Book / Step Study<br>Men`s Big Book / Step Study<br>(Separate Meetings)	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=379	17:30:00	Thursday	1308 Hwy 70 West	Garner	NC	27529	US	35.7112642000000022	-78.6141709000000048	Garner	America/New_York	Capital Church	
3023	Rule #62 Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=380	20:00:00	Tuesday	602 East Mason St	Franklinton	NC	27525	US	36.1057910000000035	-78.4482200000000063	Franklinton	America/New_York	Franklinton Senior Center	
3024	One Chapter at a Time	WE WILL READ A WHOLE CHAPTER EACH WEEK WHICH WILL ENABLE US TO GO THROUGH THE FIRST 164 PAGES FOUR TIMES A YEAR.<br /><br><br /><br><br />BYOB (Bring your own Book)	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=385	08:00:00	Saturday	820 East Williams St	Apex	NC	27502	US	35.7227800000000002	-78.8454069999999945	Apex	America/New_York	New Horizons Fellowship	
3025	Arch to Freedom Group	<br><br /><br />Twelve & Twelve Study<br /><br /><br><br><br /><br />Business Meeting: Third Monday after regular meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=383	18:00:00	Monday	100 S Hughes St	Apex	NC	27502	US	35.7292910000000035	-78.8500530000000026	Apex	America/New_York	Apex United Methodist Church - Fellowship Hall #2	
3026	We Are Not All There Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=491	12:00:00	Monday	896 Gulley Drive	Clayton	NC	27520	US	35.6659969999999973	-78.4974550000000022	Clayton	America/New_York		
3027	We Are Not All There Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=493	12:00:00	Tuesday	896 Gulley Drive	Clayton	NC	27520	US	35.6659969999999973	-78.4974550000000022	Clayton	America/New_York		
3028	We Are Not All There Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=494	12:00:00	Wednesday	896 Gulley Drive	Clayton	NC	27520	US	35.6659969999999973	-78.4974550000000022	Clayton	America/New_York		
3029	We Are Not All There Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=495	12:00:00	Thursday	896 Gulley Drive	Clayton	NC	27520	US	35.6659969999999973	-78.4974550000000022	Clayton	America/New_York		
3030	Be Still ... Mid-Morning Meditation Group	<BR><br />11th Step Meeting with 15 minute meditation after a reading.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=386	09:00:00	Monday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3031	Daily Reprieve	Meditation and Discussion.<br /><br><br />* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=469	07:00:00	Thursday	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000029	-78.7383549999999985	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
3032	Be Still ... Mid-Morning Meditation Group	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=387	09:00:00	Tuesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3033	Be Still ... Mid-Morning Meditation Group	<br /><br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=388	09:00:00	Wednesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3034	Be Still ... Mid-Morning Meditation Group	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=389	09:00:00	Thursday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3035	Be Still ... Mid-Morning Meditation Group	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=390	09:00:00	Friday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3036	Be Still ... Mid-Morning Meditation Group	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=468	11:30:00	Sunday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3037	BY THE BOOK	<br><br />Plentiful parking available. <br><br /><br />Please use the church parking lot off of Whittaker Mill Road. Park in the rear of the lot and enter through the back door. The meeting is on the second floor, at the end of the hall.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=394	12:00:00	Monday	1800 Glenwood Ave	Raleigh	NC	27608	US	35.8044470000000032	-78.6456380000000053	Raleigh	America/New_York	Hayes Barton Baptist Church	
3038	YRAC Big Book	Open Big Book Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=391	20:00:00	Tuesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3039	YRAC Big Book	Closed Literature Study.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=392	20:00:00	Friday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3040	Spiritual Awakenings	<br /><br /><B>NOTE: THIS GROUP MEETS ONLY ON THE THIRD SATURDAY OF EACH MONTH</B><br />                         <BR> <BR><br />3 MEETINGS EVERY THIRD SATURDAY<br /><BR><br />  8:00 AM: GOD AS WE UNDERSTAND HIM<BR><br />  9:15 AM: SPIRITUAL RECOVERY PRINCIPLES OF THE BEATITUDES<BR><br />10:30 AM : SPIRITUAL AWAKENINGS<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=401	08:00:00	Saturday	4801 Six Forks Rd	Raleigh	NC	27609	US	35.8450950000000006	-78.6448039999999935	Raleigh	America/New_York	St Mark`s United Methodist Church	turn off Six Forks onto Northbrook Dr. (by the Daycare center), then immediately right onto Terry Street for easy parking
3041	Cary Young People`s Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=403	20:00:00	Wednesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3042	Primary Purpose Group of Clayton		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=402	08:00:00	Saturday	896 Gulley Drive	Clayton	NC	27520	US	35.6659969999999973	-78.4974550000000022	Clayton	America/New_York		
3043	Courage to Change Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=440	18:30:00	Thursday	1401 Boyer St	Raleigh	NC	27610	US	35.7812589999999986	-78.6173720000000031	Raleigh	America/New_York	Grace AME Zion Church	
3044	Basics for Beginners	BEGINNERS MEETING<br><br />Focus on Steps 1, 2 & 3 and Sponsorship<br /><br><br />Note: Entry from Lakeside Drive ONLY	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=441	18:30:00	Friday	1101 Vandora Springs Rd	Garner	NC		US	35.7035029999999978	-78.6266320000000007	Garner	America/New_York	St. Christopher`s Episcopal Church 	
3045	Spring Forest Recovery Group	1st,  3rd & 5th Sundays - Speaker Meeting<br /><br />2nd & 4th Sundays - Big Book Study	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=404	19:00:00	Sunday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
3046	Spring Forest Recovery Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=405	19:00:00	Tuesday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
3047	RTP Lunch Bunch		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=445	17:30:00	Tuesday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
3048	Channel of Serenity	Meeting is located on the 2nd floor. There is no handicapped access.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=412	19:00:00	Thursday	8701 Falls of Neuse Rd	Raleigh	NC	27615	US	35.8964360000000013	-78.6127409999999998	Raleigh	America/New_York	North Raleigh Church of Christ	
3049	There Is A Solution	BEGINNER`S MEETING	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=406	19:00:00	Tuesday	108 Avent Ferry Rd	Holly Springs	NC	27540	US	35.6509110000000007	-78.8350539999999995	Holly Springs	America/New_York	Holly Springs United Methodist Church	
3050	We Agnostics	Room 347 <br> <br><br />Open Big Book/ 12&12 Study<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=413	20:00:00	Friday	3948 Browning Place - Room 347	Raleigh	NC	27609	US	35.8307980000000015	-78.6310189999999949	Raleigh	America/New_York	Intergroup Office	The Tri-County Intergroup Office of Alcoholics Anonymous
3051	Original Recipe Big Book Step Study	Meeting is 6:30 pm - 8:00 pm <br><br><br /><br />Special Directions: At the entrance closest to the Kildaire Farms Rd<br />side there is an area with Picnic tables, the door to our meeting is<br />at the end of that patio. <br><br><br />(We have a small sign with our our AA BBSS displayed on the Door)<br /><br><BR><br />Bring Your Own Book!<br /><br /><br><br><br />Business Meeting is the last Tuesday of the Month. <br><br />Contact ID:Chuck1152@hotmail.com<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=415	18:30:00	Tuesday	110 SE Maynard Rd	Cary	NC	27511	US	35.7704370000000011	-78.7807829999999996	Cary	America/New_York	Greenwood Forest Baptist Church	
3052	By God`s Grace	Open Discussion <br><br />1st & 3rd Thursday Big Book Step Study	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=416	19:00:00	Thursday	608 Lions Club Rd	Wendell	NC	27591	US	35.7809870000000032	-78.3697212999999948	Wendell	America/New_York	St Eugene`s Catholic Church	
3053	RTP Lunch Bunch		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=446	17:30:00	Thursday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
3054	Road to Recovery	Enter Left Side of Church.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=418	20:00:00	Thursday	9433 Ten-Ten Rd	Garner	NC	27603	US	35.6530119999999968	-78.6601629999999972	Garner	America/New_York	Holland`s United Methodist Church	
3055	11th Step Prayer and Meditation Meeting	PLEASE COME EARLY, DOORS LOCK AT 8:30 AM.<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=425	08:30:00	Saturday	1800 Glenwood Ave	Raleigh	NC	27608	US	35.8044470000000032	-78.6456380000000053	Raleigh	America/New_York	Hayes Barton Baptist Church	
3056	First 164		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=483	18:30:00	Monday	1128 South Main Street	Fuquay-Varina	NC		US	0	0	Fuquay-Varina	America/New_York	Trinity Episcopal Church	
3057	Way of Life Group	<br><br />Meeting is downstairs<BR><BR><br />1st Monday of the month is a BBS<br><br />2nd Monday of the month is a workshop<br><br />3rd Monday of the month is a beginners <br><br />4th Monday of the month is a step study <br><br />5th Monday of the month is a speaker meeting <br>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=429	20:00:00	Monday	124 S Salisbury St	Raleigh	NC	27601	US	35.7787099999999967	-78.6404119999999978	Raleigh	America/New_York	124 S Salisbury St	Meeting Downstairs
3058	Log Cabin Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=497	19:00:00	Wednesday	200 High Meadow Dr	Cary	NC	27511	US	35.7618971474579013	-78.784857988400006	Cary	America/New_York	Kirks of Kildare Presbyterian Auxillary Bldg	
3059	On Awakening		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=537	06:15:00	Thursday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
3060	On Awakening		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=538	06:15:00	Friday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
3061	Light Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=436	20:00:00	Thursday	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851209999999966	-78.6609260000000035	Raleigh	America/New_York	Pullen Memorial Baptist Church	
3062	Honeycutt Road Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=438	19:30:00	Tuesday	8501 Honeycutt Rd	Raleigh	NC	27615	US	35.8967749999999981	-78.6234939999999938	Raleigh	America/New_York	North Raleigh United Methodist Church	
3063	RTP Lunch Bunch		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=533	06:45:00	Friday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
3064	Stepping Stones		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=442	18:30:00	Friday	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000035	-78.7507889999999975	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	
3065	AAnything It Takes	 <br><br>Many paths to spirituality.<br><br>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=525	08:30:00	Saturday	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000002	-78.6764519999999976	Raleigh	America/New_York	Community United Church of Christ	
3066	The Steps We Took		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=447	12:00:00	Tuesday	408 E Williams St	Apex	NC	27539	US	35.7251290000000026	-78.8491250000000008	Apex	America/New_York	Apex Masonic Lodge	
3067	Sharing the Promises	<br><br />Literature Discussion Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=466	19:00:00	Thursday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
3068	Pass It On		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=485	11:00:00	Saturday	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000025	-78.6381786999999974	Raleigh	America/New_York	Camel 24 Fellowship	
3069	A New Freedom	Meeting is child-friendly, but no child care is provided.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=451	12:00:00	Wednesday	1308 Hwy 70 W	Garner	NC	27529	US	35.7208749999999995	-78.6405180000000001	Garner	America/New_York	The Capital Church	
3070	A New Freedom	Meeting is child-friendly, but no child care is provided.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=452	12:00:00	Friday	1308 Hwy 70 W	Garner	NC	27529	US	35.7208749999999995	-78.6405180000000001	Garner	America/New_York	The Capital Church	
3071	Sisters of Sobriety of Wake Forest		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=453	18:00:00	Wednesday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
3072	Cary Big Book Study Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=454	20:00:00	Monday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3073	RTP Lunch Bunch		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=531	06:45:00	Monday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
3074	RTP Lunch Bunch		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=532	06:45:00	Wednesday	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000006	-78.8986189999999965	Durham	America/New_York	Cedar Forks Baptist Church	
3075	Tuesday Women`s Meeting		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=455	18:30:00	Tuesday	608 Lions Club Rd	Wendell	NC	27591	US	35.7809870000000032	-78.3697212999999948	Wendell	America/New_York	St Eugene`s Catholic Church	
3076	Bunners		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=456	19:00:00	Monday	200 Main St	Bunn	NC	27508	US	35.9629839999999987	-78.2558680000000066	Bunn	America/New_York	Bunn United Methodist Church, Fellowship Hall	
3077	Wake Forest Nooners	First Monday of each month is a Speaker and Discussion meeting.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=459	12:00:00	Monday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
3078	Wake Forest Nooners		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=460	12:00:00	Wednesday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
3079	Wake Forest Nooners		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=461	12:00:00	Friday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
3080	Easy Does It		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=516	17:00:00	Sunday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
3081	Jumping Off Place	<br><br />Literature discussion meeting<br><br />Speaker 4th Tuesday of the month<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=465	19:00:00	Tuesday	4523 Six Forks Rd	Raleigh	NC	27609	US	35.8418040000000033	-78.6440000000000055	Raleigh	America/New_York	St Timothy`s Episcopal Church	
3082	Path to Serenity	BECAME A WOMEN`S MEETING SEPTEMBER 2016	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=529	09:00:00	Thursday	1200 North Salem Street	Apex	NC	27502	US	35.7447390000000027	-78.8501339999999971	Apex	America/New_York	Peak United Methodist Church	
3083	36 Chambers	Open Step Speaker lead followed by Discussion, Young Peoples Meeting<br><br><br />    1st/3rd Step Speaker, then Discussion <br><br />    2nd/4th Discussion with leader<br><br />    5th Friday is Chair`s Choice<br>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=473	18:30:00	Friday	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851209999999966	-78.6609260000000035	Raleigh	America/New_York	Pullen Memorial Baptist Church	
3084	Soul Food Step Study	<br><br />        First Tuesday is Traditions	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=474	19:00:00	Tuesday	121 Hillsborough Street	Raleigh	NC	27603	US	35.779986000000001	-78.6412660000000017	Raleigh	America/New_York	The Shepherds Table, Church of the Good Shepherd	
3085	Another 24 Hours	<BR><br />New Closed Meeting of AA<br /><br><br />Originally published in 1952, Twelve Steps and<br />Twelve Traditions, the 12 and 12, is used by A.A.<br />members and groups around the world. It lays<br />out the principles by which A.A. members<br />recover and by which the fellowship functions.<br />The basic text clarifies the Steps which<br />constitute the A.A. way of life and the Traditions,<br />by which A.A. maintains its unity.<br /><br><br><br />&#8227; First Friday: Step Reading <BR><br />&#8227; Second Friday: Step Reading <BR><br />&#8227; Third Friday: Speaker about Step<BR><br />&#8227; Fourth Friday: Tradition Meeting<BR><br /><BR><BR><br />Parking: Parking is in the back or at the<br />Doubletree. <BR><BR><br />Please use the front door.<br><br />The meeting is held in the Parlor.<br /><BR><BR><br />For more info email anothertwentyfour@gmail.com	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=476	12:00:00	Friday	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851209999999966	-78.6609260000000035	Raleigh	America/New_York	Pullen Memorial Baptist Church	
3086	We Are Not All There Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=496	12:00:00	Friday	896 Gulley Drive	Clayton	NC	27520	US	35.6659969999999973	-78.4974550000000022	Clayton	America/New_York		
3087	Bunners	<BR><br />The last Thursday of the month is a Speaker Meeting.<br><br>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=490	19:00:00	Thursday	200 Main St	Bunn	NC	27508	US	35.9629839999999987	-78.2558680000000066	Bunn	America/New_York	Bunn United Methodist Church, Fellowship Hall	
3088	Cleveland 12 Step	<BR><BR><br />!!!!!!!!!!          ATTENTION          !!!!!!!!!!<BR><br /><BR><br />THIS NEW MEETING SCHEDULE BEGINS APRIL 1, 2015<BR><BR><br /><BR>1st Wednesday: Closed Step Study<BR><br />2nd Wednesday: Closed Tradition Study<BR><br />3rd Wednesday: Closed AA Literature Study<BR><br />4th Wednesday: Open Speaker Meeting<BR>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=477	20:00:00	Wednesday	8927 Cleveland Rd	Clayton	NC	27520	US	35.5660079999999965	-78.5277229999999946	Clayton	America/New_York	Oakland Presbyterian Church	
3089	Daily Reprieve	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=479	07:00:00	Tuesday	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000029	-78.7383549999999985	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
3090	Daily Reprieve	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=480	07:00:00	Wednesday	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000029	-78.7383549999999985	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
3091	Last Call	<br /><BR> As Bill Sees It - Discussion<BR><br /><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=498	22:00:00	Sunday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3092	Last Call	<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=499	22:00:00	Tuesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3093	Last Call	<br /><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=500	22:00:00	Wednesday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3094	Last Call	<br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=504	22:00:00	Saturday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3095	Ladies Into Action	Women`s Meeting	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=511	18:30:00	Tuesday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
3096	Victor E`s Literature Meeting	Meets each Monday, EXCEPT 2nd Monday.	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=512	19:00:00	Monday	3948 Browning Place - Room 347	Raleigh	NC	27609	US	35.8307980000000015	-78.6310189999999949	Raleigh	America/New_York	Intergroup Office	The Tri-County Intergroup Office of Alcoholics Anonymous
3097	11th Step at 11 Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=515	20:15:00	Tuesday	1251 Goode Street	Raleigh	NC		US	0	0	Raleigh	America/New_York	Healing Place of Wake County - Men	
3098	Progress Not Perfection Women`s Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=521	15:00:00	Sunday	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000017	-78.5164290000000022	Wake Forest	America/New_York	Wake Forest United Methodist Church	
3099	On Awakening	Meditation, Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=522	06:00:00	Monday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
3100	On Awakening	Meditation, Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=523	06:00:00	Wednesday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
3101	On Awakening	Meditation, Discussion	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=524	06:00:00	Friday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
3102	One Chapter at a Time	<br><br /> <br />Thursday night is an open literature study based on writings from As Bill Sees It.<br /><br>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=526	19:30:00	Thursday	820 East Williams St	Apex	NC	27502	US	35.7227800000000002	-78.8454069999999945	Apex	America/New_York	New Horizons Fellowship	
3103	The Legacy Group	<br><br />1st we recover from alcoholism, <br><br />2nd we stay together in unity, <br><br />3rd our legacy is to serve its Primary Purpose of<br />carrying the message to all who need it and want it<br><br /><br /><br><br />OPEN DISCUSSION <br><br />ROTATING FORMAT<br><br><br />THIS IS A NON SMOKING MEETING INSIDE AND OUTSIDE PER<br />REQUEST FROM THE CHURCH, NO SMOKING ON PROPERY!!!<br>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=527	19:00:00	Thursday	1001 Steeple Square Ct.	Knightdale	NC	27545	US	0	0	Knightdale	America/New_York	Cross Point Community Church	
3104	On Awakening		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=536	06:15:00	Wednesday	932 South Cross Street	Youngsville	NC	27596	US	36.0074639999999988	-78.4766070000000013	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	
3105	Be Still ... Mid-Morning Meditation Group		2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=530	11:00:00	Saturday	177 High House Rd	Cary	NC	27511	US	35.7816100000000006	-78.7981910000000028	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
3106	The Love and Tolerance Group	<BR>Steps and Traditions study. <BR><br />Third Tuesday is a BEGINNERS meeting.<BR><BR>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=539	20:00:00	Tuesday	1498 Hodge Road	Knightdale	NC		US	35.7844199999999972	-78.527977000000007	Knightdale	America/New_York	Green Pines Baptist Church	
3107	Rise Above It	<BR> 1st Tuesday - Speaker<BR><br />2nd Tuesday - Tradition<BR><br />3rd & 4th Tuesdays - Big Book<BR><br />5th Tuesday - Concepts <BR><br /><br>	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=540	19:00:00	Tuesday	9121 Six Forks Road	Raleigh	NC		US	35.9036720000000003	-78.6545459999999963	Raleigh	America/New_York	Windborne United Methodist Church	
3108	Love and Tolerance Group	<br><br />1st Tuesday — Closed Step Study <BR><br />2nd Tuesday — Closed Tradition Study<BR><br />3rd Tuesday — Open Speaker Meeting <BR><br />4th Tuesday — Open Beginner Meeting, Steps 1, 2, 3 <BR><br />If 5th Tuesday — Open Speaker Meeting or Workshop, Chairperson’s Choice <BR><BR><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=541	20:00:00	Tuesday	1498 Hodge Road	Knightdale	NC		US	35.7844199999999972	-78.527977000000007	Knightdale	America/New_York	Green Pines Baptist Church	
3109	First 164	<br> <br />Last Wednesday of the Month is a Speaker Meeting.<br /><br><br><br />	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=542	18:30:00	Wednesday	1128 South Main Street	Fuquay-Varina	NC		US	0	0	Fuquay-Varina	America/New_York	Trinity Episcopal Church	
3110	The James Club	MENS MEETING	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=545	20:00:00	Thursday	300 Powell Street	Raleigh	NC	27606	US	0	0	Raleigh	America/New_York	Westover Methodist Church	
3111	Recovery 101	Literature Study - Living Sober	2017-05-04 16:58:28	http://m.raleighaa.com/additional.php?id=546	10:00:00	Friday	905 South Main Street	Wake Forest	NC	27587	US	0	0	Wake Forest	America/New_York	Wake Forest United Methodist Church	
\.


--
-- Name: meeting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doug
--

SELECT pg_catalog.setval('meeting_id_seq', 3111, true);


--
-- Data for Name: meeting_old; Type: TABLE DATA; Schema: public; Owner: doug
--

COPY meeting_old (list_name, list_slug, list_notes, list_updated, list_url, list_time, list_day, list_types, list_address, list_city, list_state, list_postal_code, list_country, list_latitude, list_longitude, list_region, list_timezone, list_location, list_location_notes) FROM stdin;
Sobriety First	1	4th Sunday each Month is Open Speaker Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=1	18:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sobriety First	1	4th Sunday each Month is Open Speaker Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=1	18:00:00	Sunday	ST	725 N Boylan Ave	Raleigh	NC	27605	US	35.7897425818507	-78.6488592625	Raleigh	America/New_York	Jenkins Memorial Methodist Church	between Peace &amp; Wills Forest
Morning Meditation Group	2	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=2	06:30:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	2	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=2	06:30:00	Sunday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	2	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=2	06:30:00	Sunday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Morning Meditation Group	3	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=3	06:30:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	3	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=3	06:30:00	Monday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	3	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=3	06:30:00	Monday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Non Smoking Group	4	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=4	20:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Non Smoking Group	4	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=4	20:00:00	Wednesday	ST	1520 Canterbury Rd	Raleigh	NC	27608	US	35.8092520000000	-78.6673640000	Raleigh	America/New_York	St Michael`s Episcopal Church	Off Wade avenue between Oberlin and the Beltline 
Morning Meditation Group	6	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=6	06:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	6	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=6	06:30:00	Thursday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	6	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=6	06:30:00	Thursday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Morning Meditation Group	7	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=7	06:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	7	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=7	06:30:00	Tuesday	ST	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Morning Meditation Group	8	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=8	06:30:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	8	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=8	06:30:00	Wednesday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	8	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=8	06:30:00	Wednesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Morning Meditation Group	9	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=9	06:30:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	9	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=9	06:30:00	Friday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	9	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=9	06:30:00	Friday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Greenwood Forest Group	10	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=10	08:30:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	10	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=10	08:30:00	Sunday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	10	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=10	08:30:00	Sunday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Greenwood Forest Group	13	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=13	18:30:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	13	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=13	18:30:00	Sunday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	13	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=13	18:30:00	Sunday	W	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	13	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=13	18:30:00	Sunday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Greenwood Forest Group	12	Men`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=12	10:00:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	12	Men`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=12	10:00:00	Sunday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	12	Men`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=12	10:00:00	Sunday	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	12	Men`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=12	10:00:00	Sunday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Apex Group	15	1st and 3rd Sundays of the Month - Open discussion meeting <br><br />2nd and last Sundays - Open Speaker meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=15	20:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Apex Group	15	1st and 3rd Sundays of the Month - Open discussion meeting <br><br />2nd and last Sundays - Open Speaker meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=15	20:00:00	Sunday	ST	408 E Williams St	Apex	NC	27539	US	35.7251290000000	-78.8491250000	Apex	America/New_York	Apex Masonic Lodge	\N
Henderson Central Group	18	Open Speaker 2nd and Last Sundays	2017-04-28	http://m.raleighaa.com/additional.php?id=18	20:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	18	Open Speaker 2nd and Last Sundays	2017-04-28	http://m.raleighaa.com/additional.php?id=18	20:00:00	Sunday	ST	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
Louisburg 12 Step Group	19	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=19	20:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Louisburg 12 Step Group	19	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=19	20:00:00	Sunday	ST	302 North Main St	Louisburg	NC	27549	US	36.1013870000000	-78.2991500000	Louisburg	America/New_York	Louisburg Baptist Church	\N
Came to Believe Meeting	20	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=20	09:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Came to Believe Meeting	20	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=20	09:00:00	Sunday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Spiritual Meeting	21	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=21	11:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Spiritual Meeting	21	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=21	11:00:00	Sunday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Place of Miracles Meeting	22	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=22	12:30:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Place of Miracles Meeting	22	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=22	12:30:00	Sunday	ST	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Hills Group	23	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=23	14:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hills Group	23	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=23	14:00:00	Sunday	ST	4523 Six Forks Rd	Raleigh	NC	27609	US	35.8418040000000	-78.6440000000	Raleigh	America/New_York	St Timothy`s Episcopal Church	\N
Weekender`s Meeting	24	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=24	17:00:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Weekender`s Meeting	24	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=24	17:00:00	Sunday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Longview Group	25	1st Sunday Open Discussion<br />2nd Sunday Open Speaker	2017-04-28	http://m.raleighaa.com/additional.php?id=25	20:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Longview Group	25	1st Sunday Open Discussion<br />2nd Sunday Open Speaker	2017-04-28	http://m.raleighaa.com/additional.php?id=25	20:00:00	Sunday	ST	1950 New Bern Ave	Raleigh	NC	27610	US	35.7786780000000	-78.6086960000	Raleigh	America/New_York	Milner Memorial Presbyterian Church	\N
Valley Group	26	Beginners Meeting Same Time<BR><br />Last Sunday Open Speaker Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=26	20:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Valley Group	26	Beginners Meeting Same Time<BR><br />Last Sunday Open Speaker Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=26	20:00:00	Sunday	ST	5101 Oak Park Rd	Raleigh	NC	27612	US	35.8542135521102	-78.7038767338	Raleigh	America/New_York	St Giles Presbyterian Church	\N
Westminster Group	27	TWO MEETINGS AT 8 PM:<BR><BR><br />Open Discussion<br><br />Beginners Group meets at the same time in a different room<br><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=27	20:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Westminster Group	27	TWO MEETINGS AT 8 PM:<BR><BR><br />Open Discussion<br><br />Beginners Group meets at the same time in a different room<br><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=27	20:00:00	Sunday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Westminster Group	27	TWO MEETINGS AT 8 PM:<BR><BR><br />Open Discussion<br><br />Beginners Group meets at the same time in a different room<br><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=27	20:00:00	Sunday	BE	301 East Whitaker Mill Rd	Raleigh	NC	27608	US	35.8078773435826	-78.6376905441	Raleigh	America/New_York	Westminister Presbyterian Church	\N
Willow Springs Group	28	Beginners Meeting<br /> - first three steps and sponsorship<br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=28	19:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Willow Springs Group	28	Beginners Meeting<br /> - first three steps and sponsorship<br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=28	19:00:00	Sunday	B	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Willow Springs Group	28	Beginners Meeting<br /> - first three steps and sponsorship<br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=28	19:00:00	Sunday	BE	402 N Main St	Fuquay-Varina	NC	\N	US	35.5890800000000	-78.7986240000	Fuquay-Varina	America/New_York	First United Methodist Church	\N
Willow Springs Group	29	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=29	19:01:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Willow Springs Group	29	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=29	19:01:00	Sunday	SP	402 N Main St	Fuquay-Varina	NC	\N	US	35.5890800000000	-78.7986240000	Fuquay-Varina	America/New_York	First United Methodist Church	\N
Zebulon Group	30	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=30	20:00:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Zebulon Group	30	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=30	20:00:00	Sunday	B	118 W Sycamore St	Zebulon	NC	27597	US	35.8233830000000	-78.3159950000	Zebulon	America/New_York	Zebulon Methodist Church	Corner of Gannon Ave. & Church St.
Living Now	32	As Bill Sees It<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=32	12:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	32	As Bill Sees It<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=32	12:00:00	Monday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	32	As Bill Sees It<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=32	12:00:00	Monday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Living Now	34	As Bill Sees It	2017-04-28	http://m.raleighaa.com/additional.php?id=34	18:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	34	As Bill Sees It	2017-04-28	http://m.raleighaa.com/additional.php?id=34	18:00:00	Monday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	34	As Bill Sees It	2017-04-28	http://m.raleighaa.com/additional.php?id=34	18:00:00	Monday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Reaching Out Group	38	1st-12 & 12<br>2nd-Discussion<br>3rd-Traditions<br>4th-Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=38	19:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Reaching Out Group	38	1st-12 & 12<br>2nd-Discussion<br>3rd-Traditions<br>4th-Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=38	19:00:00	Monday	B	111 Lee Court	Clayton	NC	27520	US	35.6585970000000	-78.4636330000	Clayton	America/New_York	Grace Episcopal Church	\N
Franklinton Evergreen Group	39	1st and 3rd Monday-Closed Discussion<br />2nd and 4th Monday-Big Book Study<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=39	18:30:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Franklinton Evergreen Group	39	1st and 3rd Monday-Closed Discussion<br />2nd and 4th Monday-Big Book Study<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=39	18:30:00	Monday	ST	102 West Mason St	Franklinton	NC	27525	US	36.1043810000000	-78.4586590000	Franklinton	America/New_York	Franklinton Baptist Church	\N
Lakeside Group	40	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=40	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lakeside Group	40	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=40	20:00:00	Monday	ST	503 Lakeside Dr	Garner	NC	27529	US	35.6978730000000	-78.6113190000	Garner	America/New_York	First Presbyterian Church-Garner	Corner of Lakeside Dr. & Hwy. 50<br>Meets Upstairs
Sunlight of the Spirit	517	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=517	09:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Maynard Road Group	37	Beginners Discussion - Steps 1,2,3 / <br />4th Monday - Open Speaker Meeting (with Book Raffle)	2017-04-28	http://m.raleighaa.com/additional.php?id=37	20:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Maynard Road Group	37	Beginners Discussion - Steps 1,2,3 / <br />4th Monday - Open Speaker Meeting (with Book Raffle)	2017-04-28	http://m.raleighaa.com/additional.php?id=37	20:00:00	Monday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Maynard Road Group	37	Beginners Discussion - Steps 1,2,3 / <br />4th Monday - Open Speaker Meeting (with Book Raffle)	2017-04-28	http://m.raleighaa.com/additional.php?id=37	20:00:00	Monday	BE	110 SE Maynard Rd	Cary	NC	27511	US	35.7704370000000	-78.7807830000	Cary	America/New_York	Greenwood Forest Baptist Church	\N
Henderson Central Group	41	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=41	12:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	41	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=41	12:00:00	Monday	B	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
New Start Group	42	This location is NOT handicapped accessible.	2017-04-28	http://m.raleighaa.com/additional.php?id=42	17:30:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
New Start Group	42	This location is NOT handicapped accessible.	2017-04-28	http://m.raleighaa.com/additional.php?id=42	17:30:00	Monday	ST	210 S Chestnut St	Henderson	NC	27536	US	36.3282640000000	-78.4057900000	Henderson	America/New_York	Church of the Holy Innocents	\N
Knightdale Group	43	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=43	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Knightdale Group	43	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=43	20:00:00	Monday	SP	7071 Forestville Rd	Knightdale	NC	27545	US	35.8101830000000	-78.4868220000	Knightdale	America/New_York	Knightdale United Methodist Church	Church Annex
Early Risers Group	45	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=45	10:30:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Early Risers Group	45	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=45	10:30:00	Monday	B	2312 Milburnie Rd	Raleigh	NC	27610	US	35.7890830000000	-78.6050570000	Raleigh	America/New_York	Longview Methodist Church	\N
First Things First Meeting	46	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=46	12:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
First Things First Meeting	46	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=46	12:00:00	Monday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	47	Open Discussion/Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=47	12:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	47	Open Discussion/Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=47	12:00:00	Monday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	47	Open Discussion/Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=47	12:00:00	Monday	BE	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Oasis Group	48	Monday is step/Tradition (closed) with Tradition Meetings on the first Monday of each month	2017-04-28	http://m.raleighaa.com/additional.php?id=48	12:30:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Oasis Group	48	Monday is step/Tradition (closed) with Tradition Meetings on the first Monday of each month	2017-04-28	http://m.raleighaa.com/additional.php?id=48	12:30:00	Monday	B	7506 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8865920000000	-78.6266300000	Raleigh	America/New_York	St Andrews Presbyterian Church	\N
Place of Miracles Meeting	49	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=49	12:30:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Place of Miracles Meeting	49	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=49	12:30:00	Monday	ST	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Happy Hour Meeting	50	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=50	17:30:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Happy Hour Meeting	50	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=50	17:30:00	Monday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	51	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=51	17:45:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	51	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=51	17:45:00	Monday	ST	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Jenkins Group	52	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=52	18:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Jenkins Group	52	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=52	18:00:00	Monday	ST	725 N Boylan Ave	Raleigh	NC	27605	US	35.7897425818507	-78.6488592625	Raleigh	America/New_York	Jenkins Memorial Methodist Church	between Peace &amp; Wills Forest
Women`s Group	54	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=54	18:30:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Women`s Group	54	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=54	18:30:00	Monday	ST	7509 Leadmine Rd	Raleigh	NC	27615	US	35.8843214868599	-78.6607146263	Raleigh	America/New_York	Greystone Baptist Church	Corner of Leadmine and Sawmill Rd
2001 Group	55	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=55	18:30:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2001 Group	55	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=55	18:30:00	Monday	B	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Hayes Barton Group	56	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=56	19:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hayes Barton Group	56	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=56	19:00:00	Monday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hayes Barton Group	56	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=56	19:00:00	Monday	BE	1704 Oberlin Rd	Raleigh	NC	27608	US	35.8066350000000	-78.6555090000	Raleigh	America/New_York	White Memorial Presbyterian Church	\N
Brickhouse Group	58	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=58	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Brickhouse Group	58	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=58	20:00:00	Monday	ST	7509 Leadmine Rd	Raleigh	NC	27615	US	35.8843214868599	-78.6607146263	Raleigh	America/New_York	Greystone Baptist Church	Corner of Leadmine and Sawmill Rd
Fairview Group	59	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=59	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fairview Group	59	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=59	20:00:00	Monday	ST	2011 Ridge Rd	Raleigh	NC	27607	US	35.8180150000000	-78.6807700000	Raleigh	America/New_York	Ridge Road Baptist Church	\N
Gratitude Study Group	60	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=60	19:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gratitude Study Group	60	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=60	19:00:00	Monday	D	99 N Salisbury St	Raleigh	NC	27603	US	35.7810590000000	-78.6408490000	Raleigh	America/New_York	First Baptist Church	Enter the building from the covered walkway in the parking lot that borders McDowell Street. This parking lot can only be accessed from Hillsborough or Edenton Streets.
Sunlight of the Spirit	517	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=517	09:00:00	Saturday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Oak City Speakers Group	518	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=518	20:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Oak City Speakers Group	518	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=518	20:00:00	Saturday	D	3313 Wade Ave	Raleigh	NC	27607	US	35.8005380000000	-78.6797800000	Raleigh	America/New_York	Unitarian Universalist Fellowship of Raleigh	\N
Ladies Into Action 	519	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=519	18:30:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ladies Into Action 	519	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=519	18:30:00	Tuesday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ladies Into Action 	519	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=519	18:30:00	Tuesday	W	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Hayes Barton Group	62	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=62	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hayes Barton Group	62	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=62	20:00:00	Monday	ST	1704 Oberlin Rd	Raleigh	NC	27608	US	35.8066350000000	-78.6555090000	Raleigh	America/New_York	White Memorial Presbyterian Church	\N
Millbrook Step Study Group	63	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=63	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Millbrook Step Study Group	63	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=63	20:00:00	Monday	B	1712 E Millbrook Rd	Raleigh	NC	27609	US	35.8495890000000	-78.6068560000	Raleigh	America/New_York	Millbrook United Methodist Church	\N
RTP Lunch Bunch	64	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=64	12:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	64	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=64	12:00:00	Monday	B	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
Ladies Into Action	510	<BR> CANDLELIGHT MEETING<br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=510	18:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ladies Into Action	510	<BR> CANDLELIGHT MEETING<br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=510	18:30:00	Saturday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Mitchell Mill Group	66	Last Monday Traditions	2017-04-28	http://m.raleighaa.com/additional.php?id=66	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mitchell Mill Group	66	Last Monday Traditions	2017-04-28	http://m.raleighaa.com/additional.php?id=66	20:00:00	Monday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mitchell Mill Group	66	Last Monday Traditions	2017-04-28	http://m.raleighaa.com/additional.php?id=66	20:00:00	Monday	X	2405 Wait Ave	Wake Forest	NC	27587	US	35.9620860000000	-78.4491270000	Wake Forest	America/New_York	Grace Assembly	Handicap Accessible
Green Level Group	68	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=68	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Green Level Group	68	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=68	20:00:00	Tuesday	ST	8509 Green Level Church Rd	Cary	NC	27519	US	35.7823950000000	-78.9042310000	Cary	America/New_York	Green Level Baptist Church	\N
Living Now	70	Grapevine<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=70	12:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	70	Grapevine<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=70	12:00:00	Tuesday	ST	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Clayton Big Book	73	As Bill Sees It, Beginners meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=73	19:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Clayton Big Book	73	As Bill Sees It, Beginners meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=73	19:00:00	Tuesday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Clayton Big Book	73	As Bill Sees It, Beginners meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=73	19:00:00	Tuesday	X	121 E Second St	Clayton	NC	27520	US	35.7802140000000	-78.3687000000	Clayton	America/New_York	Horne Memorial United Methodist Church	\N
Garner Big Book Group	74	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=74	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Garner Big Book Group	74	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=74	20:00:00	Tuesday	ST	4926 Fayetteville Rd	Garner	NC	27529	US	35.7132060000000	-78.6579930000	Garner	America/New_York	Ernest Myatt Presbyterian Church	Meeting in Fellowship hall
Henderson Central Group	75	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=75	12:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	75	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=75	12:00:00	Tuesday	ST	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
New Start Group	76	This location is NOT handicapped accessible.	2017-04-28	http://m.raleighaa.com/additional.php?id=76	17:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
New Start Group	76	This location is NOT handicapped accessible.	2017-04-28	http://m.raleighaa.com/additional.php?id=76	17:30:00	Tuesday	B	210 S Chestnut St	Henderson	NC	27536	US	36.3282640000000	-78.4057900000	Henderson	America/New_York	Church of the Holy Innocents	\N
Henderson Central Group	77	Step/Traditions	2017-04-28	http://m.raleighaa.com/additional.php?id=77	20:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	77	Step/Traditions	2017-04-28	http://m.raleighaa.com/additional.php?id=77	20:00:00	Tuesday	B	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
Louisburg Spanish AA Meeting	78	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=78	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Louisburg Spanish AA Meeting	78	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=78	20:00:00	Tuesday	ST	937 N Main St	Louisburg	NC	27549	US	36.1143280000000	-78.2956760000	Louisburg	America/New_York	Our Lady of the Rosary Roman Catholic Church	\N
First Things First Meeting	79	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=79	12:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
First Things First Meeting	79	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=79	12:00:00	Tuesday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	80	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=80	12:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	80	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=80	12:00:00	Tuesday	SP	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Tuesday - Thursday-Nooners	81	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=81	12:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Tuesday - Thursday-Nooners	81	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=81	12:00:00	Tuesday	ST	718 Hillsborough St	Raleigh	NC	27603	US	35.7811560000000	-78.6499870000	Raleigh	America/New_York	Hillyer Memorial	\N
Place of Miracles Meeting	82	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=82	12:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Place of Miracles Meeting	82	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=82	12:30:00	Tuesday	ST	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Happy Hour Meeting	83	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=83	17:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Happy Hour Meeting	83	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=83	17:30:00	Tuesday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	84	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=84	17:45:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	84	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=84	17:45:00	Tuesday	SP	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Big Book Group	85	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=85	19:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Big Book Group	85	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=85	19:00:00	Tuesday	B	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Big Book Group	85	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=85	19:00:00	Tuesday	BE	2723 Clark Ave	Raleigh	NC	27607	US	35.7908970000000	-78.6727350000	Raleigh	America/New_York	Holy Trinity Lutheran Church	\N
Big Book Group	86	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=86	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Big Book Group	86	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=86	20:00:00	Tuesday	ST	2723 Clark Ave	Raleigh	NC	27607	US	35.7908970000000	-78.6727350000	Raleigh	America/New_York	Holy Trinity Lutheran Church	\N
Crabtree Discussion Group	87	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=87	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Crabtree Discussion Group	87	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=87	20:00:00	Tuesday	ST	1901 Ridge Rd	Raleigh	NC	27607	US	35.8154410000000	-78.6823610000	Raleigh	America/New_York	Highland United Methodist Church	\N
Downtown Group	88	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=88	20:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Downtown Group	88	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=88	20:00:00	Tuesday	ST	124 S Salisbury St	Raleigh	NC	27601	US	35.7787100000000	-78.6404120000	Raleigh	America/New_York	124 S Salisbury St	Meeting Downstairs
Light Group	90	Closed Step/Closed Big Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=90	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Light Group	90	Closed Step/Closed Big Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=90	20:00:00	Tuesday	B	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851210000000	-78.6609260000	Raleigh	America/New_York	Pullen Memorial Baptist Church	\N
Green Level Group	92	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=92	20:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Green Level Group	92	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=92	20:00:00	Thursday	SP	8509 Green Level Church Rd	Cary	NC	27519	US	35.7823950000000	-78.9042310000	Cary	America/New_York	Green Level Baptist Church	\N
Living Now	95	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=95	18:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	95	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=95	18:00:00	Thursday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	95	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=95	18:00:00	Thursday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Cary 12 Step Group	153	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=153	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cary 12 Step Group	153	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=153	20:00:00	Monday	B	221 Union St	Cary	NC	27511	US	35.7799947426702	-78.7915205956	Cary	America/New_York	St Pauls Episcopal Church	\N
Clayton Big Book	98	LAST THURSDAY OF THE MONTH IS OPEN SPEAKER   	2017-04-28	http://m.raleighaa.com/additional.php?id=98	19:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Clayton Big Book	98	LAST THURSDAY OF THE MONTH IS OPEN SPEAKER   	2017-04-28	http://m.raleighaa.com/additional.php?id=98	19:00:00	Thursday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Clayton Big Book	98	LAST THURSDAY OF THE MONTH IS OPEN SPEAKER   	2017-04-28	http://m.raleighaa.com/additional.php?id=98	19:00:00	Thursday	X	121 E Second St	Clayton	NC	27520	US	35.7802140000000	-78.3687000000	Clayton	America/New_York	Horne Memorial United Methodist Church	\N
Henderson Central Group	100	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=100	12:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	100	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=100	12:00:00	Thursday	ST	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
Henderson Central Group	101	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=101	20:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	101	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=101	20:00:00	Thursday	ST	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
Early Risers Group	102	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=102	10:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Early Risers Group	102	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=102	10:30:00	Thursday	ST	2312 Milburnie Rd	Raleigh	NC	27610	US	35.7890830000000	-78.6050570000	Raleigh	America/New_York	Longview Methodist Church	\N
First Things First Meeting	103	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=103	12:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
First Things First Meeting	103	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=103	12:00:00	Thursday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	104	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=104	12:00:00	Thursday	O	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Tuesday - Thursday-Nooners	105	Last Thursday - Traditions	2017-04-28	http://m.raleighaa.com/additional.php?id=105	12:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Tuesday - Thursday-Nooners	105	Last Thursday - Traditions	2017-04-28	http://m.raleighaa.com/additional.php?id=105	12:00:00	Thursday	ST	718 Hillsborough St	Raleigh	NC	27603	US	35.7811560000000	-78.6499870000	Raleigh	America/New_York	Hillyer Memorial	\N
Place of Miracles Meeting	106	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=106	12:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Place of Miracles Meeting	106	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=106	12:30:00	Thursday	ST	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Happy Hour Meeting	107	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=107	17:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	129	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=129	12:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Happy Hour Meeting	107	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=107	17:30:00	Thursday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	108	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=108	17:45:00	Thursday	O	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Big Book Group	109	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=109	20:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Big Book Group	109	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=109	20:00:00	Thursday	D	2723 Clark Ave	Raleigh	NC	27607	US	35.7908970000000	-78.6727350000	Raleigh	America/New_York	Holy Trinity Lutheran Church	\N
Fairview Group	110	Every 4th Thursday of the month is an Open Speaker meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=110	20:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fairview Group	110	Every 4th Thursday of the month is an Open Speaker meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=110	20:00:00	Thursday	B	2011 Ridge Rd	Raleigh	NC	27607	US	35.8180150000000	-78.6807700000	Raleigh	America/New_York	Ridge Road Baptist Church	\N
Gratitude Study Group	111	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=111	19:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gratitude Study Group	111	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=111	19:00:00	Thursday	SP	99 N Salisbury St	Raleigh	NC	27603	US	35.7810590000000	-78.6408490000	Raleigh	America/New_York	First Baptist Church	Enter the building from the covered walkway in the parking lot that borders McDowell Street. This parking lot can only be accessed from Hillsborough or Edenton Streets.
Principles Group	112	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=112	20:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Principles Group	112	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=112	20:00:00	Thursday	D	1725 North New Hope Rd	Raleigh	NC	27604	US	35.8041490000000	-78.5652200000	Raleigh	America/New_York	St Mark`s Episcopal Church	\N
Twelve & Twelve Group	113	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=113	20:00:00	Thursday	C	4921 Six Forks Rd	Raleigh	NC	27609	US	35.8488680000000	-78.6450030000	Raleigh	America/New_York	Hudson Memorial Presbyterian Church	\N
Wake Forest Group	114	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=114	20:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wake Forest Group	114	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=114	20:00:00	Thursday	ST	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
Willow Springs Group	115	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=115	20:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Willow Springs Group	115	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=115	20:00:00	Thursday	D	402 N Main St	Fuquay-Varina	NC	\N	US	35.5890800000000	-78.7986240000	Fuquay-Varina	America/New_York	First United Methodist Church	\N
Mitchell Mill Group	116	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=116	20:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mitchell Mill Group	116	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=116	20:00:00	Thursday	X	2405 Wait Ave	Wake Forest	NC	27587	US	35.9620860000000	-78.4491270000	Wake Forest	America/New_York	Grace Assembly	Handicap Accessible
Living Now	118	<br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=118	12:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	118	<br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=118	12:00:00	Thursday	SP	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Young People`s Group	222	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=222	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Young People`s Group	222	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=222	20:00:00	Friday	ST	7304 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8845520000000	-78.6258650000	Raleigh	America/New_York	St Phillip Lutheran Church	\N
Apex Group	121	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=121	20:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Apex Group	121	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=121	20:00:00	Friday	ST	408 E Williams St	Apex	NC	27539	US	35.7251290000000	-78.8491250000	Apex	America/New_York	Apex Masonic Lodge	\N
Living Now	122	Beginners Meeting Steps 1,2 & 3	2017-04-28	http://m.raleighaa.com/additional.php?id=122	12:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	122	Beginners Meeting Steps 1,2 & 3	2017-04-28	http://m.raleighaa.com/additional.php?id=122	12:00:00	Friday	BE	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
North East Street Group	221	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=221	20:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North East Street Group	221	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=221	20:00:00	Wednesday	ST	10 North East St	Raleigh	NC	27601	US	35.7802600000000	-78.6322540000	Raleigh	America/New_York	Emmaus House	\N
Greenwood Forest Group	124	Beginners Meeting <br><br />Two 10 minute speakers then sobriety count-up<br><br />to give newcomers the opportunity to share.	2017-04-28	http://m.raleighaa.com/additional.php?id=124	18:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	124	Beginners Meeting <br><br />Two 10 minute speakers then sobriety count-up<br><br />to give newcomers the opportunity to share.	2017-04-28	http://m.raleighaa.com/additional.php?id=124	18:00:00	Friday	D	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	124	Beginners Meeting <br><br />Two 10 minute speakers then sobriety count-up<br><br />to give newcomers the opportunity to share.	2017-04-28	http://m.raleighaa.com/additional.php?id=124	18:00:00	Friday	X	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	124	Beginners Meeting <br><br />Two 10 minute speakers then sobriety count-up<br><br />to give newcomers the opportunity to share.	2017-04-28	http://m.raleighaa.com/additional.php?id=124	18:00:00	Friday	BE	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Henderson Central Group	126	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=126	12:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	126	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=126	12:00:00	Friday	SP	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
New Start Group	127	This meeting is NOT handicapped accessible.	2017-04-28	http://m.raleighaa.com/additional.php?id=127	17:30:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
New Start Group	127	This meeting is NOT handicapped accessible.	2017-04-28	http://m.raleighaa.com/additional.php?id=127	17:30:00	Friday	ST	210 S Chestnut St	Henderson	NC	27536	US	36.3282640000000	-78.4057900000	Henderson	America/New_York	Church of the Holy Innocents	\N
Knightdale Group	128	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=128	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Knightdale Group	128	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=128	20:00:00	Friday	ST	7071 Forestville Rd	Knightdale	NC	27545	US	35.8101830000000	-78.4868220000	Knightdale	America/New_York	Knightdale United Methodist Church	Church Annex
Gateway Group	129	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=129	12:00:00	Friday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	129	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=129	12:00:00	Friday	BE	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Place of Miracles Meeting	130	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=130	12:30:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Place of Miracles Meeting	130	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=130	12:30:00	Friday	ST	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Oasis Group	131	Friday we have both a discussion and beginners/newcomers meeting (both closed meetings)	2017-04-28	http://m.raleighaa.com/additional.php?id=131	12:30:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Oasis Group	131	Friday we have both a discussion and beginners/newcomers meeting (both closed meetings)	2017-04-28	http://m.raleighaa.com/additional.php?id=131	12:30:00	Friday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Oasis Group	131	Friday we have both a discussion and beginners/newcomers meeting (both closed meetings)	2017-04-28	http://m.raleighaa.com/additional.php?id=131	12:30:00	Friday	BE	7506 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8865920000000	-78.6266300000	Raleigh	America/New_York	St Andrews Presbyterian Church	\N
Happy Hour Meeting	132	Last Friday-OS	2017-04-28	http://m.raleighaa.com/additional.php?id=132	17:30:00	Friday	O	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	133	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=133	17:45:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	133	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=133	17:45:00	Friday	ST	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Brickhouse Group	134	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=134	20:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Brickhouse Group	134	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=134	20:00:00	Friday	SP	7509 Leadmine Rd	Raleigh	NC	27615	US	35.8843214868599	-78.6607146263	Raleigh	America/New_York	Greystone Baptist Church	Corner of Leadmine and Sawmill Rd
Downtown Group	135	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=135	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Downtown Group	135	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=135	20:00:00	Friday	D	124 S Salisbury St	Raleigh	NC	27601	US	35.7787100000000	-78.6404120000	Raleigh	America/New_York	124 S Salisbury St	Meeting Downstairs
Hayes Barton Group	136	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=136	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hayes Barton Group	136	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=136	20:00:00	Friday	D	1704 Oberlin Rd	Raleigh	NC	27608	US	35.8066350000000	-78.6555090000	Raleigh	America/New_York	White Memorial Presbyterian Church	\N
Westminster Group	137	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=137	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Westminster Group	137	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=137	20:00:00	Friday	D	301 East Whitaker Mill Rd	Raleigh	NC	27608	US	35.8078773435826	-78.6376905441	Raleigh	America/New_York	Westminister Presbyterian Church	\N
Promises Of A New Beginning Group	238	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=238	20:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Promises Of A New Beginning Group	238	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=238	20:00:00	Friday	B	201 Methodist Dr	Garner	NC	27529	US	35.7101409101237	-78.6203634739	Garner	America/New_York	Garner United Methodist Church	at Hwy 70
Warren County Group	139	Open Step / Closed Big Book Study<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=139	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Warren County Group	139	Open Step / Closed Big Book Study<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=139	20:00:00	Friday	ST	210 N Main St	Warrenton	NC	27589	US	36.4002810000000	-78.1539410000	Warrenton	America/New_York	Wesley Memorial Methodist Church	\N
Zebulon Group	140	2nd Friday-OS	2017-04-28	http://m.raleighaa.com/additional.php?id=140	20:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Zebulon Group	140	2nd Friday-OS	2017-04-28	http://m.raleighaa.com/additional.php?id=140	20:00:00	Friday	ST	118 W Sycamore St	Zebulon	NC	27597	US	35.8233830000000	-78.3159950000	Zebulon	America/New_York	Zebulon Methodist Church	Corner of Gannon Ave. & Church St.
Apex Group	155	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=155	20:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Apex Group	155	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=155	20:00:00	Wednesday	SP	408 E Williams St	Apex	NC	27539	US	35.7251290000000	-78.8491250000	Apex	America/New_York	Apex Masonic Lodge	\N
Living Now	156	<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=156	12:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	156	<br><br /><br><br />Some participants break out into a BEGINNERS MEETING. 	2017-04-28	http://m.raleighaa.com/additional.php?id=156	12:00:00	Wednesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Living Now	157	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=157	18:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	157	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=157	18:00:00	Wednesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Sobriety First	252	Literature Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=252	19:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sobriety First	252	Literature Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=252	19:00:00	Thursday	GR	725 N Boylan Ave	Raleigh	NC	27605	US	35.7897425818507	-78.6488592625	Raleigh	America/New_York	Jenkins Memorial Methodist Church	between Peace &amp; Wills Forest
One Day at a Time	160	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=160	20:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
One Day at a Time	160	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=160	20:00:00	Wednesday	ST	600 Walnut St	Cary	NC	27511	US	35.7744590000000	-78.7678800000	Cary	America/New_York	Christ the King Lutheran Church	\N
Fuquay-Varina Group	162	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=162	20:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fuquay-Varina Group	162	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=162	20:00:00	Wednesday	ST	401 S Main St	Fuquay-Varina	NC	27526	US	35.5803060000000	-78.7997720000	Fuquay-Varina	America/New_York	Fellowship Bible Church	\N
Henderson Central Group	163	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=163	12:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	163	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=163	12:00:00	Wednesday	ST	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
Louisburg 12 Step Group	165	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=165	20:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Light Group	203	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=203	20:00:00	Saturday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Louisburg 12 Step Group	165	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=165	20:00:00	Wednesday	B	302 North Main St	Louisburg	NC	27549	US	36.1013870000000	-78.2991500000	Louisburg	America/New_York	Louisburg Baptist Church	\N
Early Risers Group	166	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=166	10:30:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Early Risers Group	166	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=166	10:30:00	Wednesday	ST	2312 Milburnie Rd	Raleigh	NC	27610	US	35.7890830000000	-78.6050570000	Raleigh	America/New_York	Longview Methodist Church	\N
First Things First Meeting	167	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=167	12:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
First Things First Meeting	167	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=167	12:00:00	Wednesday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	168	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=168	12:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	168	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=168	12:00:00	Wednesday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	168	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=168	12:00:00	Wednesday	BE	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Oasis Group	169	Wednesday is a Speaker meeting (open)	2017-04-28	http://m.raleighaa.com/additional.php?id=169	12:30:00	Wednesday	O	7506 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8865920000000	-78.6266300000	Raleigh	America/New_York	St Andrews Presbyterian Church	\N
Place of Miracles Meeting	170	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=170	12:30:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Place of Miracles Meeting	170	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=170	12:30:00	Wednesday	ST	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Happy Hour Meeting	171	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=171	17:30:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Happy Hour Meeting	171	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=171	17:30:00	Wednesday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	172	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=172	17:45:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	172	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=172	17:45:00	Wednesday	ST	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
2001 Group	173	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=173	18:30:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2001 Group	173	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=173	18:30:00	Wednesday	D	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Men`s Meeting	174	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=174	19:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Men`s Meeting	174	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=174	19:00:00	Wednesday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Longview Group	175	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=175	20:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Longview Group	175	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=175	20:00:00	Wednesday	ST	1950 New Bern Ave	Raleigh	NC	27610	US	35.7786780000000	-78.6086960000	Raleigh	America/New_York	Milner Memorial Presbyterian Church	\N
North Raleigh Group	176	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=176	20:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North Raleigh Group	176	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=176	20:00:00	Wednesday	SP	10301 Old Creedmoor Rd	Raleigh	NC	27613	US	35.9323030000000	-78.6929390000	Raleigh	America/New_York	Soapstone Chapel	\N
Spanish Meeting	177	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=177	20:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Spanish Meeting	177	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=177	20:00:00	Wednesday	ST	5801 Falls of Neuse Rd	Raleigh	NC	27609	US	35.8590610000000	-78.6182020000	Raleigh	America/New_York	St Raphael Catholic Church	\N
Valley Group	178	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=178	20:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Valley Group	178	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=178	20:00:00	Wednesday	ST	5101 Oak Park Rd	Raleigh	NC	27612	US	35.8542135521102	-78.7038767338	Raleigh	America/New_York	St Giles Presbyterian Church	\N
Progress Not Perfection	179	Last Wed. Open Speaker	2017-04-28	http://m.raleighaa.com/additional.php?id=179	20:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Progress Not Perfection	179	Last Wed. Open Speaker	2017-04-28	http://m.raleighaa.com/additional.php?id=179	20:00:00	Wednesday	SP	2718 Overbrook Dr	Raleigh	NC	27608	US	35.8194070000000	-78.6343250000	Raleigh	America/New_York	Our Lady of Lourdes Church	Meets in Fallon Center, Rm. 202
RTP Lunch Bunch	180	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=180	12:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	180	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=180	12:00:00	Wednesday	SP	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
Wendell Group	182	Last Wed Open Speaker	2017-04-28	http://m.raleighaa.com/additional.php?id=182	20:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wendell Group	182	Last Wed Open Speaker	2017-04-28	http://m.raleighaa.com/additional.php?id=182	20:00:00	Wednesday	ST	125 Selma Rd	Wendell	NC	27591	US	35.7788440000000	-78.3615390000	Wendell	America/New_York	Covenant Presbyterian Church	\N
Morning Meditation Group	183	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=183	06:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morning Meditation Group	183	Open 11th Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=183	06:30:00	Saturday	ST	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Gateway Group	513	Beginners literature meeting. 	2017-04-28	http://m.raleighaa.com/additional.php?id=513	09:15:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	513	Beginners literature meeting. 	2017-04-28	http://m.raleighaa.com/additional.php?id=513	09:15:00	Saturday	BE	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Change Agents	506	1st Sunday of each month is Open Speaker<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=506	19:30:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Life of New Beginnings	281	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=281	07:30:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Change Agents	506	1st Sunday of each month is Open Speaker<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=506	19:30:00	Sunday	ST	300 Powell Drive	Raleigh	NC	27606	US	35.7881630000000	-78.7134870000	Raleigh	America/New_York	Westover Methodist Church	\N
Youngsville Group	185	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=185	20:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Youngsville Group	185	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=185	20:00:00	Saturday	D	315 E Main St	Youngsville	NC	27596	US	36.0255160000000	-78.4712890000	Youngsville	America/New_York	Youngsville Baptist Church	\N
Living Now	186	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=186	08:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	186	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=186	08:00:00	Saturday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Cary Young People`s Group	188	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=188	20:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cary Young People`s Group	188	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=188	20:00:00	Saturday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cary Young People`s Group	188	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=188	20:00:00	Saturday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Garner Big Book Group	189	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=189	20:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Garner Big Book Group	189	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=189	20:00:00	Saturday	D	4926 Fayetteville Rd	Garner	NC	27529	US	35.7132060000000	-78.6579930000	Garner	America/New_York	Ernest Myatt Presbyterian Church	Meeting in Fellowship hall
Henderson Central Group	190	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=190	20:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henderson Central Group	190	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=190	20:00:00	Saturday	ST	4815 Hwy 39	Gillburg	NC	27537	US	36.2765360000000	-78.3683297000	Gillburg	America/New_York	Gillburg United Methodist Church	\N
Keep It Simple Meeting	191	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=191	08:00:00	Saturday	O	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Gateway Group	192	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=192	08:00:00	Saturday	O	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Saturday Morning Woman`s Group	193	Speaker Last Sat. of Month	2017-04-28	http://m.raleighaa.com/additional.php?id=193	09:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Saturday Morning Woman`s Group	193	Speaker Last Sat. of Month	2017-04-28	http://m.raleighaa.com/additional.php?id=193	09:30:00	Saturday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
North Raleigh Group	194	Men`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=194	10:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North Raleigh Group	194	Men`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=194	10:00:00	Saturday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North Raleigh Group	194	Men`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=194	10:00:00	Saturday	M	10301 Old Creedmoor Rd	Raleigh	NC	27613	US	35.9323030000000	-78.6929390000	Raleigh	America/New_York	Soapstone Chapel	\N
Gateway Group	195	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=195	10:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	195	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=195	10:30:00	Saturday	SP	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Place of Miracles Meeting	196	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=196	12:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Place of Miracles Meeting	196	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=196	12:30:00	Saturday	ST	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Weekender`s Meeting	197	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=197	17:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Weekender`s Meeting	197	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=197	17:00:00	Saturday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
2001 Group	198	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=198	18:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2001 Group	198	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=198	18:30:00	Saturday	D	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Cameron Village Candlelight Group	199	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=199	20:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cameron Village Candlelight Group	199	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=199	20:00:00	Saturday	ST	2501 Clark Ave	Raleigh	NC	27607	US	35.7894580000000	-78.6676730000	Raleigh	America/New_York	Fairmont United Methodist Church	\N
Crabtree Discussion Group	200	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=200	20:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Crabtree Discussion Group	200	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=200	20:00:00	Saturday	ST	1901 Ridge Rd	Raleigh	NC	27607	US	35.8154410000000	-78.6823610000	Raleigh	America/New_York	Highland United Methodist Church	\N
Primary Purpose Group of Raleigh	544	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=544	19:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Primary Purpose Group of Raleigh	544	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=544	19:30:00	Tuesday	SP	6339 Glenwood Ave	Raleigh	NC	27612	US	35.8569340000000	-78.7064730000	Raleigh	America/New_York	Providence Baptist Church	Glenwood Ave/Pleasant Valley Road
Hills Group	202	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=202	19:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hills Group	202	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=202	19:00:00	Saturday	ST	4523 Six Forks Rd	Raleigh	NC	27609	US	35.8418040000000	-78.6440000000	Raleigh	America/New_York	St Timothy`s Episcopal Church	\N
Light Group	203	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=203	20:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AA	509	Meeting Format is Chairperson`s Choice	2017-04-28	http://m.raleighaa.com/additional.php?id=509	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AA	509	Meeting Format is Chairperson`s Choice	2017-04-28	http://m.raleighaa.com/additional.php?id=509	20:00:00	Friday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Light Group	203	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=203	20:00:00	Saturday	LGBTQ	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851210000000	-78.6609260000	Raleigh	America/New_York	Pullen Memorial Baptist Church	\N
St. Ambrose Group	205	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=205	20:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
St. Ambrose Group	205	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=205	20:00:00	Saturday	B	813 Darby Dr	Raleigh	NC	27610	US	35.7565210000000	-78.6250360000	Raleigh	America/New_York	St Ambrose Episcopal Church	\N
Unity Group	206	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=206	20:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
TGIF	236	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=236	11:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Unity Group	206	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=206	20:00:00	Saturday	ST	4301 Louisburg Rd	Raleigh	NC	27604	US	35.8430740000000	-78.5747400000	Raleigh	America/New_York	New Hope Baptist Church	\N
North Raleigh Group	209	Open Meditation Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=209	19:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North Raleigh Group	209	Open Meditation Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=209	19:00:00	Tuesday	B	10301 Old Creedmoor Rd	Raleigh	NC	27613	US	35.9323030000000	-78.6929390000	Raleigh	America/New_York	Soapstone Chapel	\N
Log Cabin Group	210	Closed Big Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=210	19:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Log Cabin Group	210	Closed Big Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=210	19:00:00	Thursday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Log Cabin Group	210	Closed Big Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=210	19:00:00	Thursday	X	200 High Meadow Dr	Cary	NC	27511	US	35.7618971474579	-78.7848579884	Cary	America/New_York	Kirks of Kildare Presbyterian Auxillary Bldg	\N
Living Now	211	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=211	18:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	211	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=211	18:00:00	Saturday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Living Now	211	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=211	18:00:00	Saturday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Log Cabin Group	213	Closed Big Book / Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=213	19:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Log Cabin Group	213	Closed Big Book / Step Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=213	19:00:00	Friday	SP	200 High Meadow Dr	Cary	NC	27511	US	35.7618971474579	-78.7848579884	Cary	America/New_York	Kirks of Kildare Presbyterian Auxillary Bldg	\N
On Awakening	534	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=534	06:15:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
On Awakening	534	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=534	06:15:00	Monday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
On Awakening	535	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=535	06:15:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
On Awakening	535	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=535	06:15:00	Tuesday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Wake Forest Group	215	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=215	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wake Forest Group	215	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=215	20:00:00	Tuesday	ST	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
One Noon at a Time Group	217	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=217	12:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
One Noon at a Time Group	217	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=217	12:00:00	Monday	SP	4216 Kildaire Farm Rd	Apex	NC	\N	US	35.6858144043428	-78.7973195314	Apex	America/New_York	Triangle Community Church	\N
One Noon at a Time Group	218	Closed Step / Tradition Study	2017-04-28	http://m.raleighaa.com/additional.php?id=218	12:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
One Noon at a Time Group	218	Closed Step / Tradition Study	2017-04-28	http://m.raleighaa.com/additional.php?id=218	12:00:00	Wednesday	B	4216 Kildaire Farm Rd	Apex	NC	\N	US	35.6858144043428	-78.7973195314	Apex	America/New_York	Triangle Community Church	\N
One Noon at a Time Group	219	Closed Literature meetings, except the Second and Last Friday of each month, which are Open Speaker meetings.	2017-04-28	http://m.raleighaa.com/additional.php?id=219	12:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
One Noon at a Time Group	219	Closed Literature meetings, except the Second and Last Friday of each month, which are Open Speaker meetings.	2017-04-28	http://m.raleighaa.com/additional.php?id=219	12:00:00	Friday	GR	4216 Kildaire Farm Rd	Apex	NC	\N	US	35.6858144043428	-78.7973195314	Apex	America/New_York	Triangle Community Church	\N
Discovery Group	223	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=223	20:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Discovery Group	223	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=223	20:00:00	Friday	ST	2501 Clark Ave	Raleigh	NC	27607	US	35.7894580000000	-78.6676730000	Raleigh	America/New_York	Fairmont United Methodist Church	\N
Twelve & Twelve Group	229	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=229	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Twelve & Twelve Group	229	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=229	20:00:00	Tuesday	ST	4921 Six Forks Rd	Raleigh	NC	27609	US	35.8488680000000	-78.6450030000	Raleigh	America/New_York	Hudson Memorial Presbyterian Church	\N
Sunday Morning Spiritual Meeting	230	Sunday Morning Spiritual Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=230	09:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sunday Morning Spiritual Meeting	230	Sunday Morning Spiritual Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=230	09:00:00	Sunday	ST	230 US Hwy 70 W 	Garner	NC	27529	US	35.7015510000000	-78.5998000000	Garner	America/New_York	Garner Women`s Club	\N
New Inner City Group	231	Last Thursday Open Speaker	2017-04-28	http://m.raleighaa.com/additional.php?id=231	20:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
New Inner City Group	231	Last Thursday Open Speaker	2017-04-28	http://m.raleighaa.com/additional.php?id=231	20:00:00	Thursday	B	718 Hillsborough St	Raleigh	NC	27603	US	35.7811560000000	-78.6499870000	Raleigh	America/New_York	Hillyer Memorial	\N
Wednesday Womens Group	232	ENTER BUILDING THROUGH LEFT SIDE DOOR WHEN FACING CHURCH.	2017-04-28	http://m.raleighaa.com/additional.php?id=232	17:45:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wednesday Womens Group	232	ENTER BUILDING THROUGH LEFT SIDE DOOR WHEN FACING CHURCH.	2017-04-28	http://m.raleighaa.com/additional.php?id=232	17:45:00	Wednesday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wednesday Womens Group	232	ENTER BUILDING THROUGH LEFT SIDE DOOR WHEN FACING CHURCH.	2017-04-28	http://m.raleighaa.com/additional.php?id=232	17:45:00	Wednesday	W	2501 Clark Ave	Raleigh	NC	27607	US	35.7894580000000	-78.6676730000	Raleigh	America/New_York	Fairmont United Methodist Church	\N
Back to Basics	233	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=233	20:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Back to Basics	233	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=233	20:00:00	Thursday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Back to Basics	233	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=233	20:00:00	Thursday	BE	4801 Six Forks Rd	Raleigh	NC	27609	US	35.8450950000000	-78.6448040000	Raleigh	America/New_York	St Mark`s United Methodist Church	turn off Six Forks onto Northbrook Dr. (by the Daycare center), then immediately right onto Terry Street for easy parking
Principles Group	235	<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=235	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Principles Group	235	<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=235	20:00:00	Tuesday	ST	1725 North New Hope Rd	Raleigh	NC	27604	US	35.8041490000000	-78.5652200000	Raleigh	America/New_York	St Mark`s Episcopal Church	\N
TGIF	236	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=236	11:00:00	Friday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Lambda Group	237	Closed Gay Men`s Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=237	17:30:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lambda Group	237	Closed Gay Men`s Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=237	17:30:00	Sunday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lambda Group	237	Closed Gay Men`s Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=237	17:30:00	Sunday	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lambda Group	237	Closed Gay Men`s Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=237	17:30:00	Sunday	LGBTQ	301 East Whitaker Mill Rd	Raleigh	NC	27608	US	35.8078773435826	-78.6376905441	Raleigh	America/New_York	Westminister Presbyterian Church	\N
Sobriety at School	242	Close Discussion Grapevine Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=242	17:30:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sobriety at School	242	Close Discussion Grapevine Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=242	17:30:00	Tuesday	ST	2212 Gardner Hall	Raleigh	NC	\N	US	0.0000000000000	0.0000000000	Raleigh	America/New_York	Gardner Hall, NCSU	\N
Last Call	243	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=243	22:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	243	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=243	22:00:00	Monday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	243	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=243	22:00:00	Monday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Acceptance Group	246	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=246	12:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Acceptance Group	246	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=246	12:00:00	Saturday	ST	520 W Holding Ave	Wake Forest	NC	27587	US	35.9742600000000	-78.5250820000	Wake Forest	America/New_York	St Catherine of Siena Parish	\N
Garner Big Book Group	247	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=247	20:00:00	Thursday	C	4926 Fayetteville Rd	Garner	NC	27529	US	35.7132060000000	-78.6579930000	Garner	America/New_York	Ernest Myatt Presbyterian Church	Meeting in Fellowship hall
Design For Living	248	Beginners Meeting<br><br><br />Speaker 1st and last Wednesday<br><br />Discussion 2nd and 3rd Wednesday	2017-04-28	http://m.raleighaa.com/additional.php?id=248	19:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Design For Living	248	Beginners Meeting<br><br><br />Speaker 1st and last Wednesday<br><br />Discussion 2nd and 3rd Wednesday	2017-04-28	http://m.raleighaa.com/additional.php?id=248	19:00:00	Wednesday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Design For Living	248	Beginners Meeting<br><br><br />Speaker 1st and last Wednesday<br><br />Discussion 2nd and 3rd Wednesday	2017-04-28	http://m.raleighaa.com/additional.php?id=248	19:00:00	Wednesday	BE	201 Methodist Dr	Garner	NC	27529	US	35.7101409101237	-78.6203634739	Garner	America/New_York	Garner United Methodist Church	at Hwy 70
Holly Springs Group	249	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=249	19:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Holly Springs Group	249	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=249	19:00:00	Saturday	ST	4216 Kildaire Farm Rd	Apex	NC	\N	US	35.6858144043428	-78.7973195314	Apex	America/New_York	Triangle Community Church	\N
RTP Lunch Bunch	250	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=250	12:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	250	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=250	12:00:00	Thursday	ST	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
Westminster Group	251	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=251	20:00:00	Tuesday	C	301 East Whitaker Mill Rd	Raleigh	NC	27608	US	35.8078773435826	-78.6376905441	Raleigh	America/New_York	Westminister Presbyterian Church	\N
Healing Hour	253	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=253	12:30:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Healing Hour	253	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=253	12:30:00	Sunday	ST	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
Healing Hour	254	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=254	12:30:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Healing Hour	254	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=254	12:30:00	Monday	ST	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
Healing Hour	255	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=255	12:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Healing Hour	255	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=255	12:30:00	Tuesday	ST	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
Healing Hour	256	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=256	12:30:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AA	239	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=239	18:30:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AA	240	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=240	18:30:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AA	240	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=240	18:30:00	Wednesday	SP	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
AA	241	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=241	18:30:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AA	241	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=241	18:30:00	Saturday	SP	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
Healing Hour	256	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=256	12:30:00	Wednesday	ST	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
Healing Hour	257	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=257	12:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Healing Hour	257	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=257	12:30:00	Thursday	ST	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
Healing Hour	258	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=258	12:30:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Healing Hour	258	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=258	12:30:00	Friday	ST	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
Healing Hour	259	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=259	12:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Healing Hour	259	Open Discussion open to Men and Women	2017-04-28	http://m.raleighaa.com/additional.php?id=259	12:30:00	Saturday	ST	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
Holly Springs Group	262	Beginner`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=262	20:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Holly Springs Group	262	Beginner`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=262	20:00:00	Monday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Holly Springs Group	262	Beginner`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=262	20:00:00	Monday	BE	4216 Kildaire Farm Rd	Apex	NC	\N	US	35.6858144043428	-78.7973195314	Apex	America/New_York	Triangle Community Church	\N
North Raleigh Big Book Study Group	268	<br /><br />LAST THURSDAY OF THE MONTH IS OPEN DISCUSSION	2017-04-28	http://m.raleighaa.com/additional.php?id=268	19:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North Raleigh Big Book Study Group	268	<br /><br />LAST THURSDAY OF THE MONTH IS OPEN DISCUSSION	2017-04-28	http://m.raleighaa.com/additional.php?id=268	19:00:00	Thursday	SP	5801 Falls of Neuse Rd	Raleigh	NC	27609	US	35.8590610000000	-78.6182020000	Raleigh	America/New_York	St Raphael Catholic Church	\N
What Now?	269	Step 11 Discussion<BR><BR><br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=269	06:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
What Now?	269	Step 11 Discussion<BR><BR><br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=269	06:30:00	Saturday	ST	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000	-78.6764520000	Raleigh	America/New_York	Community United Church of Christ	\N
What Now?	270	Step 11 Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=270	06:30:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
What Now?	270	Step 11 Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=270	06:30:00	Monday	ST	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000	-78.6764520000	Raleigh	America/New_York	Community United Church of Christ	\N
What Now?	271	Step 11 Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=271	06:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
What Now?	271	Step 11 Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=271	06:30:00	Tuesday	ST	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000	-78.6764520000	Raleigh	America/New_York	Community United Church of Christ	\N
What Now?	272	Step 11 Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=272	06:30:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
What Now?	272	Step 11 Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=272	06:30:00	Wednesday	ST	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000	-78.6764520000	Raleigh	America/New_York	Community United Church of Christ	\N
What Now?	273	Step 11 Discussion<BR><BR><br /><br />NOTE NEW LOCATION EFFECTIVE MAY 21, 2012!<BR><BR>	2017-04-28	http://m.raleighaa.com/additional.php?id=273	06:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
What Now?	273	Step 11 Discussion<BR><BR><br /><br />NOTE NEW LOCATION EFFECTIVE MAY 21, 2012!<BR><BR>	2017-04-28	http://m.raleighaa.com/additional.php?id=273	06:30:00	Thursday	ST	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000	-78.6764520000	Raleigh	America/New_York	Community United Church of Christ	\N
What Now?	274	Step 11 Discussion <BR><BR><br /><br />NOTE NEW LOCATION EFFECTIVE MAY 21, 2012!<BR><BR>	2017-04-28	http://m.raleighaa.com/additional.php?id=274	06:30:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
What Now?	274	Step 11 Discussion <BR><BR><br /><br />NOTE NEW LOCATION EFFECTIVE MAY 21, 2012!<BR><BR>	2017-04-28	http://m.raleighaa.com/additional.php?id=274	06:30:00	Friday	ST	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000	-78.6764520000	Raleigh	America/New_York	Community United Church of Christ	\N
No Reservations	275	Last Tuesday of the month is an OPEN Speaker Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=275	18:45:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
No Reservations	275	Last Tuesday of the month is an OPEN Speaker Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=275	18:45:00	Tuesday	SP	6175 Old Jenks Road	Apex	NC	\N	US	35.7545100000000	-78.8524480000	Apex	America/New_York	Hope Chapel	\N
Upper Room	276	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=276	12:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Upper Room	276	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=276	12:00:00	Friday	ST	211 E Six Forks Rd, Suite 117	Raleigh	NC	27609	US	35.7720960000000	-78.6386145000	Raleigh	America/New_York	211 E Six Forks Rd	\N
Last Call	277	Open Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=277	22:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	277	Open Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=277	22:00:00	Thursday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	277	Open Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=277	22:00:00	Thursday	X	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	277	Open Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=277	22:00:00	Thursday	BE	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Last Call	503	<br> Eleventh Step Candlelight Discussion <br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=503	22:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	503	<br> Eleventh Step Candlelight Discussion <br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=503	22:00:00	Friday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	503	<br> Eleventh Step Candlelight Discussion <br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=503	22:00:00	Friday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Gateway Group	280	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=280	12:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gateway Group	280	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=280	12:00:00	Saturday	ST	6767 Hillsborough St	Raleigh	NC	27606	US	35.7881499362616	-78.7458854914	Raleigh	America/New_York	Ephesus Baptist Church	\N
Life of New Beginnings	281	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=281	07:30:00	Sunday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Unity Group	283	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=283	20:00:00	Tuesday	O	4301 Louisburg Rd	Raleigh	NC	27604	US	35.8430740000000	-78.5747400000	Raleigh	America/New_York	New Hope Baptist Church	\N
Wake Forest Nooners	284	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=284	12:00:00	Tuesday	C	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
Wake Forest Nooners	285	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=285	12:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wake Forest Nooners	285	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=285	12:00:00	Thursday	SP	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
Turning Point Group	328	Open Beginner/Literature meeting<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=328	18:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Saturday Night Live	286	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=286	19:00:00	Saturday	C	7304 Falls of the Neuse Rd	Raleigh	NC	27615	US	35.8845520000000	-78.6258650000	Raleigh	America/New_York	St Phillip Lutheran Church	\N
Sisters of Sobriety	287	NOTE MEETING LOCATION CHANGE AS OF JANUARY 2012	2017-04-28	http://m.raleighaa.com/additional.php?id=287	16:00:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sisters of Sobriety	287	NOTE MEETING LOCATION CHANGE AS OF JANUARY 2012	2017-04-28	http://m.raleighaa.com/additional.php?id=287	16:00:00	Sunday	ST	111 Lee Ct	Clayton	NC	27520	US	35.6386210000000	-78.4759050000	Clayton	America/New_York	Grace Episcopal	\N
Fuquay-Varina Group	291	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=291	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fuquay-Varina Group	291	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=291	20:00:00	Friday	D	401 S Main St	Fuquay-Varina	NC	27526	US	35.5803060000000	-78.7997720000	Fuquay-Varina	America/New_York	Fellowship Bible Church	\N
Greenwood Forest Group	306	BEGINNING SEPTEMBER 2012 THIS IS A BIG BOOK STUDY.	2017-04-28	http://m.raleighaa.com/additional.php?id=306	18:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenwood Forest Group	306	BEGINNING SEPTEMBER 2012 THIS IS A BIG BOOK STUDY.	2017-04-28	http://m.raleighaa.com/additional.php?id=306	18:00:00	Tuesday	SP	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
\N	295	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=295	17:30:00	Thursday	C	527 Plaza Circle	Garner	NC	27529	US	35.7043900000000	-78.6116240000	Garner	America/New_York	Sovereign King Church	\N
Experience Strength And Hope	296	First Sunday each month is an open speaker meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=296	19:00:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Experience Strength And Hope	296	First Sunday each month is an open speaker meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=296	19:00:00	Sunday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Experience Strength And Hope	296	First Sunday each month is an open speaker meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=296	19:00:00	Sunday	X	9713 Old Stage Rd	Garner	NC	27529	US	35.6419610000000	-78.6699530000	Garner	America/New_York	Triangle Baptist Church	\N
Let Go and Let God	303	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=303	17:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Let Go and Let God	303	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=303	17:30:00	Tuesday	ST	1308 Hwy 70 West	Garner	NC	27529	US	35.7112642000000	-78.6141709000	Garner	America/New_York	Capital Church	\N
Womens Steps to Serenity	305	<br /><br /> 	2017-04-28	http://m.raleighaa.com/additional.php?id=305	19:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Womens Steps to Serenity	305	<br /><br /> 	2017-04-28	http://m.raleighaa.com/additional.php?id=305	19:00:00	Monday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Womens Steps to Serenity	305	<br /><br /> 	2017-04-28	http://m.raleighaa.com/additional.php?id=305	19:00:00	Monday	W	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Womens Steps to Serenity	305	<br /><br /> 	2017-04-28	http://m.raleighaa.com/additional.php?id=305	19:00:00	Monday	X	600 Walnut St	Cary	NC	27511	US	35.7744590000000	-78.7678800000	Cary	America/New_York	Christ the King Lutheran Church	\N
Prodigious Results Big Book Study	528	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=528	18:45:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Prodigious Results Big Book Study	528	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=528	18:45:00	Wednesday	SP	136 East Morgan Street	Raleigh	NC	27601	US	35.7793310000000	-78.6368120000	Raleigh	America/New_York	Church on Morgan	\N
Daily Reprieve	312	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=312	07:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Daily Reprieve	312	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=312	07:00:00	Monday	LIT	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000	-78.7383550000	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
Daily Reprieve	313	Meditation and Discussion<br /><BR><BR><br /><br />* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=313	07:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Daily Reprieve	313	Meditation and Discussion<br /><BR><BR><br /><br />* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=313	07:00:00	Friday	LIT	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000	-78.7383550000	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
Acceptance Group	314	<BR><br />Open Speaker/Discussion<br><br><br />Last wednesday of the month is `Chair Person`s Choice.`	2017-04-28	http://m.raleighaa.com/additional.php?id=314	19:30:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Acceptance Group	314	<BR><br />Open Speaker/Discussion<br><br><br />Last wednesday of the month is `Chair Person`s Choice.`	2017-04-28	http://m.raleighaa.com/additional.php?id=314	19:30:00	Wednesday	ST	520 W Holding Ave	Wake Forest	NC	27587	US	35.9742600000000	-78.5250820000	Wake Forest	America/New_York	St Catherine of Siena Parish	\N
A New Freedom	489	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=489	12:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
A New Freedom	489	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=489	12:00:00	Monday	SP	1308 Hwy 70 West	Garner	NC	27529	US	35.7112642000000	-78.6141709000	Garner	America/New_York	Capital Church	\N
Agnostics and Others	514	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=514	19:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Agnostics and Others	514	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=514	19:00:00	Monday	ST	3313 Wade Ave	Raleigh	NC	27607	US	35.8005380000000	-78.6797800000	Raleigh	America/New_York	Unitarian Universalist Fellowship of Raleigh	\N
Women`s Step Meeting	320	Last Tuesday of the month is a Tradition meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=320	18:30:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Women`s Step Meeting	320	Last Tuesday of the month is a Tradition meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=320	18:30:00	Tuesday	B	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Women`s Step Meeting	320	Last Tuesday of the month is a Tradition meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=320	18:30:00	Tuesday	W	7509 Leadmine Rd	Raleigh	NC	27615	US	35.8843214868599	-78.6607146263	Raleigh	America/New_York	Greystone Baptist Church	Corner of Leadmine and Sawmill Rd
Keep It Simple Group	321	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=321	12:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Keep It Simple Group	321	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=321	12:30:00	Saturday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Keep It Simple Group	321	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=321	12:30:00	Saturday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Holly Springs Group	323	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=323	20:00:00	Thursday	C	4216 Kildaire Farm Rd	Apex	NC	\N	US	35.6858144043428	-78.7973195314	Apex	America/New_York	Triangle Community Church	\N
Turning Point Group	328	Open Beginner/Literature meeting<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=328	18:30:00	Tuesday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Turning Point Group	328	Open Beginner/Literature meeting<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=328	18:30:00	Tuesday	BE	3000 New Bern Ave	Raleigh	NC	27610	US	35.7852560000000	-78.5883390000	Raleigh	America/New_York	Wake Medical Center	Temporary Location: C Tower, 6th Floor Conference Room - until 1/31/17<br /><br><br><br />5th Floor conference room C tower
West Cary Noon	329	Handicap access / No Smoking<BR><br />Meeting is in Room 206<br /><BR><br />Follow signs to Fellowship Hall	2017-04-28	http://m.raleighaa.com/additional.php?id=329	12:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
West Cary Noon	329	Handicap access / No Smoking<BR><br />Meeting is in Room 206<br /><BR><br />Follow signs to Fellowship Hall	2017-04-28	http://m.raleighaa.com/additional.php?id=329	12:00:00	Thursday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
West Cary Noon	329	Handicap access / No Smoking<BR><br />Meeting is in Room 206<br /><BR><br />Follow signs to Fellowship Hall	2017-04-28	http://m.raleighaa.com/additional.php?id=329	12:00:00	Thursday	X	200 West High St	Cary	NC	27513	US	35.7677310000000	-78.8319370000	Cary	America/New_York	Westwood Baptist Church	No Smoking on church campus
Epiphany Group	334	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=334	12:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Epiphany Group	334	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=334	12:30:00	Tuesday	ST	1800 Glenwood Ave	Raleigh	NC	27608	US	35.8044470000000	-78.6456380000	Raleigh	America/New_York	Hayes Barton Baptist Church	\N
Epiphany Group	335	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=335	12:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Epiphany Group	335	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=335	12:30:00	Thursday	ST	1800 Glenwood Ave	Raleigh	NC	27608	US	35.8044470000000	-78.6456380000	Raleigh	America/New_York	Hayes Barton Baptist Church	\N
North Raleigh Group	337	Beginner`s Meeting - Living Sober Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=337	08:30:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North Raleigh Group	337	Beginner`s Meeting - Living Sober Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=337	08:30:00	Saturday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North Raleigh Group	337	Beginner`s Meeting - Living Sober Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=337	08:30:00	Saturday	BE	10301 Old Creedmoor Rd	Raleigh	NC	27613	US	35.9323030000000	-78.6929390000	Raleigh	America/New_York	Soapstone Chapel	\N
Together We Live	543	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=543	19:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Together We Live	543	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=543	19:00:00	Monday	ST	407 East End Ave	Littleton	NC	27850	US	36.4384250000000	-77.9001280000	Littleton	America/New_York	Johns center	\N
Hope of Fuquay	341	Spiritual	2017-04-28	http://m.raleighaa.com/additional.php?id=341	08:15:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hope of Fuquay	341	Spiritual	2017-04-28	http://m.raleighaa.com/additional.php?id=341	08:15:00	Sunday	ST	6400 Johnson Pond Rd	Fuquay-Varina	NC	27526	US	35.6098600000000	-78.7567200000	Fuquay-Varina	America/New_York	American Legion Lodge # 116	\N
Chapter 7 Group (Western Wake Med Center)	343	Open Beginners/Literature meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=343	18:30:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Chapter 7 Group (Western Wake Med Center)	343	Open Beginners/Literature meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=343	18:30:00	Wednesday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Chapter 7 Group (Western Wake Med Center)	343	Open Beginners/Literature meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=343	18:30:00	Wednesday	BE	1900 Kildaire Farm Rd	Cary	NC	27518	US	35.7401820000000	-78.7815440000	Cary	America/New_York	Cary Wake Medical Center	The meeting is held in the Points West Conference Room #2 in the Points West Cafeteria.<br />
RTP Lunch Bunch	344	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=344	12:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	344	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=344	12:00:00	Tuesday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	344	Beginners Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=344	12:00:00	Tuesday	BE	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
RTP Lunch Bunch	345	Meditation Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=345	12:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	345	Meditation Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=345	12:00:00	Friday	ST	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
There Is A Solution	346	<br><br><br /><br /><br />1st Thursday - Open Speaker <br><br /><br><br />2nd Thursday - Closed Step Study <br><br /><br><br />3rd Thursday - Closed Literature Study <br><br /><br><br />4th Thursday - Closed Tradition Study <br><br /><br><br />5th Thursday - Open Workshop <br><br /><br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=346	19:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
There Is A Solution	346	<br><br><br /><br /><br />1st Thursday - Open Speaker <br><br /><br><br />2nd Thursday - Closed Step Study <br><br /><br><br />3rd Thursday - Closed Literature Study <br><br /><br><br />4th Thursday - Closed Tradition Study <br><br /><br><br />5th Thursday - Open Workshop <br><br /><br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=346	19:00:00	Thursday	ST	108 Avent Ferry Rd	Holly Springs	NC	27540	US	35.6509110000000	-78.8350540000	Holly Springs	America/New_York	Holly Springs United Methodist Church	\N
Turning Point Group	348	Open Beginner Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=348	18:30:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Turning Point Group	348	Open Beginner Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=348	18:30:00	Friday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sharing the Promises	466	<br><br />Literature Discussion Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=466	19:00:00	Thursday	GR	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Turning Point Group	348	Open Beginner Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=348	18:30:00	Friday	BE	3000 New Bern Ave	Raleigh	NC	27610	US	35.7852560000000	-78.5883390000	Raleigh	America/New_York	Wake Medical Center	Temporary Location: C Tower, 6th Floor Conference Room - until 1/31/17<br /><br><br><br />5th Floor conference room C tower
11th Step at 11 Group	349	Topic will always be the 11th Step and includes periods of silent meditation.	2017-04-28	http://m.raleighaa.com/additional.php?id=349	11:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11th Step at 11 Group	349	Topic will always be the 11th Step and includes periods of silent meditation.	2017-04-28	http://m.raleighaa.com/additional.php?id=349	11:00:00	Sunday	ST	1251 Goode St	Raleigh	NC	27603	US	35.7641693659824	-78.6586976051	Raleigh	America/New_York	The Healing Place of Wake County	Off Lake Wheeler Rd. near Farmer`s Market
Volver a Empezar	355	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=355	20:00:00	Wednesday	C	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410380000000	-78.5747150000	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	\N
Volver a Empezar	357	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=357	20:00:00	Thursday	C	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410380000000	-78.5747150000	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	\N
Pickles in the Park Meeting	352	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=352	09:00:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Pickles in the Park Meeting	352	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=352	09:00:00	Sunday	ST	1800 N Harrison Ave	Cary	NC	27513	US	35.8333150000000	-78.7604410000	Cary	America/New_York	Umstead Park - Reedy Creek Entrance	\N
Volver a Empezar	353	Meets 8:00pm until 10:00pm	2017-04-28	http://m.raleighaa.com/additional.php?id=353	20:00:00	Monday	C	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410380000000	-78.5747150000	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	\N
Volver a Empezar	354	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=354	20:00:00	Tuesday	C	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410380000000	-78.5747150000	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	\N
Volver a Empezar	358	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=358	20:00:00	Friday	C	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410380000000	-78.5747150000	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	\N
Volver a Empezar	359	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=359	20:00:00	Saturday	C	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410380000000	-78.5747150000	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	\N
Volver a Empezar	360	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=360	20:00:00	Sunday	C	4427 St. James Church Rd	Raleigh	NC	27604	US	35.8410380000000	-78.5747150000	Raleigh	America/New_York	SPANISH - Volver a Empezar Meets Here	\N
Transmitelo	361	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=361	20:00:00	Sunday	C	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047450000000	-78.6577300000	Raleigh	America/New_York	St John`s Baptist Church	\N
Transmitelo	362	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=362	20:00:00	Monday	C	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047450000000	-78.6577300000	Raleigh	America/New_York	St John`s Baptist Church	\N
Transmitelo	363	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=363	20:00:00	Tuesday	C	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047450000000	-78.6577300000	Raleigh	America/New_York	St John`s Baptist Church	\N
Transmitelo	364	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=364	20:00:00	Wednesday	C	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047450000000	-78.6577300000	Raleigh	America/New_York	St John`s Baptist Church	\N
Transmitelo	365	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=365	20:00:00	Thursday	C	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047450000000	-78.6577300000	Raleigh	America/New_York	St John`s Baptist Church	\N
Transmitelo	366	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=366	20:00:00	Friday	C	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047450000000	-78.6577300000	Raleigh	America/New_York	St John`s Baptist Church	\N
Transmitelo	367	Meets 8:00 pm - 10:00 pm	2017-04-28	http://m.raleighaa.com/additional.php?id=367	20:00:00	Saturday	C	1615 Oberlin Rd	Raleigh	NC	27605	US	35.8047450000000	-78.6577300000	Raleigh	America/New_York	St John`s Baptist Church	\N
Divina Providencia	375	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=375	20:00:00	Thursday	C	608 Lions Club Rd	Wendell	NC	27591	US	35.7809870000000	-78.3697213000	Wendell	America/New_York	St Eugene`s Catholic Church	\N
Let Go and Let God	379	Women`s Big Book / Step Study<br>Men`s Big Book / Step Study<br>(Separate Meetings)	2017-04-28	http://m.raleighaa.com/additional.php?id=379	17:30:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Let Go and Let God	379	Women`s Big Book / Step Study<br>Men`s Big Book / Step Study<br>(Separate Meetings)	2017-04-28	http://m.raleighaa.com/additional.php?id=379	17:30:00	Thursday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Let Go and Let God	379	Women`s Big Book / Step Study<br>Men`s Big Book / Step Study<br>(Separate Meetings)	2017-04-28	http://m.raleighaa.com/additional.php?id=379	17:30:00	Thursday	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Let Go and Let God	379	Women`s Big Book / Step Study<br>Men`s Big Book / Step Study<br>(Separate Meetings)	2017-04-28	http://m.raleighaa.com/additional.php?id=379	17:30:00	Thursday	W	1308 Hwy 70 West	Garner	NC	27529	US	35.7112642000000	-78.6141709000	Garner	America/New_York	Capital Church	\N
Rule #62 Group	380	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=380	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Rule #62 Group	380	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=380	20:00:00	Tuesday	SP	602 East Mason St	Franklinton	NC	27525	US	36.1057910000000	-78.4482200000	Franklinton	America/New_York	Franklinton Senior Center	\N
One Chapter at a Time	385	WE WILL READ A WHOLE CHAPTER EACH WEEK WHICH WILL ENABLE US TO GO THROUGH THE FIRST 164 PAGES FOUR TIMES A YEAR.<br /><br><br /><br><br />BYOB (Bring your own Book)	2017-04-28	http://m.raleighaa.com/additional.php?id=385	08:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
One Chapter at a Time	385	WE WILL READ A WHOLE CHAPTER EACH WEEK WHICH WILL ENABLE US TO GO THROUGH THE FIRST 164 PAGES FOUR TIMES A YEAR.<br /><br><br /><br><br />BYOB (Bring your own Book)	2017-04-28	http://m.raleighaa.com/additional.php?id=385	08:00:00	Saturday	SP	820 East Williams St	Apex	NC	27502	US	35.7227800000000	-78.8454070000	Apex	America/New_York	New Horizons Fellowship	\N
Arch to Freedom Group	383	<br><br /><br />Twelve & Twelve Study<br /><br /><br><br><br /><br />Business Meeting: Third Monday after regular meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=383	18:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Arch to Freedom Group	383	<br><br /><br />Twelve & Twelve Study<br /><br /><br><br><br /><br />Business Meeting: Third Monday after regular meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=383	18:00:00	Monday	B	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Pass It On	485	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=485	11:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Arch to Freedom Group	383	<br><br /><br />Twelve & Twelve Study<br /><br /><br><br><br /><br />Business Meeting: Third Monday after regular meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=383	18:00:00	Monday	X	100 S Hughes St	Apex	NC	27502	US	35.7292910000000	-78.8500530000	Apex	America/New_York	Apex United Methodist Church - Fellowship Hall #2	\N
We Are Not All There Group	491	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=491	12:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
We Are Not All There Group	491	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=491	12:00:00	Monday	ST	896 Gulley Drive	Clayton	NC	27520	US	35.6659970000000	-78.4974550000	Clayton	America/New_York	\N	\N
We Are Not All There Group	493	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=493	12:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
We Are Not All There Group	493	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=493	12:00:00	Tuesday	ST	896 Gulley Drive	Clayton	NC	27520	US	35.6659970000000	-78.4974550000	Clayton	America/New_York	\N	\N
We Are Not All There Group	494	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=494	12:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
We Are Not All There Group	494	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=494	12:00:00	Wednesday	ST	896 Gulley Drive	Clayton	NC	27520	US	35.6659970000000	-78.4974550000	Clayton	America/New_York	\N	\N
We Are Not All There Group	495	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=495	12:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
We Are Not All There Group	495	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=495	12:00:00	Thursday	ST	896 Gulley Drive	Clayton	NC	27520	US	35.6659970000000	-78.4974550000	Clayton	America/New_York	\N	\N
Be Still ... Mid-Morning Meditation Group	386	<BR><br />11th Step Meeting with 15 minute meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=386	09:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	386	<BR><br />11th Step Meeting with 15 minute meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=386	09:00:00	Monday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	386	<BR><br />11th Step Meeting with 15 minute meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=386	09:00:00	Monday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Daily Reprieve	469	Meditation and Discussion.<br /><br><br />* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=469	07:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Daily Reprieve	469	Meditation and Discussion.<br /><br><br />* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=469	07:00:00	Thursday	LIT	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000	-78.7383550000	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
Be Still ... Mid-Morning Meditation Group	387	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=387	09:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	387	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=387	09:00:00	Tuesday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	387	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=387	09:00:00	Tuesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Be Still ... Mid-Morning Meditation Group	388	<br /><br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=388	09:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	388	<br /><br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=388	09:00:00	Wednesday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	388	<br /><br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=388	09:00:00	Wednesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Be Still ... Mid-Morning Meditation Group	389	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=389	09:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	389	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=389	09:00:00	Thursday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	389	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=389	09:00:00	Thursday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Be Still ... Mid-Morning Meditation Group	390	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=390	09:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	390	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=390	09:00:00	Friday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	390	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=390	09:00:00	Friday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Be Still ... Mid-Morning Meditation Group	468	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=468	11:30:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	468	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=468	11:30:00	Sunday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	468	<br />11th Step Meeting with 15 minutes of meditation after a reading.	2017-04-28	http://m.raleighaa.com/additional.php?id=468	11:30:00	Sunday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
BY THE BOOK	394	<br><br />Plentiful parking available. <br><br /><br />Please use the church parking lot off of Whittaker Mill Road. Park in the rear of the lot and enter through the back door. The meeting is on the second floor, at the end of the hall.	2017-04-28	http://m.raleighaa.com/additional.php?id=394	12:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Pass It On	485	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=485	11:00:00	Saturday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
BY THE BOOK	394	<br><br />Plentiful parking available. <br><br /><br />Please use the church parking lot off of Whittaker Mill Road. Park in the rear of the lot and enter through the back door. The meeting is on the second floor, at the end of the hall.	2017-04-28	http://m.raleighaa.com/additional.php?id=394	12:00:00	Monday	SP	1800 Glenwood Ave	Raleigh	NC	27608	US	35.8044470000000	-78.6456380000	Raleigh	America/New_York	Hayes Barton Baptist Church	\N
YRAC Big Book	391	Open Big Book Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=391	20:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
YRAC Big Book	391	Open Big Book Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=391	20:00:00	Tuesday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
YRAC Big Book	391	Open Big Book Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=391	20:00:00	Tuesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
YRAC Big Book	392	Closed Literature Study.	2017-04-28	http://m.raleighaa.com/additional.php?id=392	20:00:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
YRAC Big Book	392	Closed Literature Study.	2017-04-28	http://m.raleighaa.com/additional.php?id=392	20:00:00	Friday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
YRAC Big Book	392	Closed Literature Study.	2017-04-28	http://m.raleighaa.com/additional.php?id=392	20:00:00	Friday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Spiritual Awakenings	401	<br /><br /><B>NOTE: THIS GROUP MEETS ONLY ON THE THIRD SATURDAY OF EACH MONTH</B><br />                         <BR> <BR><br />3 MEETINGS EVERY THIRD SATURDAY<br /><BR><br />  8:00 AM: GOD AS WE UNDERSTAND HIM<BR><br />  9:15 AM: SPIRITUAL RECOVERY PRINCIPLES OF THE BEATITUDES<BR><br />10:30 AM : SPIRITUAL AWAKENINGS<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=401	08:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Spiritual Awakenings	401	<br /><br /><B>NOTE: THIS GROUP MEETS ONLY ON THE THIRD SATURDAY OF EACH MONTH</B><br />                         <BR> <BR><br />3 MEETINGS EVERY THIRD SATURDAY<br /><BR><br />  8:00 AM: GOD AS WE UNDERSTAND HIM<BR><br />  9:15 AM: SPIRITUAL RECOVERY PRINCIPLES OF THE BEATITUDES<BR><br />10:30 AM : SPIRITUAL AWAKENINGS<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=401	08:00:00	Saturday	ST	4801 Six Forks Rd	Raleigh	NC	27609	US	35.8450950000000	-78.6448040000	Raleigh	America/New_York	St Mark`s United Methodist Church	turn off Six Forks onto Northbrook Dr. (by the Daycare center), then immediately right onto Terry Street for easy parking
Cary Young People`s Group	403	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=403	20:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cary Young People`s Group	403	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=403	20:00:00	Wednesday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cary Young People`s Group	403	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=403	20:00:00	Wednesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Primary Purpose Group of Clayton	402	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=402	08:00:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Primary Purpose Group of Clayton	402	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=402	08:00:00	Saturday	SP	896 Gulley Drive	Clayton	NC	27520	US	35.6659970000000	-78.4974550000	Clayton	America/New_York	\N	\N
Courage to Change Group	440	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=440	18:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Courage to Change Group	440	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=440	18:30:00	Thursday	ST	1401 Boyer St	Raleigh	NC	27610	US	35.7812590000000	-78.6173720000	Raleigh	America/New_York	Grace AME Zion Church	\N
Basics for Beginners	441	BEGINNERS MEETING<br><br />Focus on Steps 1, 2 & 3 and Sponsorship<br /><br><br />Note: Entry from Lakeside Drive ONLY	2017-04-28	http://m.raleighaa.com/additional.php?id=441	18:30:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Basics for Beginners	441	BEGINNERS MEETING<br><br />Focus on Steps 1, 2 & 3 and Sponsorship<br /><br><br />Note: Entry from Lakeside Drive ONLY	2017-04-28	http://m.raleighaa.com/additional.php?id=441	18:30:00	Friday	ST	1101 Vandora Springs Rd	Garner	NC	\N	US	35.7035030000000	-78.6266320000	Garner	America/New_York	St. Christopher`s Episcopal Church 	\N
Spring Forest Recovery Group	404	1st,  3rd & 5th Sundays - Speaker Meeting<br /><br />2nd & 4th Sundays - Big Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=404	19:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Spring Forest Recovery Group	404	1st,  3rd & 5th Sundays - Speaker Meeting<br /><br />2nd & 4th Sundays - Big Book Study	2017-04-28	http://m.raleighaa.com/additional.php?id=404	19:00:00	Sunday	D	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
Spring Forest Recovery Group	405	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=405	19:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Spring Forest Recovery Group	405	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=405	19:00:00	Tuesday	ST	4015 Spring Forest Rd	Raleigh	NC	27616	US	35.7795897000000	-78.6381787000	Raleigh	America/New_York	Camel 24 Fellowship	\N
RTP Lunch Bunch	445	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=445	17:30:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	445	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=445	17:30:00	Tuesday	ST	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
Channel of Serenity	412	Meeting is located on the 2nd floor. There is no handicapped access.	2017-04-28	http://m.raleighaa.com/additional.php?id=412	19:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Channel of Serenity	412	Meeting is located on the 2nd floor. There is no handicapped access.	2017-04-28	http://m.raleighaa.com/additional.php?id=412	19:00:00	Thursday	ST	8701 Falls of Neuse Rd	Raleigh	NC	27615	US	35.8964360000000	-78.6127410000	Raleigh	America/New_York	North Raleigh Church of Christ	\N
There Is A Solution	406	BEGINNER`S MEETING	2017-04-28	http://m.raleighaa.com/additional.php?id=406	19:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
There Is A Solution	406	BEGINNER`S MEETING	2017-04-28	http://m.raleighaa.com/additional.php?id=406	19:00:00	Tuesday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
There Is A Solution	406	BEGINNER`S MEETING	2017-04-28	http://m.raleighaa.com/additional.php?id=406	19:00:00	Tuesday	BE	108 Avent Ferry Rd	Holly Springs	NC	27540	US	35.6509110000000	-78.8350540000	Holly Springs	America/New_York	Holly Springs United Methodist Church	\N
We Agnostics	413	Room 347 <br> <br><br />Open Big Book/ 12&12 Study<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=413	20:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
We Agnostics	413	Room 347 <br> <br><br />Open Big Book/ 12&12 Study<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=413	20:00:00	Friday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
We Agnostics	413	Room 347 <br> <br><br />Open Big Book/ 12&12 Study<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=413	20:00:00	Friday	X	3948 Browning Place - Room 347	Raleigh	NC	27609	US	35.8307980000000	-78.6310190000	Raleigh	America/New_York	Intergroup Office	The Tri-County Intergroup Office of Alcoholics Anonymous
A New Freedom	451	Meeting is child-friendly, but no child care is provided.	2017-04-28	http://m.raleighaa.com/additional.php?id=451	12:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Original Recipe Big Book Step Study	415	Meeting is 6:30 pm - 8:00 pm <br><br><br /><br />Special Directions: At the entrance closest to the Kildaire Farms Rd<br />side there is an area with Picnic tables, the door to our meeting is<br />at the end of that patio. <br><br><br />(We have a small sign with our our AA BBSS displayed on the Door)<br /><br><BR><br />Bring Your Own Book!<br /><br /><br><br><br />Business Meeting is the last Tuesday of the Month. <br><br />Contact ID:Chuck1152@hotmail.com<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=415	18:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
A New Freedom	452	Meeting is child-friendly, but no child care is provided.	2017-04-28	http://m.raleighaa.com/additional.php?id=452	12:00:00	Friday	ST	1308 Hwy 70 W	Garner	NC	27529	US	35.7208750000000	-78.6405180000	Garner	America/New_York	The Capital Church	\N
Sisters of Sobriety of Wake Forest	453	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=453	18:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Original Recipe Big Book Step Study	415	Meeting is 6:30 pm - 8:00 pm <br><br><br /><br />Special Directions: At the entrance closest to the Kildaire Farms Rd<br />side there is an area with Picnic tables, the door to our meeting is<br />at the end of that patio. <br><br><br />(We have a small sign with our our AA BBSS displayed on the Door)<br /><br><BR><br />Bring Your Own Book!<br /><br /><br><br><br />Business Meeting is the last Tuesday of the Month. <br><br />Contact ID:Chuck1152@hotmail.com<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=415	18:30:00	Tuesday	SP	110 SE Maynard Rd	Cary	NC	27511	US	35.7704370000000	-78.7807830000	Cary	America/New_York	Greenwood Forest Baptist Church	\N
By God`s Grace	416	Open Discussion <br><br />1st & 3rd Thursday Big Book Step Study	2017-04-28	http://m.raleighaa.com/additional.php?id=416	19:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
By God`s Grace	416	Open Discussion <br><br />1st & 3rd Thursday Big Book Step Study	2017-04-28	http://m.raleighaa.com/additional.php?id=416	19:00:00	Thursday	ST	608 Lions Club Rd	Wendell	NC	27591	US	35.7809870000000	-78.3697213000	Wendell	America/New_York	St Eugene`s Catholic Church	\N
RTP Lunch Bunch	446	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=446	17:30:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	446	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=446	17:30:00	Thursday	ST	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
Road to Recovery	418	Enter Left Side of Church.	2017-04-28	http://m.raleighaa.com/additional.php?id=418	20:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Road to Recovery	418	Enter Left Side of Church.	2017-04-28	http://m.raleighaa.com/additional.php?id=418	20:00:00	Thursday	SP	9433 Ten-Ten Rd	Garner	NC	27603	US	35.6530120000000	-78.6601630000	Garner	America/New_York	Holland`s United Methodist Church	\N
11th Step Prayer and Meditation Meeting	425	PLEASE COME EARLY, DOORS LOCK AT 8:30 AM.<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=425	08:30:00	Saturday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11th Step Prayer and Meditation Meeting	425	PLEASE COME EARLY, DOORS LOCK AT 8:30 AM.<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=425	08:30:00	Saturday	ST	1800 Glenwood Ave	Raleigh	NC	27608	US	35.8044470000000	-78.6456380000	Raleigh	America/New_York	Hayes Barton Baptist Church	\N
First 164	483	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=483	18:30:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
First 164	483	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=483	18:30:00	Monday	SP	1128 South Main Street	Fuquay-Varina	NC	\N	US	0.0000000000000	0.0000000000	Fuquay-Varina	America/New_York	Trinity Episcopal Church	\N
Way of Life Group	429	<br><br />Meeting is downstairs<BR><BR><br />1st Monday of the month is a BBS<br><br />2nd Monday of the month is a workshop<br><br />3rd Monday of the month is a beginners <br><br />4th Monday of the month is a step study <br><br />5th Monday of the month is a speaker meeting <br>	2017-04-28	http://m.raleighaa.com/additional.php?id=429	20:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Way of Life Group	429	<br><br />Meeting is downstairs<BR><BR><br />1st Monday of the month is a BBS<br><br />2nd Monday of the month is a workshop<br><br />3rd Monday of the month is a beginners <br><br />4th Monday of the month is a step study <br><br />5th Monday of the month is a speaker meeting <br>	2017-04-28	http://m.raleighaa.com/additional.php?id=429	20:00:00	Monday	ST	124 S Salisbury St	Raleigh	NC	27601	US	35.7787100000000	-78.6404120000	Raleigh	America/New_York	124 S Salisbury St	Meeting Downstairs
Log Cabin Group	497	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=497	19:00:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Log Cabin Group	497	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=497	19:00:00	Wednesday	X	200 High Meadow Dr	Cary	NC	27511	US	35.7618971474579	-78.7848579884	Cary	America/New_York	Kirks of Kildare Presbyterian Auxillary Bldg	\N
On Awakening	537	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=537	06:15:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
On Awakening	537	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=537	06:15:00	Thursday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
On Awakening	538	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=538	06:15:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
On Awakening	538	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=538	06:15:00	Friday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Light Group	436	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=436	20:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Light Group	436	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=436	20:00:00	Thursday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Light Group	436	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=436	20:00:00	Thursday	LGBTQ	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851210000000	-78.6609260000	Raleigh	America/New_York	Pullen Memorial Baptist Church	\N
Honeycutt Road Group	438	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=438	19:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Honeycutt Road Group	438	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=438	19:30:00	Tuesday	ST	8501 Honeycutt Rd	Raleigh	NC	27615	US	35.8967750000000	-78.6234940000	Raleigh	America/New_York	North Raleigh United Methodist Church	\N
RTP Lunch Bunch	533	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=533	06:45:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	533	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=533	06:45:00	Friday	ST	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
Stepping Stones	442	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=442	18:30:00	Friday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Stepping Stones	442	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=442	18:30:00	Friday	SP	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
AAnything It Takes	525	 <br><br>Many paths to spirituality.<br><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=525	08:30:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AAnything It Takes	525	 <br><br>Many paths to spirituality.<br><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=525	08:30:00	Saturday	ST	814 Dixie Trail	Raleigh	NC	27607	US	35.8008290000000	-78.6764520000	Raleigh	America/New_York	Community United Church of Christ	\N
The Steps We Took	447	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=447	12:00:00	Tuesday	C	408 E Williams St	Apex	NC	27539	US	35.7251290000000	-78.8491250000	Apex	America/New_York	Apex Masonic Lodge	\N
Sharing the Promises	466	<br><br />Literature Discussion Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=466	19:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
A New Freedom	451	Meeting is child-friendly, but no child care is provided.	2017-04-28	http://m.raleighaa.com/additional.php?id=451	12:00:00	Wednesday	ST	1308 Hwy 70 W	Garner	NC	27529	US	35.7208750000000	-78.6405180000	Garner	America/New_York	The Capital Church	\N
A New Freedom	452	Meeting is child-friendly, but no child care is provided.	2017-04-28	http://m.raleighaa.com/additional.php?id=452	12:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sisters of Sobriety of Wake Forest	453	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=453	18:00:00	Wednesday	ST	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
Cary Big Book Study Group	454	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=454	20:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cary Big Book Study Group	454	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=454	20:00:00	Monday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cary Big Book Study Group	454	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=454	20:00:00	Monday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
RTP Lunch Bunch	531	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=531	06:45:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	531	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=531	06:45:00	Monday	ST	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
RTP Lunch Bunch	532	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=532	06:45:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
RTP Lunch Bunch	532	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=532	06:45:00	Wednesday	ST	5117 S Miami Blvd	Durham	NC	27703	US	35.9940329000000	-78.8986190000	Durham	America/New_York	Cedar Forks Baptist Church	\N
Tuesday Women`s Meeting	455	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=455	18:30:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Tuesday Women`s Meeting	455	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=455	18:30:00	Tuesday	ST	608 Lions Club Rd	Wendell	NC	27591	US	35.7809870000000	-78.3697213000	Wendell	America/New_York	St Eugene`s Catholic Church	\N
Bunners	456	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=456	19:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bunners	456	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=456	19:00:00	Monday	ST	200 Main St	Bunn	NC	27508	US	35.9629840000000	-78.2558680000	Bunn	America/New_York	Bunn United Methodist Church, Fellowship Hall	\N
Wake Forest Nooners	459	First Monday of each month is a Speaker and Discussion meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=459	12:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wake Forest Nooners	459	First Monday of each month is a Speaker and Discussion meeting.	2017-04-28	http://m.raleighaa.com/additional.php?id=459	12:00:00	Monday	ST	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
Wake Forest Nooners	460	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=460	12:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wake Forest Nooners	460	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=460	12:00:00	Wednesday	ST	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
Wake Forest Nooners	461	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=461	12:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wake Forest Nooners	461	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=461	12:00:00	Friday	ST	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
Easy Does It	516	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=516	17:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Easy Does It	516	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=516	17:00:00	Sunday	GR	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Jumping Off Place	465	<br><br />Literature discussion meeting<br><br />Speaker 4th Tuesday of the month<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=465	19:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Jumping Off Place	465	<br><br />Literature discussion meeting<br><br />Speaker 4th Tuesday of the month<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=465	19:00:00	Tuesday	ST	4523 Six Forks Rd	Raleigh	NC	27609	US	35.8418040000000	-78.6440000000	Raleigh	America/New_York	St Timothy`s Episcopal Church	\N
Path to Serenity	529	BECAME A WOMEN`S MEETING SEPTEMBER 2016	2017-04-28	http://m.raleighaa.com/additional.php?id=529	09:00:00	Thursday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Path to Serenity	529	BECAME A WOMEN`S MEETING SEPTEMBER 2016	2017-04-28	http://m.raleighaa.com/additional.php?id=529	09:00:00	Thursday	B	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Path to Serenity	529	BECAME A WOMEN`S MEETING SEPTEMBER 2016	2017-04-28	http://m.raleighaa.com/additional.php?id=529	09:00:00	Thursday	W	1200 North Salem Street	Apex	NC	27502	US	35.7447390000000	-78.8501340000	Apex	America/New_York	Peak United Methodist Church	\N
36 Chambers	473	Open Step Speaker lead followed by Discussion, Young Peoples Meeting<br><br><br />    1st/3rd Step Speaker, then Discussion <br><br />    2nd/4th Discussion with leader<br><br />    5th Friday is Chair`s Choice<br>	2017-04-28	http://m.raleighaa.com/additional.php?id=473	18:30:00	Friday	O	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851210000000	-78.6609260000	Raleigh	America/New_York	Pullen Memorial Baptist Church	\N
Soul Food Step Study	474	<br><br />        First Tuesday is Traditions	2017-04-28	http://m.raleighaa.com/additional.php?id=474	19:00:00	Tuesday	C	121 Hillsborough Street	Raleigh	NC	27603	US	35.7799860000000	-78.6412660000	Raleigh	America/New_York	The Shepherds Table, Church of the Good Shepherd	\N
Another 24 Hours	476	<BR><br />New Closed Meeting of AA<br /><br><br />Originally published in 1952, Twelve Steps and<br />Twelve Traditions, the 12 and 12, is used by A.A.<br />members and groups around the world. It lays<br />out the principles by which A.A. members<br />recover and by which the fellowship functions.<br />The basic text clarifies the Steps which<br />constitute the A.A. way of life and the Traditions,<br />by which A.A. maintains its unity.<br /><br><br><br />&#8227; First Friday: Step Reading <BR><br />&#8227; Second Friday: Step Reading <BR><br />&#8227; Third Friday: Speaker about Step<BR><br />&#8227; Fourth Friday: Tradition Meeting<BR><br /><BR><BR><br />Parking: Parking is in the back or at the<br />Doubletree. <BR><BR><br />Please use the front door.<br><br />The meeting is held in the Parlor.<br /><BR><BR><br />For more info email anothertwentyfour@gmail.com	2017-04-28	http://m.raleighaa.com/additional.php?id=476	12:00:00	Friday	C	1801 Hillsborough St	Raleigh	NC	27605	US	35.7851210000000	-78.6609260000	Raleigh	America/New_York	Pullen Memorial Baptist Church	\N
We Are Not All There Group	496	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=496	12:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
We Are Not All There Group	496	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=496	12:00:00	Friday	ST	896 Gulley Drive	Clayton	NC	27520	US	35.6659970000000	-78.4974550000	Clayton	America/New_York	\N	\N
Bunners	490	<BR><br />The last Thursday of the month is a Speaker Meeting.<br><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=490	19:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bunners	490	<BR><br />The last Thursday of the month is a Speaker Meeting.<br><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=490	19:00:00	Thursday	SP	200 Main St	Bunn	NC	27508	US	35.9629840000000	-78.2558680000	Bunn	America/New_York	Bunn United Methodist Church, Fellowship Hall	\N
Cleveland 12 Step	477	<BR><BR><br />!!!!!!!!!!          ATTENTION          !!!!!!!!!!<BR><br /><BR><br />THIS NEW MEETING SCHEDULE BEGINS APRIL 1, 2015<BR><BR><br /><BR>1st Wednesday: Closed Step Study<BR><br />2nd Wednesday: Closed Tradition Study<BR><br />3rd Wednesday: Closed AA Literature Study<BR><br />4th Wednesday: Open Speaker Meeting<BR>	2017-04-28	http://m.raleighaa.com/additional.php?id=477	20:00:00	Wednesday	C	8927 Cleveland Rd	Clayton	NC	27520	US	35.5660080000000	-78.5277230000	Clayton	America/New_York	Oakland Presbyterian Church	\N
Daily Reprieve	479	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=479	07:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Daily Reprieve	479	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=479	07:00:00	Tuesday	LIT	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000	-78.7383550000	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
Daily Reprieve	480	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=480	07:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Daily Reprieve	480	* Where: LaVerna Center (log cabin)<br><br />Enter through basement door. *	2017-04-28	http://m.raleighaa.com/additional.php?id=480	07:00:00	Wednesday	LIT	11501 Leesville Rd	Raleigh	NC	27613	US	35.9188710000000	-78.7383550000	Raleigh	America/New_York	St Francis of Assisi Catholic Church	**no smoking on church premises before, during or after the meeting**
Last Call	498	<br /><BR> As Bill Sees It - Discussion<BR><br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=498	22:00:00	Sunday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	498	<br /><BR> As Bill Sees It - Discussion<BR><br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=498	22:00:00	Sunday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	498	<br /><BR> As Bill Sees It - Discussion<BR><br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=498	22:00:00	Sunday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Last Call	499	<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=499	22:00:00	Tuesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	499	<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=499	22:00:00	Tuesday	B	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	499	<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=499	22:00:00	Tuesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Last Call	500	<br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=500	22:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	500	<br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=500	22:00:00	Wednesday	SP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	500	<br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=500	22:00:00	Wednesday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Last Call	504	<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=504	22:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	504	<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=504	22:00:00	Saturday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Last Call	504	<br />	2017-04-28	http://m.raleighaa.com/additional.php?id=504	22:00:00	Saturday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
Ladies Into Action	511	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=511	18:30:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ladies Into Action	511	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=511	18:30:00	Tuesday	GR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ladies Into Action	511	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=511	18:30:00	Tuesday	W	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Victor E`s Literature Meeting	512	Meets each Monday, EXCEPT 2nd Monday.	2017-04-28	http://m.raleighaa.com/additional.php?id=512	19:00:00	Monday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Victor E`s Literature Meeting	512	Meets each Monday, EXCEPT 2nd Monday.	2017-04-28	http://m.raleighaa.com/additional.php?id=512	19:00:00	Monday	GR	3948 Browning Place - Room 347	Raleigh	NC	27609	US	35.8307980000000	-78.6310190000	Raleigh	America/New_York	Intergroup Office	The Tri-County Intergroup Office of Alcoholics Anonymous
11th Step at 11 Group	515	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=515	20:15:00	Tuesday	O	1251 Goode Street	Raleigh	NC	\N	US	0.0000000000000	0.0000000000	Raleigh	America/New_York	Healing Place of Wake County - Men	\N
Progress Not Perfection Women`s Group	521	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=521	15:00:00	Sunday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Progress Not Perfection Women`s Group	521	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=521	15:00:00	Sunday	W	905 S Main St	Wake Forest	NC	27587	US	35.9669960000000	-78.5164290000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
On Awakening	522	Meditation, Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=522	06:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
On Awakening	522	Meditation, Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=522	06:00:00	Monday	LIT	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
On Awakening	523	Meditation, Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=523	06:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
On Awakening	523	Meditation, Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=523	06:00:00	Wednesday	LIT	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
On Awakening	524	Meditation, Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=524	06:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
On Awakening	524	Meditation, Discussion	2017-04-28	http://m.raleighaa.com/additional.php?id=524	06:00:00	Friday	LIT	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
One Chapter at a Time	526	<br><br /> <br />Thursday night is an open literature study based on writings from As Bill Sees It.<br /><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=526	19:30:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
One Chapter at a Time	526	<br><br /> <br />Thursday night is an open literature study based on writings from As Bill Sees It.<br /><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=526	19:30:00	Thursday	GR	820 East Williams St	Apex	NC	27502	US	35.7227800000000	-78.8454070000	Apex	America/New_York	New Horizons Fellowship	\N
The Legacy Group	527	<br><br />1st we recover from alcoholism, <br><br />2nd we stay together in unity, <br><br />3rd our legacy is to serve its Primary Purpose of<br />carrying the message to all who need it and want it<br><br /><br /><br><br />OPEN DISCUSSION <br><br />ROTATING FORMAT<br><br><br />THIS IS A NON SMOKING MEETING INSIDE AND OUTSIDE PER<br />REQUEST FROM THE CHURCH, NO SMOKING ON PROPERY!!!<br>	2017-04-28	http://m.raleighaa.com/additional.php?id=527	19:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
The Legacy Group	527	<br><br />1st we recover from alcoholism, <br><br />2nd we stay together in unity, <br><br />3rd our legacy is to serve its Primary Purpose of<br />carrying the message to all who need it and want it<br><br /><br /><br><br />OPEN DISCUSSION <br><br />ROTATING FORMAT<br><br><br />THIS IS A NON SMOKING MEETING INSIDE AND OUTSIDE PER<br />REQUEST FROM THE CHURCH, NO SMOKING ON PROPERY!!!<br>	2017-04-28	http://m.raleighaa.com/additional.php?id=527	19:00:00	Thursday	ST	1001 Steeple Square Ct.	Knightdale	NC	27545	US	0.0000000000000	0.0000000000	Knightdale	America/New_York	Cross Point Community Church	\N
On Awakening	536	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=536	06:15:00	Wednesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
On Awakening	536	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=536	06:15:00	Wednesday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
Be Still ... Mid-Morning Meditation Group	530	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=530	11:00:00	Saturday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	530	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=530	11:00:00	Saturday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Be Still ... Mid-Morning Meditation Group	530	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=530	11:00:00	Saturday	X	177 High House Rd	Cary	NC	27511	US	35.7816100000000	-78.7981910000	Cary	America/New_York	Triangle Alano Club	Please do not park right up front before noon on weekdays
The Love and Tolerance Group	539	<BR>Steps and Traditions study. <BR><br />Third Tuesday is a BEGINNERS meeting.<BR><BR>	2017-04-28	http://m.raleighaa.com/additional.php?id=539	20:00:00	Tuesday	C	1498 Hodge Road	Knightdale	NC	\N	US	35.7844200000000	-78.5279770000	Knightdale	America/New_York	Green Pines Baptist Church	\N
Rise Above It	540	<BR> 1st Tuesday - Speaker<BR><br />2nd Tuesday - Tradition<BR><br />3rd & 4th Tuesdays - Big Book<BR><br />5th Tuesday - Concepts <BR><br /><br>	2017-04-28	http://m.raleighaa.com/additional.php?id=540	19:00:00	Tuesday	C	9121 Six Forks Road	Raleigh	NC	\N	US	35.9036720000000	-78.6545460000	Raleigh	America/New_York	Windborne United Methodist Church	\N
Love and Tolerance Group	541	<br><br />1st Tuesday — Closed Step Study <BR><br />2nd Tuesday — Closed Tradition Study<BR><br />3rd Tuesday — Open Speaker Meeting <BR><br />4th Tuesday — Open Beginner Meeting, Steps 1, 2, 3 <BR><br />If 5th Tuesday — Open Speaker Meeting or Workshop, Chairperson’s Choice <BR><BR><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=541	20:00:00	Tuesday	C	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Love and Tolerance Group	541	<br><br />1st Tuesday — Closed Step Study <BR><br />2nd Tuesday — Closed Tradition Study<BR><br />3rd Tuesday — Open Speaker Meeting <BR><br />4th Tuesday — Open Beginner Meeting, Steps 1, 2, 3 <BR><br />If 5th Tuesday — Open Speaker Meeting or Workshop, Chairperson’s Choice <BR><BR><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=541	20:00:00	Tuesday	B	1498 Hodge Road	Knightdale	NC	\N	US	35.7844200000000	-78.5279770000	Knightdale	America/New_York	Green Pines Baptist Church	\N
First 164	542	<br> <br />Last Wednesday of the Month is a Speaker Meeting.<br /><br><br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=542	18:30:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
First 164	542	<br> <br />Last Wednesday of the Month is a Speaker Meeting.<br /><br><br><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=542	18:30:00	Wednesday	GR	1128 South Main Street	Fuquay-Varina	NC	\N	US	0.0000000000000	0.0000000000	Fuquay-Varina	America/New_York	Trinity Episcopal Church	\N
The James Club	545	MENS MEETING	2017-04-28	http://m.raleighaa.com/additional.php?id=545	20:00:00	Thursday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
The James Club	545	MENS MEETING	2017-04-28	http://m.raleighaa.com/additional.php?id=545	20:00:00	Thursday	ST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
The James Club	545	MENS MEETING	2017-04-28	http://m.raleighaa.com/additional.php?id=545	20:00:00	Thursday	M	300 Powell Street	Raleigh	NC	27606	US	0.0000000000000	0.0000000000	Raleigh	America/New_York	Westover Methodist Church	\N
Recovery 101	546	Literature Study - Living Sober	2017-04-28	http://m.raleighaa.com/additional.php?id=546	10:00:00	Friday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Recovery 101	546	Literature Study - Living Sober	2017-04-28	http://m.raleighaa.com/additional.php?id=546	10:00:00	Friday	GR	905 South Main Street	Wake Forest	NC	27587	US	0.0000000000000	0.0000000000	Wake Forest	America/New_York	Wake Forest United Methodist Church	\N
AA	239	Women`s Meeting	2017-04-28	http://m.raleighaa.com/additional.php?id=239	18:30:00	Monday	SP	3304 Glen Royal Rd	Raleigh	NC	27617	US	35.8826310000000	-78.7507890000	Raleigh	America/New_York	The Healing Place of Wake County (Women`s)	\N
AA	507	Last Monday of each month is an Open Speaker Meeting<br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=507	20:00:00	Monday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AA	507	Last Monday of each month is an Open Speaker Meeting<br /><br />	2017-04-28	http://m.raleighaa.com/additional.php?id=507	20:00:00	Monday	SP	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
AA	181	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=181	20:00:00	Wednesday	O	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
AA	181	\N	2017-04-28	http://m.raleighaa.com/additional.php?id=181	20:00:00	Wednesday	ST	932 South Cross Street	Youngsville	NC	27596	US	36.0074640000000	-78.4766070000	Youngsville	America/New_York	Wake Forest Alano Club (WAC)	\N
\.


--
-- Data for Name: meeting_type; Type: TABLE DATA; Schema: public; Owner: doug
--

COPY meeting_type (meetingid, typeid) FROM stdin;
2755	1
2755	2
2756	1
2756	2
2756	3
2757	1
2757	2
2757	3
2758	4
2758	2
2759	1
2759	2
2759	3
2760	1
2760	2
2761	4
2761	2
2761	3
2762	1
2762	2
2762	3
2763	1
2763	2
2763	3
2764	4
2764	2
2764	5
2764	3
2765	4
2765	2
2765	6
2765	3
2766	1
2766	2
2767	1
2767	2
2768	1
2768	2
2769	1
2769	2
2770	1
2770	2
2771	1
2771	2
2772	1
2772	2
2773	4
2773	2
2774	1
2774	2
2775	1
2775	2
2776	1
2776	2
2776	7
2777	1
2777	8
2777	7
2778	4
2778	9
2779	4
2779	8
2780	4
2780	10
2780	3
2781	4
2781	10
2781	3
2782	1
2782	8
2783	4
2783	2
2784	4
2784	2
2785	1
2785	2
2785	7
2786	1
2786	8
2787	1
2787	2
2788	4
2788	9
2789	4
2789	8
2790	1
2790	2
2791	1
2791	2
2791	7
2792	4
2792	8
2793	1
2793	2
2794	1
2794	2
2795	1
2795	2
2796	4
2796	2
2797	4
2797	2
2798	1
2798	8
2799	4
2799	2
2799	7
2800	4
2800	2
2801	4
2801	2
2802	1
2802	11
2803	4
2803	2
2804	1
2804	11
2805	4
2805	9
2805	5
2806	4
2806	2
2807	4
2807	8
2808	4
2808	8
2809	1
2809	2
2810	4
2810	9
2810	3
2811	4
2811	2
2812	4
2812	2
2813	1
2813	10
2813	3
2814	4
2814	2
2815	1
2815	2
2816	1
2816	8
2817	1
2817	8
2818	4
2818	2
2819	1
2819	2
2820	1
2820	9
2821	4
2821	2
2822	1
2822	2
2823	1
2823	2
2824	1
2824	9
2825	4
2825	8
2825	7
2826	4
2826	2
2827	4
2827	2
2828	1
2828	2
2829	4
2829	8
2830	1
2830	9
2831	4
2831	9
2831	3
2832	4
2832	8
2833	4
2833	9
2833	3
2834	1
2834	2
2835	4
2835	2
2836	1
2836	2
2837	1
2837	2
2838	1
2839	4
2839	2
2840	1
2840	2
2841	1
2841	2
2842	1
2843	1
2843	11
2844	4
2844	8
2845	4
2845	9
2846	1
2846	11
2847	4
2848	4
2848	2
2849	1
2849	11
2850	1
2850	3
2851	4
2851	9
2852	1
2852	2
2853	4
2853	2
2854	1
2854	7
2855	1
2855	2
2856	1
2856	11
2856	3
2856	7
2857	1
2857	9
2858	1
2858	2
2859	1
2859	2
2860	1
2860	2
2860	7
2861	1
2861	2
2862	4
2862	2
2862	7
2863	1
2864	1
2864	2
2865	4
2865	9
2866	1
2866	11
2867	1
2867	11
2868	1
2868	11
2869	4
2869	8
2870	1
2870	2
2871	4
2871	2
2872	4
2872	9
2873	4
2873	3
2874	4
2874	3
2875	1
2875	10
2876	1
2876	2
2877	4
2877	2
2878	1
2878	2
2879	4
2879	8
2880	4
2880	2
2881	1
2881	2
2882	1
2882	2
2882	7
2883	1
2884	1
2884	2
2885	1
2885	2
2886	1
2886	2
2887	1
2887	11
2888	1
2888	2
2889	1
2889	2
2890	4
2890	9
2891	4
2891	2
2892	1
2892	2
2893	4
2893	9
2894	4
2894	9
2895	1
2895	2
2896	4
2896	2
2897	1
2897	2
2898	1
2898	7
2899	4
2899	2
2900	1
2900	9
2901	1
2901	2
2902	1
2902	11
2903	4
2903	3
2904	1
2904	9
2904	3
2905	1
2905	11
2906	4
2906	2
2907	1
2908	1
2909	1
2909	2
2910	4
2910	2
2910	6
2911	1
2911	9
2912	1
2912	2
2913	4
2913	2
2914	1
2914	11
2915	1
2915	2
2916	4
2916	2
2917	1
2917	9
2918	1
2918	2
2919	1
2919	2
2919	12
2920	4
2920	8
2921	1
2921	2
2922	1
2922	8
2923	4
2923	9
2923	3
2924	1
2924	9
2924	3
2925	4
2925	9
2926	4
2926	2
2927	4
2927	2
2928	4
2928	2
2929	4
2929	9
2930	4
2930	8
2931	4
2931	10
2932	4
2932	2
2933	4
2933	2
2934	1
2934	2
2935	1
2935	8
2936	4
2936	2
2936	5
2937	1
2937	2
2937	7
2938	4
2938	2
2939	1
2939	2
2940	4
2940	2
2940	6
2940	12
2941	4
2941	9
2942	4
2942	9
2943	4
2943	9
2944	4
2944	2
2945	1
2945	2
2945	3
2946	4
2946	2
2947	4
2948	1
2948	2
2948	7
2949	1
2949	2
2950	1
2950	2
2951	4
2952	1
2952	2
2953	1
2953	2
2954	1
2954	2
2955	1
2955	2
2956	1
2956	2
2957	1
2957	2
2958	1
2958	2
2959	1
2959	2
2959	7
2960	1
2960	9
2961	1
2961	2
2962	1
2962	2
2963	1
2963	2
2964	1
2964	2
2965	1
2965	2
2966	1
2966	2
2967	4
2967	9
2968	1
2968	2
2969	1
2969	2
2969	3
2969	7
2970	1
2970	2
2970	3
2971	1
2971	2
2972	1
2972	2
2973	1
2974	4
2975	4
2975	9
2976	4
2977	4
2977	2
2978	1
2978	11
2979	1
2979	9
2980	4
2981	4
2981	2
2981	3
2982	1
2982	2
2983	4
2983	2
2983	5
2983	3
2984	4
2984	9
2985	1
2985	13
2986	1
2986	13
2987	1
2987	2
2988	1
2988	9
2989	1
2989	2
2990	4
2990	8
2990	5
2991	1
2991	2
2991	3
2992	4
2993	1
2993	10
2993	7
2994	4
2994	2
2994	3
2995	1
2995	2
2996	1
2996	2
2997	4
2997	10
2997	7
2998	1
2998	2
2999	1
2999	2
3000	1
3000	10
3000	7
3001	4
3001	2
3001	7
3002	4
3002	2
3003	4
3003	2
3004	1
3004	2
3004	7
3005	1
3005	2
3006	4
3007	4
3008	4
3008	2
3009	4
3010	4
3011	4
3012	4
3013	4
3014	4
3015	4
3016	4
3017	4
3018	4
3019	4
3020	4
3021	4
3022	4
3022	9
3022	6
3022	5
3023	4
3023	9
3024	1
3024	9
3025	4
3025	8
3025	3
3026	1
3026	2
3027	1
3027	2
3028	1
3028	2
3029	1
3029	2
3030	1
3030	10
3030	3
3031	1
3031	13
3032	1
3032	10
3032	3
3033	1
3033	10
3033	3
3034	1
3034	10
3034	3
3035	1
3035	10
3035	3
3036	1
3036	10
3036	3
3037	4
3037	9
3038	1
3038	9
3038	3
3039	4
3039	10
3039	3
3040	1
3040	2
3041	1
3041	2
3041	3
3042	4
3042	9
3043	1
3043	2
3044	1
3044	2
3045	1
3045	11
3046	1
3046	2
3047	4
3047	2
3048	1
3048	2
3049	1
3049	2
3049	7
3050	1
3050	10
3050	3
3051	1
3051	9
3052	1
3052	2
3053	4
3053	2
3054	4
3054	9
3055	4
3055	2
3056	4
3056	9
3057	4
3057	2
3058	4
3058	3
3059	4
3059	2
3060	4
3060	2
3061	4
3061	2
3061	12
3062	1
3062	2
3063	4
3063	2
3064	4
3064	9
3065	1
3065	2
3066	4
3067	1
3067	10
3068	1
3068	2
3069	1
3069	2
3070	1
3070	2
3071	4
3071	2
3072	1
3072	9
3072	3
3073	4
3073	2
3074	4
3074	2
3075	1
3075	2
3076	1
3076	2
3077	1
3077	2
3078	1
3078	2
3079	1
3079	2
3080	1
3080	10
3081	1
3081	2
3082	4
3082	8
3082	5
3083	1
3084	4
3085	4
3086	1
3086	2
3087	1
3087	9
3088	4
3089	1
3089	13
3090	1
3090	13
3091	1
3091	10
3091	3
3092	1
3092	8
3092	3
3093	1
3093	9
3093	3
3094	1
3094	2
3094	3
3095	4
3095	10
3095	5
3096	4
3096	10
3097	1
3098	4
3098	5
3099	1
3099	13
3100	1
3100	13
3101	1
3101	13
3102	1
3102	10
3103	1
3103	2
3104	4
3104	2
3105	1
3105	2
3105	3
3106	4
3107	4
3108	4
3108	8
3109	1
3109	10
3110	1
3110	2
3110	6
3111	1
3111	10
\.


--
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: doug
--

COPY type (id, abbreviation, idname) FROM stdin;
1	O	O
2	ST	ST
3	X	X
4	C	C
5	W	W
6	M	M
7	BE	BE
8	B	B
9	SP	SP
10	GR	GR
11	D	D
12	LGBTQ	LGBTQ
13	LIT	LIT
\.


--
-- Name: type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doug
--

SELECT pg_catalog.setval('type_id_seq', 13, true);


--
-- Name: meeting meeting_pkey; Type: CONSTRAINT; Schema: public; Owner: doug
--

ALTER TABLE ONLY meeting
    ADD CONSTRAINT meeting_pkey PRIMARY KEY (id);


--
-- Name: meeting_type meeting_type_meetingid_typeid_pk; Type: CONSTRAINT; Schema: public; Owner: doug
--

ALTER TABLE ONLY meeting_type
    ADD CONSTRAINT meeting_type_meetingid_typeid_pk PRIMARY KEY (meetingid, typeid);


--
-- Name: type type_pkey; Type: CONSTRAINT; Schema: public; Owner: doug
--

ALTER TABLE ONLY type
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);


--
-- Name: meeting_id_uindex; Type: INDEX; Schema: public; Owner: doug
--

CREATE UNIQUE INDEX meeting_id_uindex ON meeting USING btree (id);


--
-- Name: type_id_uindex; Type: INDEX; Schema: public; Owner: doug
--

CREATE UNIQUE INDEX type_id_uindex ON type USING btree (id);


--
-- Name: meeting_type meeting_type_meeting_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: doug
--

ALTER TABLE ONLY meeting_type
    ADD CONSTRAINT meeting_type_meeting_id_fk FOREIGN KEY (meetingid) REFERENCES meeting(id);


--
-- Name: meeting_type meeting_type_type_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: doug
--

ALTER TABLE ONLY meeting_type
    ADD CONSTRAINT meeting_type_type_id_fk FOREIGN KEY (typeid) REFERENCES type(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

