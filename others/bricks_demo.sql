PGDMP                         w            bricks_demo    10.5    12.0     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �
           1262    225413    bricks_demo    DATABASE     �   CREATE DATABASE bricks_demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE bricks_demo;
                postgres    false            �            1259    225425    order_details    TABLE     �   CREATE TABLE public.order_details (
    order_id character varying(250) NOT NULL,
    name character varying(250),
    no_of_bricks character varying(250),
    order_date date,
    order_status character varying(250)
);
 !   DROP TABLE public.order_details;
       public            postgres    false            �            1259    225416    signup    TABLE     �   CREATE TABLE public.signup (
    user_id integer NOT NULL,
    user_name character varying(250),
    user_password character varying(250)
);
    DROP TABLE public.signup;
       public            postgres    false            �            1259    225414    signup_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.signup_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.signup_user_id_seq;
       public          postgres    false    197            �
           0    0    signup_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.signup_user_id_seq OWNED BY public.signup.user_id;
          public          postgres    false    196            t
           2604    225419    signup user_id    DEFAULT     p   ALTER TABLE ONLY public.signup ALTER COLUMN user_id SET DEFAULT nextval('public.signup_user_id_seq'::regclass);
 =   ALTER TABLE public.signup ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    197    196    197            �
          0    225425    order_details 
   TABLE DATA           _   COPY public.order_details (order_id, name, no_of_bricks, order_date, order_status) FROM stdin;
    public          postgres    false    198   �       �
          0    225416    signup 
   TABLE DATA           C   COPY public.signup (user_id, user_name, user_password) FROM stdin;
    public          postgres    false    197   s       �
           0    0    signup_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.signup_user_id_seq', 1, true);
          public          postgres    false    196            x
           2606    225432     order_details order_details_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (order_id);
 J   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_pkey;
       public            postgres    false    198            v
           2606    225424    signup signup_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.signup
    ADD CONSTRAINT signup_pkey PRIMARY KEY (user_id);
 <   ALTER TABLE ONLY public.signup DROP CONSTRAINT signup_pkey;
       public            postgres    false    197            �
   �   x�����0�sy
^ �ne�ճ&&\�4�0Pcx{'ф��ׯ���i� ���W��{��т6Za���n�����r*��kB�T\���eca_ޮ�H�EC�U)���փQj�F��z��� }�S&AMv��H�YiB�\������'8y�d����ͷ�������{�\�v)I�	�QM1���.;�՘+>n<�{4��N      �
       x�3��,�(K�K,��LL�������� b�     