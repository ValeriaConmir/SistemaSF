PGDMP      )                }         	   SistemaSF    17.4    17.4 +    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            T           1262    16389 	   SistemaSF    DATABASE     m   CREATE DATABASE "SistemaSF" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "SistemaSF";
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            U           0    0 
   SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            ?           1259    16427    ahorro    TABLE     ³   CREATE TABLE public.ahorro (
    id_ahorro integer NOT NULL,
    id_socio integer NOT NULL,
    ahorro money NOT NULL,
    retiro money,
    saldo money,
    rendimiento money
);
    DROP TABLE public.ahorro;
       public         heap r       postgres    false    4            ?          1259    16509    aval    TABLE     ?  CREATE TABLE public.aval (
    id_aval integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido_paterno character varying(50) NOT NULL,
    apellido_materno character varying(50) NOT NULL,
    calle_numero character varying(100) NOT NULL,
    localidad character varying(50) NOT NULL,
    municipio character varying(50) NOT NULL,
    telefono character varying(12) NOT NULL
);
    DROP TABLE public.aval;
       public         heap r       postgres    false    4            ?           1259    16422    empleado    TABLE     ¿   CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre_usuario character varying(50) NOT NULL,
    contrasena character varying(20) NOT NULL,
    rol boolean NOT NULL
);
    DROP TABLE public.empleado;
       public         heap r       postgres    false    4            ?           1259    16437 
   movimiento    TABLE     ?  CREATE TABLE public.movimiento (
    id_movimiento integer NOT NULL,
    id_empleado integer NOT NULL,
    id_socio integer,
    id_no_socio integer,
    tipo boolean NOT NULL,
    fecha date NOT NULL
);
    DROP TABLE public.movimiento;
       public         heap r       postgres    false    4            ?           1259    16412    no_socio    TABLE     ?   CREATE TABLE public.no_socio (
    id_no_socio integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_prestamo date NOT NULL
);
    DROP TABLE public.no_socio;
       public         heap r       postgres    false    4            ?           1259    16490    prestamo    TABLE     )  CREATE TABLE public.prestamo (
    id_prestamo integer NOT NULL,
    id_socio integer,
    id_no_socio integer,
    prestamo money,
    abono money,
    saldo money,
    interes money,
    tasa_interes character varying(2),
    estatus character varying(50),
    garantia character varying(50)
);
    DROP TABLE public.prestamo;
       public         heap r       postgres    false    4            ?          1259    16514 
   prestamo_aval    TABLE     f   CREATE TABLE public.prestamo_aval (
    id_prestamo integer NOT NULL,
    id_aval integer NOT NULL
);
 !   DROP TABLE public.prestamo_aval;
       public         heap r       postgres    false    4            ?           1259    16397    socio    TABLE     ?  CREATE TABLE public.socio (
    id_socio integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_ingreso date NOT NULL,
    beneficiario character varying(100) NOT NULL,
    inscripcion money NOT NULL
);
    DROP TABLE public.socio;
       public         heap r       postgres    false    4            ?           1259    16390    usuario    TABLE     ? CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido_paterno character varying(50) NOT NULL,
    fecha_nacimiento date NOT NULL,
    calle_numero character varying(100) NOT NULL,
    localidad character varying(50) NOT NULL,
    municipio character varying(50) NOT NULL,
    telefono character varying(12) NOT NULL,
    tipo_usuario character varying(20) NOT NULL,
    apellido_materno character varying(50) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap r       postgres    false    4            J          0    16427    ahorro 
   TABLE DATA           Y   COPY public.ahorro (id_ahorro, id_socio, ahorro, retiro, saldo, rendimiento) FROM stdin;
    public               postgres    false    221   ´7       M          0    16509    aval 
   TABLE DATA              COPY public.aval (id_aval, nombre, apellido_paterno, apellido_materno, calle_numero, localidad, municipio, telefono) FROM stdin;
    public               postgres    false    224   ?       I          0    16422    empleado 
   TABLE DATA           P   COPY public.empleado (id_empleado, nombre_usuario, contrasena, rol) FROM stdin;
    public               postgres    false    220   ?      K          0    16437 
   movimiento 
   TABLE DATA           d   COPY public.movimiento (id_movimiento, id_empleado, id_socio, id_no_socio, tipo, fecha) FROM stdin;
    public               postgres    false    222   +8       H          0    16412    no_socio 
   TABLE DATA           K   COPY public.no_socio (id_no_socio, id_usuario, fecha_prestamo) FROM stdin;
    public               postgres    false    219   H8       L          0    16490    prestamo 
   TABLE DATA           ?   COPY public.prestamo (id_prestamo, id_socio, id_no_socio, prestamo, abono, saldo, interes, tasa_interes, estatus, garantia) FROM stdin;
    public               postgres    false    223   e8       N          0    16514 
   prestamo_aval 
   TABLE DATA           =   COPY public.prestamo_aval (id_prestamo, id_aval) FROM stdin;
    public               postgres    false    225   ?8       G          0    16397    socio 
   TABLE DATA           _   COPY public.socio (id_socio, id_usuario, fecha_ingreso, beneficiario, inscripcion) FROM stdin;
    public               postgres    false    218   ?8       F          0    16390    usuario 
   TABLE DATA           §   COPY public.usuario (id_usuario, nombre, apellido_paterno, fecha_nacimiento, calle_numero, localidad, municipio, telefono, tipo_usuario, apellido_materno) FROM stdin;
    public               postgres    false    217   ??     ¢
           2606    16431    ahorro ahorro_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.ahorro
    ADD CONSTRAINT ahorro_pk PRIMARY KEY (id_ahorro);
 :   ALTER TABLE ONLY public.ahorro DROP CONSTRAINT ahorro_pk;
       public                 postgres    false    221            ¨
           2606    16513    aval aval_pk 
   CONSTRAINT     O   ALTER TABLE ONLY public.aval
    ADD CONSTRAINT aval_pk PRIMARY KEY (id_aval);
 6   ALTER TABLE ONLY public.aval DROP CONSTRAINT aval_pk;
       public                 postgres    false    224             
           2606    16426    empleado empleado_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pk PRIMARY KEY (id_empleado);
 >   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pk;
       public                 postgres    false    220            ¤
           2606    16441    movimiento movimiento_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT movimiento_pk PRIMARY KEY (id_movimiento);
 B   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT movimiento_pk;
       public                 postgres    false    222            ?
           2606    16416    no_socio no_socio_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.no_socio
    ADD CONSTRAINT no_socio_pk PRIMARY KEY (id_no_socio);
 >   ALTER TABLE ONLY public.no_socio DROP CONSTRAINT no_socio_pk;
       public                 postgres    false    219            ª
           2606    16518 !   prestamo_aval prestamo_aval_id_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public.prestamo_aval
    ADD CONSTRAINT prestamo_aval_id_pk PRIMARY KEY (id_prestamo);
 K   ALTER TABLE ONLY public.prestamo_aval DROP CONSTRAINT prestamo_aval_id_pk;
       public                 postgres    false    225            ¦
           2606    16494    prestamo prestamo_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_pk PRIMARY KEY (id_prestamo);
 >   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_pk;
       public                 postgres    false    223            ?
           2606    16401    socio socio_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.socio
    ADD CONSTRAINT socio_pk PRIMARY KEY (id_socio);
 8   ALTER TABLE ONLY public.socio DROP CONSTRAINT socio_pk;
       public                 postgres    false    218            ?
           2606    16396    usuario usuario_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (id_usuario);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pk;
       public                 postgres    false    217            ­
           2606    16485    ahorro ahorro_socio_fk 
   FK CONSTRAINT         ALTER TABLE ONLY public.ahorro
    ADD CONSTRAINT ahorro_socio_fk FOREIGN KEY (id_socio) REFERENCES public.socio(id_socio) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.ahorro DROP CONSTRAINT ahorro_socio_fk;
       public               postgres    false    3484    218    221            ®
           2606    16470 !   movimiento movimiento_empleado_fk 
   FK CONSTRAINT     ´   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT movimiento_empleado_fk FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT movimiento_empleado_fk;
       public               postgres    false    222    220    3488            ¯
           2606    16475 !   movimiento movimiento_no_socio_fk 
   FK CONSTRAINT     ´   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT movimiento_no_socio_fk FOREIGN KEY (id_no_socio) REFERENCES public.no_socio(id_no_socio) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT movimiento_no_socio_fk;
       public               postgres    false    3486    222    219            °
           2606    16480    movimiento movimiento_socio_fk 
   FK CONSTRAINT     ¨   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT movimiento_socio_fk FOREIGN KEY (id_socio) REFERENCES public.socio(id_socio) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT movimiento_socio_fk;
       public               postgres    false    3484    218    222            ¬
           2606    16451    no_socio no_socio_usuario_fk 
   FK CONSTRAINT     ?   ALTER TABLE ONLY public.no_socio
    ADD CONSTRAINT no_socio_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 F   ALTER TABLE ONLY public.no_socio DROP CONSTRAINT no_socio_usuario_fk;
       public               postgres    false    3482    219    217            ³
           2606    16519 #   prestamo_aval prestamo_aval_aval_fk 
   FK CONSTRAINT     ª   ALTER TABLE ONLY public.prestamo_aval
    ADD CONSTRAINT prestamo_aval_aval_fk FOREIGN KEY (id_aval) REFERENCES public.aval(id_aval) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.prestamo_aval DROP CONSTRAINT prestamo_aval_aval_fk;
       public               postgres    false    225    3496    224            ´
           2606    16524 '   prestamo_aval prestamo_aval_prestamo_fk 
   FK CONSTRAINT     ?   ALTER TABLE ONLY public.prestamo_aval
    ADD CONSTRAINT prestamo_aval_prestamo_fk FOREIGN KEY (id_prestamo) REFERENCES public.prestamo(id_prestamo);
 Q   ALTER TABLE ONLY public.prestamo_aval DROP CONSTRAINT prestamo_aval_prestamo_fk;
       public               postgres    false    223    225    3494            ±
           2606    16500    prestamo prestamo_no_socio_fk 
   FK CONSTRAINT     °   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_no_socio_fk FOREIGN KEY (id_no_socio) REFERENCES public.no_socio(id_no_socio) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_no_socio_fk;
       public               postgres    false    219    3486    223            ²
           2606    16495    prestamo prestamo_socio_fk 
   FK CONSTRAINT     ¤   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_socio_fk FOREIGN KEY (id_socio) REFERENCES public.socio(id_socio) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_socio_fk;
       public               postgres    false    218    3484    223            «
           2606    16407    socio socio_usuario_fk 
   FK CONSTRAINT     ¦   ALTER TABLE ONLY public.socio
    ADD CONSTRAINT socio_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.socio DROP CONSTRAINT socio_usuario_fk;
       public               postgres    false    217    3482    218            J   
   x???? Š©      M   
   x???? Š©      I   -   x?3??FLL??,?K?-??-H
Iqqq ?
?      K   
   x???? Š©      H   
   x???? Š©      L   
   x???? Š©      N   
   x???? Š©      G   D   x?3?4202?0?4??-?T???p?+)J-J,V???I?25?0?? ?      F   ¡   x?5?A
°E?S???v)"nt¥n?$3?¤{?z1#Vø??ûl????¥E6%6°r?????þ¥?© ²¶[ö?f8?S0???L6
O?*8/???%G?AUu%{¥ú²ÿ§??H?B??­8}     