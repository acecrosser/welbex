PGDMP     &        
            y         	   db_welbex    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    42587 	   db_welbex    DATABASE     f   CREATE DATABASE db_welbex WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE db_welbex;
                postgres    false            �            1259    42588    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    postgres    false            �            1259    42595    single_page_table    TABLE     �   CREATE TABLE public.single_page_table (
    id integer NOT NULL,
    title character varying(120),
    volume integer,
    distance double precision,
    date timestamp without time zone
);
 %   DROP TABLE public.single_page_table;
       public         heap    postgres    false            �            1259    42593    single_page_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.single_page_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.single_page_table_id_seq;
       public          postgres    false    202            �           0    0    single_page_table_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.single_page_table_id_seq OWNED BY public.single_page_table.id;
          public          postgres    false    201            &           2604    42601    single_page_table id    DEFAULT     |   ALTER TABLE ONLY public.single_page_table ALTER COLUMN id SET DEFAULT nextval('public.single_page_table_id_seq'::regclass);
 C   ALTER TABLE public.single_page_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201    202            �          0    42588    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          postgres    false    200   �       �          0    42595    single_page_table 
   TABLE DATA           N   COPY public.single_page_table (id, title, volume, distance, date) FROM stdin;
    public          postgres    false    202   �       �           0    0    single_page_table_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.single_page_table_id_seq', 1, false);
          public          postgres    false    201            (           2606    42592 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            postgres    false    200            *           2606    42600 (   single_page_table single_page_table_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.single_page_table
    ADD CONSTRAINT single_page_table_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.single_page_table DROP CONSTRAINT single_page_table_pkey;
       public            postgres    false    202            �      x�31J�44O4H220����� (-�      �   �  x�}WKr��]�N�p��>( ;���#6iQ�<ޔ�bP��y�8f����.����/?:���UY�	ʮ.3Sd��ό6tB�l�umlmKE��7M����6��b(�_�뢶U�Ke�p_�.�%W9�*}����զ��W�����~�󟹌�P��VW��+�í�י�Q�҅w�jok
�s��ׇ��e =�����֥*���k��ǣ<��R��*�u�uh|,��\A�\ru���S��*n��$%��p��m���w��v˷��Hg�D���+����v.��C����!�
׏�����u�c	<��e��Ȁ�����(��w��(��K-��A��J�?���fx�=�N ��iE����o������.�M~�i��*���&�<�	+�C����cf��+'�ѯ�����5go�zu�{xw�V~i�}~����He���IqӮۘh�$/S��&�A�ջ��$/J�e=s��۶�	9�L䐐��S0?ʀ����̣��̎ϩ�(;��S|��uL�Y=y��\�p|�2�Q�}�}f�Bq:�.s�{�he@�M�%A8��3:gM�,�S����N�2�Z8�{΀���麘L�8���6���0�q7��6߱�!H�b�%�n��m��ow�m�d���d��~F)�p�YG��k��12g������wO/-��+�:y��)�o32S�5FcY`AYp�ӻ��Rr��C��5)2~�׃��|���M`�+"��ߺ�����]�9��%�S.%�H��v|7h�YeN�P�B�����F�կ�$@n[u�m��k���R�Dp��-kK���2�oՔ�0��(+]f>L8$�2��vu��.��~��|�]fh�&��E���Pˌ�w�T<����ʁ���t���O���>F:��򛏛��g���FQZ<���\�~��X��EvN��@�'t�%���_N�:��+�޻}����$��ح�LM��$��6|z�O'����X�+�+g{:q�hc��x� ��r����m���@F�q�&��	b�i�C��J��A?ė��Da�	7�@Y�A�u��]~�lc�K��.lǘr�slq5��i���" C��,D5ׂ�<��4H�`~� �<8��	S�+J�d�4ʃ�ӟ_'�]��2\f���
2�Y\g�N��i,��L��Cv��꿭 O�#$s.	���,��8֏�Qɱ���b!Y�S�-'g�A/����q�ʬ�ܗ����ժ o�g�/n�JcD � ����v�m�/�����&yN��&�m�+� %��W)����8�/@���ſ���%�^R@,�����K��9�u�Gl��c��S~�t���{t8. �"(&��J:�ج�����Q��ĩV�zu��1,�,�J3fN��V� ��O?�Z��%������=f���N� ��q<�G�;{)H���}�Oi��0F�l �
3>�{��дL�b"�˭(�:�	\�u��iJK[ �����8���Ų'أ�
��_��66<�h�_A������1�!�ٻ%F0f%���O�Ԛ�SV5Q	��7o���͟<�%���U	�W͗�l{�v_��s�r�i�C��B�.-�2�؏X"<&�J6��R�]W�~S
7O��|�,Ȫ���I��kH��#��Y��2#�G1�Q�ty��ޘ�!n�]������r8�鰎��?y�S��Z>kx�D*q�vO�(gu��1�
�R�I�l�'W�^�"�d�9z+��7����a/�/
X�rs���C���,T����/�Ǖy�yKp5�@�_./�o��EV¹��|������H�m�+tU��)~�=�'���89j^}�~X�<�+���2=w!m$�G,��~����GB     