PGDMP     4             
        o           TartMovieDatabase    9.0.4    9.0.4 �    ~           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            �           1262    16498    TartMovieDatabase    DATABASE     �   CREATE DATABASE "TartMovieDatabase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish, Turkey' LC_CTYPE = 'Turkish, Turkey';
 #   DROP DATABASE "TartMovieDatabase";
             postgres    false                        2615    16500    Movie    SCHEMA        CREATE SCHEMA "Movie";
    DROP SCHEMA "Movie";
             postgres    false                        2615    16499    User    SCHEMA        CREATE SCHEMA "User";
    DROP SCHEMA "User";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            g           2612    11574    plpgsql    PROCEDURAL LANGUAGE     /   CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;
 "   DROP PROCEDURAL LANGUAGE plpgsql;
             postgres    false                       1259    16535    cast    TABLE     �   CREATE TABLE "cast" (
    "movieId" integer NOT NULL,
    "personId" integer NOT NULL,
    "jobName" character varying(50),
    "jobTypeId" integer NOT NULL
);
    DROP TABLE "Movie"."cast";
       Movie         postgres    false    8            ,           1259    16666    gallery    TABLE     {   CREATE TABLE gallery (
    id integer NOT NULL,
    name character varying(70) NOT NULL,
    "movieId" integer NOT NULL
);
    DROP TABLE "Movie".gallery;
       Movie         postgres    false    8            *           1259    16662    gallery_id_seq    SEQUENCE     p   CREATE SEQUENCE gallery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE "Movie".gallery_id_seq;
       Movie       postgres    false    1580    8            �           0    0    gallery_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE gallery_id_seq OWNED BY gallery.id;
            Movie       postgres    false    1578            �           0    0    gallery_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('gallery_id_seq', 2, true);
            Movie       postgres    false    1578            +           1259    16664    gallery_movieId_seq    SEQUENCE     w   CREATE SEQUENCE "gallery_movieId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "Movie"."gallery_movieId_seq";
       Movie       postgres    false    1580    8            �           0    0    gallery_movieId_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "gallery_movieId_seq" OWNED BY gallery."movieId";
            Movie       postgres    false    1579            �           0    0    gallery_movieId_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"gallery_movieId_seq"', 1, false);
            Movie       postgres    false    1579                       1259    16574    genre    TABLE     Y   CREATE TABLE genre (
    id integer NOT NULL,
    name character varying(25) NOT NULL
);
    DROP TABLE "Movie".genre;
       Movie         postgres    false    8                       1259    16561    jobType    TABLE     ]   CREATE TABLE "jobType" (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE "Movie"."jobType";
       Movie         postgres    false    8                       1259    16559    jobType_id_seq    SEQUENCE     r   CREATE SEQUENCE "jobType_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "Movie"."jobType_id_seq";
       Movie       postgres    false    1561    8            �           0    0    jobType_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE "jobType_id_seq" OWNED BY "jobType".id;
            Movie       postgres    false    1560            �           0    0    jobType_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('"jobType_id_seq"', 5, true);
            Movie       postgres    false    1560                       1259    16503    movie    TABLE     �   CREATE TABLE movie (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    year character(4) NOT NULL,
    summary text
);
    DROP TABLE "Movie".movie;
       Movie         postgres    false    8                       1259    16533    movieCast_jobTypeId_seq    SEQUENCE     {   CREATE SEQUENCE "movieCast_jobTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Movie"."movieCast_jobTypeId_seq";
       Movie       postgres    false    8    1559            �           0    0    movieCast_jobTypeId_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE "movieCast_jobTypeId_seq" OWNED BY "cast"."jobTypeId";
            Movie       postgres    false    1558            �           0    0    movieCast_jobTypeId_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"movieCast_jobTypeId_seq"', 1, false);
            Movie       postgres    false    1558                       1259    16529    movieCast_movieId_seq    SEQUENCE     y   CREATE SEQUENCE "movieCast_movieId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "Movie"."movieCast_movieId_seq";
       Movie       postgres    false    8    1559            �           0    0    movieCast_movieId_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE "movieCast_movieId_seq" OWNED BY "cast"."movieId";
            Movie       postgres    false    1556            �           0    0    movieCast_movieId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"movieCast_movieId_seq"', 1, false);
            Movie       postgres    false    1556                       1259    16531    movieCast_personId_seq    SEQUENCE     z   CREATE SEQUENCE "movieCast_personId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "Movie"."movieCast_personId_seq";
       Movie       postgres    false    1559    8            �           0    0    movieCast_personId_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE "movieCast_personId_seq" OWNED BY "cast"."personId";
            Movie       postgres    false    1557            �           0    0    movieCast_personId_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"movieCast_personId_seq"', 1, false);
            Movie       postgres    false    1557                       1259    16584    movieGenreRelation    TABLE     f   CREATE TABLE "movieGenreRelation" (
    "movieId" integer NOT NULL,
    "genreId" integer NOT NULL
);
 )   DROP TABLE "Movie"."movieGenreRelation";
       Movie         postgres    false    8                       1259    16582    movieGenreMap_genreId_seq    SEQUENCE     }   CREATE SEQUENCE "movieGenreMap_genreId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Movie"."movieGenreMap_genreId_seq";
       Movie       postgres    false    1566    8            �           0    0    movieGenreMap_genreId_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE "movieGenreMap_genreId_seq" OWNED BY "movieGenreRelation"."genreId";
            Movie       postgres    false    1565            �           0    0    movieGenreMap_genreId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"movieGenreMap_genreId_seq"', 1, false);
            Movie       postgres    false    1565                       1259    16580    movieGenreMap_movieId_seq    SEQUENCE     }   CREATE SEQUENCE "movieGenreMap_movieId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Movie"."movieGenreMap_movieId_seq";
       Movie       postgres    false    1566    8            �           0    0    movieGenreMap_movieId_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE "movieGenreMap_movieId_seq" OWNED BY "movieGenreRelation"."movieId";
            Movie       postgres    false    1564            �           0    0    movieGenreMap_movieId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"movieGenreMap_movieId_seq"', 1, false);
            Movie       postgres    false    1564                       1259    16572    movieGenre_id_seq    SEQUENCE     u   CREATE SEQUENCE "movieGenre_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "Movie"."movieGenre_id_seq";
       Movie       postgres    false    1563    8            �           0    0    movieGenre_id_seq    SEQUENCE OWNED BY     6   ALTER SEQUENCE "movieGenre_id_seq" OWNED BY genre.id;
            Movie       postgres    false    1562            �           0    0    movieGenre_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('"movieGenre_id_seq"', 6, true);
            Movie       postgres    false    1562                       1259    16501    movie_id_seq    SEQUENCE     n   CREATE SEQUENCE movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE "Movie".movie_id_seq;
       Movie       postgres    false    8    1552            �           0    0    movie_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE movie_id_seq OWNED BY movie.id;
            Movie       postgres    false    1551            �           0    0    movie_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('movie_id_seq', 2, true);
            Movie       postgres    false    1551                       1259    16516    person    TABLE     �   CREATE TABLE person (
    id integer NOT NULL,
    name character varying(70) NOT NULL,
    "birthDate" date,
    "deathDate" date,
    "isDead" boolean,
    biography text,
    "countryId" integer
);
    DROP TABLE "Movie".person;
       Movie         postgres    false    8                       1259    16514    person_birthPlaceId_seq    SEQUENCE     {   CREATE SEQUENCE "person_birthPlaceId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Movie"."person_birthPlaceId_seq";
       Movie       postgres    false    1555    8            �           0    0    person_birthPlaceId_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE "person_birthPlaceId_seq" OWNED BY person."countryId";
            Movie       postgres    false    1554            �           0    0    person_birthPlaceId_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"person_birthPlaceId_seq"', 2, true);
            Movie       postgres    false    1554                       1259    16512    person_id_seq    SEQUENCE     o   CREATE SEQUENCE person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE "Movie".person_id_seq;
       Movie       postgres    false    1555    8            �           0    0    person_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE person_id_seq OWNED BY person.id;
            Movie       postgres    false    1553            �           0    0    person_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('person_id_seq', 6, true);
            Movie       postgres    false    1553            /           1259    16677    photo    TABLE     h   CREATE TABLE photo (
    id integer NOT NULL,
    description text,
    "galleryId" integer NOT NULL
);
    DROP TABLE "Movie".photo;
       Movie         postgres    false    8            .           1259    16675    photo_galleryId_seq    SEQUENCE     w   CREATE SEQUENCE "photo_galleryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "Movie"."photo_galleryId_seq";
       Movie       postgres    false    1583    8            �           0    0    photo_galleryId_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "photo_galleryId_seq" OWNED BY photo."galleryId";
            Movie       postgres    false    1582            �           0    0    photo_galleryId_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"photo_galleryId_seq"', 1, false);
            Movie       postgres    false    1582            -           1259    16673    photo_id_seq    SEQUENCE     n   CREATE SEQUENCE photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE "Movie".photo_id_seq;
       Movie       postgres    false    8    1583            �           0    0    photo_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE photo_id_seq OWNED BY photo.id;
            Movie       postgres    false    1581            �           0    0    photo_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('photo_id_seq', 1, false);
            Movie       postgres    false    1581            #           1259    16612    releaseDate    TABLE     y   CREATE TABLE "releaseDate" (
    "movieID" integer NOT NULL,
    "countryId" integer NOT NULL,
    date date NOT NULL
);
 "   DROP TABLE "Movie"."releaseDate";
       Movie         postgres    false    8            "           1259    16610    releaseDate_countryId_seq    SEQUENCE     }   CREATE SEQUENCE "releaseDate_countryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Movie"."releaseDate_countryId_seq";
       Movie       postgres    false    1571    8            �           0    0    releaseDate_countryId_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "releaseDate_countryId_seq" OWNED BY "releaseDate"."countryId";
            Movie       postgres    false    1570            �           0    0    releaseDate_countryId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"releaseDate_countryId_seq"', 1, false);
            Movie       postgres    false    1570            !           1259    16608    releaseDate_movieID_seq    SEQUENCE     {   CREATE SEQUENCE "releaseDate_movieID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Movie"."releaseDate_movieID_seq";
       Movie       postgres    false    1571    8            �           0    0    releaseDate_movieID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "releaseDate_movieID_seq" OWNED BY "releaseDate"."movieID";
            Movie       postgres    false    1569            �           0    0    releaseDate_movieID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"releaseDate_movieID_seq"', 1, false);
            Movie       postgres    false    1569            1           1259    16730    comment    TABLE     �   CREATE TABLE comment (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    comment text NOT NULL,
    "movieId" integer NOT NULL
);
    DROP TABLE "User".comment;
       User         postgres    false    7            0           1259    16728    comment_id_seq    SEQUENCE     p   CREATE SEQUENCE comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE "User".comment_id_seq;
       User       postgres    false    7    1585            �           0    0    comment_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE comment_id_seq OWNED BY comment.id;
            User       postgres    false    1584            �           0    0    comment_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('comment_id_seq', 1, false);
            User       postgres    false    1584            &           1259    16631    user    TABLE     �   CREATE TABLE "user" (
    id integer NOT NULL,
    "userName" character varying(50) NOT NULL,
    name character varying(50),
    email character varying(50) NOT NULL,
    "countryId" integer
);
    DROP TABLE "User"."user";
       User         postgres    false    7            %           1259    16629    user_countryId_seq    SEQUENCE     v   CREATE SEQUENCE "user_countryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "User"."user_countryId_seq";
       User       postgres    false    7    1574            �           0    0    user_countryId_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "user_countryId_seq" OWNED BY "user"."countryId";
            User       postgres    false    1573            �           0    0    user_countryId_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"user_countryId_seq"', 1, false);
            User       postgres    false    1573            $           1259    16627    user_id_seq    SEQUENCE     m   CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE "User".user_id_seq;
       User       postgres    false    7    1574            �           0    0    user_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE user_id_seq OWNED BY "user".id;
            User       postgres    false    1572            �           0    0    user_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('user_id_seq', 7, true);
            User       postgres    false    1572            )           1259    16647    vote    TABLE     s   CREATE TABLE vote (
    "userId" integer NOT NULL,
    "movieId" integer NOT NULL,
    rating smallint NOT NULL
);
    DROP TABLE "User".vote;
       User         postgres    false    7            (           1259    16645    vote_movieId_seq    SEQUENCE     t   CREATE SEQUENCE "vote_movieId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE "User"."vote_movieId_seq";
       User       postgres    false    7    1577            �           0    0    vote_movieId_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE "vote_movieId_seq" OWNED BY vote."movieId";
            User       postgres    false    1576            �           0    0    vote_movieId_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('"vote_movieId_seq"', 1, false);
            User       postgres    false    1576            '           1259    16643    vote_userId_seq    SEQUENCE     s   CREATE SEQUENCE "vote_userId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "User"."vote_userId_seq";
       User       postgres    false    1577    7            �           0    0    vote_userId_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "vote_userId_seq" OWNED BY vote."userId";
            User       postgres    false    1575            �           0    0    vote_userId_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"vote_userId_seq"', 1, false);
            User       postgres    false    1575                        1259    16602    country    TABLE     [   CREATE TABLE country (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.country;
       public         postgres    false    5                       1259    16600    country_id_seq    SEQUENCE     p   CREATE SEQUENCE country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public       postgres    false    5    1568            �           0    0    country_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE country_id_seq OWNED BY country.id;
            public       postgres    false    1567            �           0    0    country_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('country_id_seq', 10, true);
            public       postgres    false    1567            M           2604    16669    id    DEFAULT     U   ALTER TABLE gallery ALTER COLUMN id SET DEFAULT nextval('gallery_id_seq'::regclass);
 :   ALTER TABLE "Movie".gallery ALTER COLUMN id DROP DEFAULT;
       Movie       postgres    false    1578    1580    1580            J           2604    16577    id    DEFAULT     X   ALTER TABLE genre ALTER COLUMN id SET DEFAULT nextval('"movieGenre_id_seq"'::regclass);
 8   ALTER TABLE "Movie".genre ALTER COLUMN id DROP DEFAULT;
       Movie       postgres    false    1562    1563    1563            I           2604    16564    id    DEFAULT     Y   ALTER TABLE "jobType" ALTER COLUMN id SET DEFAULT nextval('"jobType_id_seq"'::regclass);
 <   ALTER TABLE "Movie"."jobType" ALTER COLUMN id DROP DEFAULT;
       Movie       postgres    false    1561    1560    1561            G           2604    16506    id    DEFAULT     Q   ALTER TABLE movie ALTER COLUMN id SET DEFAULT nextval('movie_id_seq'::regclass);
 8   ALTER TABLE "Movie".movie ALTER COLUMN id DROP DEFAULT;
       Movie       postgres    false    1552    1551    1552            H           2604    16519    id    DEFAULT     S   ALTER TABLE person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);
 9   ALTER TABLE "Movie".person ALTER COLUMN id DROP DEFAULT;
       Movie       postgres    false    1553    1555    1555            N           2604    16680    id    DEFAULT     Q   ALTER TABLE photo ALTER COLUMN id SET DEFAULT nextval('photo_id_seq'::regclass);
 8   ALTER TABLE "Movie".photo ALTER COLUMN id DROP DEFAULT;
       Movie       postgres    false    1581    1583    1583            O           2604    16733    id    DEFAULT     U   ALTER TABLE comment ALTER COLUMN id SET DEFAULT nextval('comment_id_seq'::regclass);
 9   ALTER TABLE "User".comment ALTER COLUMN id DROP DEFAULT;
       User       postgres    false    1584    1585    1585            L           2604    16634    id    DEFAULT     Q   ALTER TABLE "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);
 8   ALTER TABLE "User"."user" ALTER COLUMN id DROP DEFAULT;
       User       postgres    false    1574    1572    1574            K           2604    16605    id    DEFAULT     U   ALTER TABLE country ALTER COLUMN id SET DEFAULT nextval('country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1567    1568    1568            s          0    16535    cast 
   TABLE DATA               H   COPY "cast" ("movieId", "personId", "jobName", "jobTypeId") FROM stdin;
    Movie       postgres    false    1559   K�       {          0    16666    gallery 
   TABLE DATA               /   COPY gallery (id, name, "movieId") FROM stdin;
    Movie       postgres    false    1580   y�       u          0    16574    genre 
   TABLE DATA               "   COPY genre (id, name) FROM stdin;
    Movie       postgres    false    1563   ��       t          0    16561    jobType 
   TABLE DATA               &   COPY "jobType" (id, name) FROM stdin;
    Movie       postgres    false    1561   �       q          0    16503    movie 
   TABLE DATA               1   COPY movie (id, name, year, summary) FROM stdin;
    Movie       postgres    false    1552   6�       v          0    16584    movieGenreRelation 
   TABLE DATA               =   COPY "movieGenreRelation" ("movieId", "genreId") FROM stdin;
    Movie       postgres    false    1566   Έ       r          0    16516    person 
   TABLE DATA               _   COPY person (id, name, "birthDate", "deathDate", "isDead", biography, "countryId") FROM stdin;
    Movie       postgres    false    1555   �       |          0    16677    photo 
   TABLE DATA               6   COPY photo (id, description, "galleryId") FROM stdin;
    Movie       postgres    false    1583   9�       x          0    16612    releaseDate 
   TABLE DATA               >   COPY "releaseDate" ("movieID", "countryId", date) FROM stdin;
    Movie       postgres    false    1571   V�       }          0    16730    comment 
   TABLE DATA               <   COPY comment (id, "userId", comment, "movieId") FROM stdin;
    User       postgres    false    1585   s�       y          0    16631    user 
   TABLE DATA               C   COPY "user" (id, "userName", name, email, "countryId") FROM stdin;
    User       postgres    false    1574   ��       z          0    16647    vote 
   TABLE DATA               4   COPY vote ("userId", "movieId", rating) FROM stdin;
    User       postgres    false    1577   ��       w          0    16602    country 
   TABLE DATA               $   COPY country (id, name) FROM stdin;
    public       postgres    false    1568   �       ]           2606    16672    gallery_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY gallery
    ADD CONSTRAINT gallery_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY "Movie".gallery DROP CONSTRAINT gallery_pkey;
       Movie         postgres    false    1580    1580            U           2606    16566    jobType_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY "jobType"
    ADD CONSTRAINT "jobType_pkey" PRIMARY KEY (id);
 C   ALTER TABLE ONLY "Movie"."jobType" DROP CONSTRAINT "jobType_pkey";
       Movie         postgres    false    1561    1561            W           2606    16579    movieGenre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY genre
    ADD CONSTRAINT "movieGenre_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY "Movie".genre DROP CONSTRAINT "movieGenre_pkey";
       Movie         postgres    false    1563    1563            Q           2606    16511 
   movie_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY "Movie".movie DROP CONSTRAINT movie_pkey;
       Movie         postgres    false    1552    1552            S           2606    16525    person_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY "Movie".person DROP CONSTRAINT person_pkey;
       Movie         postgres    false    1555    1555            _           2606    16686 
   photo_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY "Movie".photo DROP CONSTRAINT photo_pkey;
       Movie         postgres    false    1583    1583            a           2606    16738    comment_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY "User".comment DROP CONSTRAINT comment_pkey;
       User         postgres    false    1585    1585            [           2606    16637 	   user_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY "User"."user" DROP CONSTRAINT user_pkey;
       User         postgres    false    1574    1574            Y           2606    16607    country_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public         postgres    false    1568    1568            m           2606    16755    gallery_movieId_fkey    FK CONSTRAINT     q   ALTER TABLE ONLY gallery
    ADD CONSTRAINT "gallery_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES movie(id);
 I   ALTER TABLE ONLY "Movie".gallery DROP CONSTRAINT "gallery_movieId_fkey";
       Movie       postgres    false    1580    1872    1552            e           2606    16567    movieCast_jobTypeId_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY "cast"
    ADD CONSTRAINT "movieCast_jobTypeId_fkey" FOREIGN KEY ("jobTypeId") REFERENCES "jobType"(id);
 L   ALTER TABLE ONLY "Movie"."cast" DROP CONSTRAINT "movieCast_jobTypeId_fkey";
       Movie       postgres    false    1561    1876    1559            c           2606    16541    movieCast_movieId_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY "cast"
    ADD CONSTRAINT "movieCast_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES movie(id);
 J   ALTER TABLE ONLY "Movie"."cast" DROP CONSTRAINT "movieCast_movieId_fkey";
       Movie       postgres    false    1552    1872    1559            d           2606    16546    movieCast_personId_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY "cast"
    ADD CONSTRAINT "movieCast_personId_fkey" FOREIGN KEY ("personId") REFERENCES person(id);
 K   ALTER TABLE ONLY "Movie"."cast" DROP CONSTRAINT "movieCast_personId_fkey";
       Movie       postgres    false    1555    1559    1874            g           2606    16594    movieGenreMap_genreId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "movieGenreRelation"
    ADD CONSTRAINT "movieGenreMap_genreId_fkey" FOREIGN KEY ("genreId") REFERENCES genre(id);
 \   ALTER TABLE ONLY "Movie"."movieGenreRelation" DROP CONSTRAINT "movieGenreMap_genreId_fkey";
       Movie       postgres    false    1563    1878    1566            f           2606    16589    movieGenreMap_movieId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "movieGenreRelation"
    ADD CONSTRAINT "movieGenreMap_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES movie(id);
 \   ALTER TABLE ONLY "Movie"."movieGenreRelation" DROP CONSTRAINT "movieGenreMap_movieId_fkey";
       Movie       postgres    false    1552    1872    1566            b           2606    16760    person_countryId_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY person
    ADD CONSTRAINT "person_countryId_fkey" FOREIGN KEY ("countryId") REFERENCES public.country(id);
 I   ALTER TABLE ONLY "Movie".person DROP CONSTRAINT "person_countryId_fkey";
       Movie       postgres    false    1555    1880    1568            n           2606    16687    photo_galleryId_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY photo
    ADD CONSTRAINT "photo_galleryId_fkey" FOREIGN KEY ("galleryId") REFERENCES gallery(id);
 G   ALTER TABLE ONLY "Movie".photo DROP CONSTRAINT "photo_galleryId_fkey";
       Movie       postgres    false    1884    1583    1580            i           2606    16622    releaseDate_countryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "releaseDate"
    ADD CONSTRAINT "releaseDate_countryId_fkey" FOREIGN KEY ("countryId") REFERENCES public.country(id);
 U   ALTER TABLE ONLY "Movie"."releaseDate" DROP CONSTRAINT "releaseDate_countryId_fkey";
       Movie       postgres    false    1568    1880    1571            h           2606    16617    releaseDate_movieID_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY "releaseDate"
    ADD CONSTRAINT "releaseDate_movieID_fkey" FOREIGN KEY ("movieID") REFERENCES movie(id);
 S   ALTER TABLE ONLY "Movie"."releaseDate" DROP CONSTRAINT "releaseDate_movieID_fkey";
       Movie       postgres    false    1552    1571    1872            p           2606    16744    comment_movieId_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY comment
    ADD CONSTRAINT "comment_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES "Movie".movie(id);
 H   ALTER TABLE ONLY "User".comment DROP CONSTRAINT "comment_movieId_fkey";
       User       postgres    false    1585    1552    1872            o           2606    16739    comment_userId_fkey    FK CONSTRAINT     p   ALTER TABLE ONLY comment
    ADD CONSTRAINT "comment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"(id);
 G   ALTER TABLE ONLY "User".comment DROP CONSTRAINT "comment_userId_fkey";
       User       postgres    false    1882    1574    1585            j           2606    16638    user_countryId_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_countryId_fkey" FOREIGN KEY ("countryId") REFERENCES public.country(id);
 F   ALTER TABLE ONLY "User"."user" DROP CONSTRAINT "user_countryId_fkey";
       User       postgres    false    1568    1574    1880            k           2606    16652    vote_movieId_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY vote
    ADD CONSTRAINT "vote_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES "Movie".movie(id);
 B   ALTER TABLE ONLY "User".vote DROP CONSTRAINT "vote_movieId_fkey";
       User       postgres    false    1872    1552    1577            l           2606    16657    vote_userId_fkey    FK CONSTRAINT     j   ALTER TABLE ONLY vote
    ADD CONSTRAINT "vote_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"(id);
 A   ALTER TABLE ONLY "User".vote DROP CONSTRAINT "vote_userId_fkey";
       User       postgres    false    1882    1577    1574            s      x�3�4���I�+Qp�O�4����� @	      {      x������ � �      u   I   x�3�tL.����2�t��MM��2�N��u��2�t�O.�M�+I,��2��(���I-�2���K�L����� y�      t   7   x�3�tL.�/�2�E���\Ɯ.�E�`A΀������".S��� #F��� ��      q   �   x�%��
�0D��W�HA�ң�x��-Mv%S��n�2��y�e�g����y�����H��rꤐm�N��!��/����#�>��a�V��mR��	1���HOd|8�l�����ھ��<�����8      v      x������ � �      r   >   x�3��N-��S��,����C #.CΣ�R�R�@��!��Wbq~��ojyj1��=... �3      |      x������ � �      x      x������ � �      }      x������ � �      y   [   x�3�L)M)͎�M�N,�K�L�,J,��N-IN,p�M���K��K���4�2�����
)��`���6�2���jX�*V������ ��(t      z      x������ � �      w   q   x��=�@�z�Sp#�o�&Xڀ��$����C2,<���}5���ӊ�6([DC��b�.inb�9�}�W)8Eq���d�8S�g�p��t�9��R�U���8:� ?��!�     