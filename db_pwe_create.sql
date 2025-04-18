-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-04-14 22:17:34.204

-- tables
-- Table: ACTIVIDADES
CREATE TABLE ACTIVIDADES (
    id_actividad serial  NOT NULL,
    nombre_actividad varchar(100)  NOT NULL,
    descripcion text  NOT NULL,
    CONSTRAINT ACTIVIDADES_pk PRIMARY KEY (id_actividad)
);

-- Table: CATEGORIAS_ITEMS
CREATE TABLE CATEGORIAS_ITEMS (
    id_categoria serial  NOT NULL,
    nombre varchar(100)  NOT NULL,
    descripcion varchar(600)  NOT NULL,
    CONSTRAINT CATEGORIAS_ITEMS_pk PRIMARY KEY (id_categoria)
);

-- Table: CIUDADES
CREATE TABLE CIUDADES (
    id_ciudad serial  NOT NULL,
    id_departamento int  NOT NULL,
    nombre_ciudad varchar(50)  NOT NULL,
    CONSTRAINT CIUDADES_pk PRIMARY KEY (id_ciudad)
);

-- Table: DEPARTAMENTOS
CREATE TABLE DEPARTAMENTOS (
    id_departamento serial  NOT NULL,
    nombre_depto varchar(30)  NOT NULL,
    CONSTRAINT DEPARTAMENTOS_pk PRIMARY KEY (id_departamento)
);

-- Table: EMPRESAS
CREATE TABLE EMPRESAS (
    id_empresa serial  NOT NULL,
    denominacion_social varchar(100)  NOT NULL,
    nombre_comercial varchar(100)  NOT NULL,
    fecha_fundacion date  NOT NULL,
    fecha_cierre date  NULL,
    nit int  NOT NULL,
    eslogan varchar(100) NOT NULL,
    descripcion text NOT NULL,
    url varchar(200)  NOT NULL,
    CONSTRAINT EMPRESAS_pk PRIMARY KEY (id_empresa)
);

-- Table: EMPRESAS_ITEMS
CREATE TABLE EMPRESAS_ITEMS (
    id_empresa_item int  NOT NULL,
    id_empresa int  NOT NULL,
    id_item int  NOT NULL,
    fecha_inicio_c date  NULL,
    fecha_fin_c date  NULL,
    CONSTRAINT EMPRESAS_ITEMS_pk PRIMARY KEY (id_empresa_item)
);

-- Table: EMPRESAS_SEDES
CREATE TABLE EMPRESAS_SEDES (
    id_empresa int  NOT NULL,
    id_ubicacion int  NOT NULL,
    fecha_inicio date  NOT NULL,
    fecha_fin date  NULL,
    tipo boolean  NOT NULL,
    CONSTRAINT EMPRESAS_SEDES_pk PRIMARY KEY (id_empresa,id_ubicacion)
);

-- Table: EMPRESAS_TAMANIOS
CREATE TABLE EMPRESAS_TAMANIOS (
    id_empresa int  NOT NULL,
    id_tamanio int  NOT NULL,
    fecha_inicio_et date  NOT NULL,
    fecha_fin_et date  NULL,
    num_empleados int  NOT NULL,
    CONSTRAINT EMPRESAS_TAMANIOS_pk PRIMARY KEY (id_tamanio,id_empresa)
);

-- Table: EMPRESAS_TIPOS_SOCIETARIOS
CREATE TABLE EMPRESAS_TIPOS_SOCIETARIOS (
    id_empresa int  NOT NULL,
    id_tipsoc int  NOT NULL,
    fecha_inicio date  NOT NULL,
    fecha_fin date  NULL,
    CONSTRAINT EMPRESAS_TIPOS_SOCIETARIOS_pk PRIMARY KEY (id_empresa,id_tipsoc)
);

-- Table: EMPRESA_ACTIVIDAD
CREATE TABLE EMPRESA_ACTIVIDAD (
    id_actividad int  NOT NULL,
    id_empresa int  NOT NULL,
    fecha_inicio date  NOT NULL,
    fecha_fin date  NULL,
    principal boolean  NOT NULL,
    CONSTRAINT EMPRESA_ACTIVIDAD_pk PRIMARY KEY (id_actividad,id_empresa)
);

-- Table: FAMILIA
CREATE TABLE FAMILIA (
    id_familia serial  NOT NULL,
    nombre_familia varchar(50)  NOT NULL,
    CONSTRAINT FAMILIA_pk PRIMARY KEY (id_familia)
);

-- Table: HISTORIAL_PROPIEDAD
CREATE TABLE HISTORIAL_PROPIEDAD (
    id_historial int  NOT NULL,
    id_propietario int  NOT NULL,
    id_empresa int  NOT NULL,
    fecha_inicio date  NOT NULL,
    fecha_fin date  NULL,
    familia_activo boolean  NOT NULL,
    CONSTRAINT HISTORIAL_PROPIEDAD_pk PRIMARY KEY (id_historial)
);

-- Table: HITOS
CREATE TABLE HITOS (
    id_hito serial  NOT NULL,
    id_empresa int  NOT NULL,
    descripcion text  NOT NULL,
    fecha_h date  NOT NULL,
    url varchar(200)  NOT NULL,
    CONSTRAINT HITOS_pk PRIMARY KEY (id_hito)
);

-- Table: ITEMS
CREATE TABLE ITEMS (
    id_item serial  NOT NULL,
    nombre_item varchar(100)  NOT NULL,
    tipo_item boolean  NOT NULL,
    descripcion varchar(100)  NOT NULL,
    CONSTRAINT ITEMS_pk PRIMARY KEY (id_item)
);

-- Table: ITEMS_CATEGORIAS
CREATE TABLE ITEMS_CATEGORIAS (
    id_item int  NOT NULL,
    id_categoria int  NOT NULL,
    CONSTRAINT ITEMS_CATEGORIAS_pk PRIMARY KEY (id_item,id_categoria)
);

-- Table: MUNICIPIOS
CREATE TABLE MUNICIPIOS (
    id_municipio serial  NOT NULL,
    id_ciudad int  NOT NULL,
    nombre_municipio varchar(100)  NOT NULL,
    CONSTRAINT MUNICIPIOS_pk PRIMARY KEY (id_municipio)
);

-- Table: PREMIOS
CREATE TABLE PREMIOS (
    id_premio serial  NOT NULL,
    entidad_otorgadora varchar(50)  NOT NULL,
    tipo_premio boolean  NOT NULL,
    url varchar(200)  NOT NULL,
    descripcion text  NOT NULL,
    CONSTRAINT PREMIOS_pk PRIMARY KEY (id_premio)
);

-- Table: PREMIOS_EMPRESAS
CREATE TABLE PREMIOS_EMPRESAS (
    id_premio int  NOT NULL,
    id_empresa int  NOT NULL,
    fecha_p date  NOT NULL,
    CONSTRAINT PREMIOS_EMPRESAS_pk PRIMARY KEY (id_premio,id_empresa)
);

-- Table: PRODUCTO
CREATE TABLE PRODUCTO (
    id_producto serial  NOT NULL,
    id_item int  NOT NULL,
    url varchar(200)  NOT NULL,
    CONSTRAINT PRODUCTO_pk PRIMARY KEY (id_producto)
);

-- Table: PROPIETARIOS
CREATE TABLE PROPIETARIOS (
    id_propietario serial  NOT NULL,
    id_familia int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    apellido_paterno varchar(100)  NOT NULL,
    apellido_materno varchar(100)  NOT NULL,
    nacionalidad varchar(200)  NOT NULL,
    es_familia boolean NOT NULL,
    CONSTRAINT PROPIETARIOS_pk PRIMARY KEY (id_propietario)
);

-- Table: ROLES
CREATE TABLE ROLES (
    id_rol serial  NOT NULL,
    nombre_rol varchar(50)  NOT NULL,
    CONSTRAINT ROLES_pk PRIMARY KEY (id_rol)
);

-- Table: RUBROS
CREATE TABLE RUBROS (
    id_rublo serial  NOT NULL,
    nombre_rubro varchar(100)  NOT NULL,
    url varchar(200)  NOT NULL,
    CONSTRAINT RUBROS_pk PRIMARY KEY (id_rublo)
);

-- Table: RUBROS_ACTIVIDADES
CREATE TABLE RUBROS_ACTIVIDADES (
    id_rublo int  NOT NULL,
    id_actividad int  NOT NULL,
    CONSTRAINT RUBROS_ACTIVIDADES_pk PRIMARY KEY (id_rublo,id_actividad)
);

-- Table: SEDES
CREATE TABLE SEDES (
    id_ubicacion serial  NOT NULL,
    id_municipio int  NOT NULL,
    zona varchar(50)  NOT NULL,
    calle varchar(50)  NOT NULL,
    referencias varchar(500)  NOT NULL,
    nombre_edificio varchar(100)  NOT NULL,
    longitud decimal(20,10)  NOT NULL,
    latitud decimal(20,10)  NOT NULL,
    CONSTRAINT SEDES_pk PRIMARY KEY (id_ubicacion)
);

-- Table: SERVICIO
CREATE TABLE SERVICIO (
    id_servicio serial  NOT NULL,
    id_item int  NOT NULL,
    duracion int  NOT NULL,
    modalidad varchar(100)  NOT NULL,
    url varchar(200)  NOT NULL,
    CONSTRAINT SERVICIO_pk PRIMARY KEY (id_servicio)
);

-- Table: TAMANIOS_EMPRESAS
CREATE TABLE TAMANIOS_EMPRESAS (
    id_tamanio serial  NOT NULL,
    nombre_tamanio varchar(100)  NOT NULL,
    CONSTRAINT TAMANIOS_EMPRESAS_pk PRIMARY KEY (id_tamanio)
);

-- Table: TIPOS_SOCIETARIOS
CREATE TABLE TIPOS_SOCIETARIOS (
    id_tipsoc serial  NOT NULL,
    nombre_tipsoc varchar(50)  NOT NULL,
    CONSTRAINT TIPOS_SOCIETARIOS_pk PRIMARY KEY (id_tipsoc)
);

-- Table: USUARIOS
CREATE TABLE USUARIOS (
    id_usuario serial  NOT NULL,
    id_rol int  NOT NULL,
    usuario varchar(50)  NOT NULL,
    contrasenia varchar(100)  NOT NULL,
    CONSTRAINT USUARIOS_pk PRIMARY KEY (id_usuario)
);

-- foreign keys
-- Reference: CIUDAD_DEPARTAMENTO (table: CIUDADES)
ALTER TABLE CIUDADES ADD CONSTRAINT CIUDAD_DEPARTAMENTO
    FOREIGN KEY (id_departamento)
    REFERENCES DEPARTAMENTOS (id_departamento)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESAS_TAMANIOS_EMPRESAS (table: EMPRESAS_TAMANIOS)
ALTER TABLE EMPRESAS_TAMANIOS ADD CONSTRAINT EMPRESAS_TAMANIOS_EMPRESAS
    FOREIGN KEY (id_empresa)
    REFERENCES EMPRESAS (id_empresa)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESAS_TAMANIOS_TAMANIOS_EMPRESAS (table: EMPRESAS_TAMANIOS)
ALTER TABLE EMPRESAS_TAMANIOS ADD CONSTRAINT EMPRESAS_TAMANIOS_TAMANIOS_EMPRESAS
    FOREIGN KEY (id_tamanio)
    REFERENCES TAMANIOS_EMPRESAS (id_tamanio)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESA_ACTIVIDAD_ACTIVIDADES (table: EMPRESA_ACTIVIDAD)
ALTER TABLE EMPRESA_ACTIVIDAD ADD CONSTRAINT EMPRESA_ACTIVIDAD_ACTIVIDADES
    FOREIGN KEY (id_actividad)
    REFERENCES ACTIVIDADES (id_actividad)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESA_ACTIVIDAD_EMPRESA (table: EMPRESA_ACTIVIDAD)
ALTER TABLE EMPRESA_ACTIVIDAD ADD CONSTRAINT EMPRESA_ACTIVIDAD_EMPRESA
    FOREIGN KEY (id_empresa)
    REFERENCES EMPRESAS (id_empresa)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESA_ITEM_EMPRESA (table: EMPRESAS_ITEMS)
ALTER TABLE EMPRESAS_ITEMS ADD CONSTRAINT EMPRESA_ITEM_EMPRESA
    FOREIGN KEY (id_empresa)
    REFERENCES EMPRESAS (id_empresa)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESA_ITEM_ITEMS (table: EMPRESAS_ITEMS)
ALTER TABLE EMPRESAS_ITEMS ADD CONSTRAINT EMPRESA_ITEM_ITEMS
    FOREIGN KEY (id_item)
    REFERENCES ITEMS (id_item)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESA_SEDE_EMPRESA (table: EMPRESAS_SEDES)
ALTER TABLE EMPRESAS_SEDES ADD CONSTRAINT EMPRESA_SEDE_EMPRESA
    FOREIGN KEY (id_empresa)
    REFERENCES EMPRESAS (id_empresa)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESA_SEDE_SEDE (table: EMPRESAS_SEDES)
ALTER TABLE EMPRESAS_SEDES ADD CONSTRAINT EMPRESA_SEDE_SEDE
    FOREIGN KEY (id_ubicacion)
    REFERENCES SEDES (id_ubicacion)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESA_TIPO_SOCIETARIO_EMPRESA (table: EMPRESAS_TIPOS_SOCIETARIOS)
ALTER TABLE EMPRESAS_TIPOS_SOCIETARIOS ADD CONSTRAINT EMPRESA_TIPO_SOCIETARIO_EMPRESA
    FOREIGN KEY (id_empresa)
    REFERENCES EMPRESAS (id_empresa)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: EMPRESA_TIPO_SOCIETARIO_TIPO_SOCIETARIO (table: EMPRESAS_TIPOS_SOCIETARIOS)
ALTER TABLE EMPRESAS_TIPOS_SOCIETARIOS ADD CONSTRAINT EMPRESA_TIPO_SOCIETARIO_TIPO_SOCIETARIO
    FOREIGN KEY (id_tipsoc)
    REFERENCES TIPOS_SOCIETARIOS (id_tipsoc)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: HISTORIAL_PROPIEDAD_EMPRESA (table: HISTORIAL_PROPIEDAD)
ALTER TABLE HISTORIAL_PROPIEDAD ADD CONSTRAINT HISTORIAL_PROPIEDAD_EMPRESA
    FOREIGN KEY (id_empresa)
    REFERENCES EMPRESAS (id_empresa)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: HISTORIAL_PROPIEDAD_PROPIETARIO (table: HISTORIAL_PROPIEDAD)
ALTER TABLE HISTORIAL_PROPIEDAD ADD CONSTRAINT HISTORIAL_PROPIEDAD_PROPIETARIO
    FOREIGN KEY (id_propietario)
    REFERENCES PROPIETARIOS (id_propietario)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: HITOS_EMPRESA (table: HITOS)
ALTER TABLE HITOS ADD CONSTRAINT HITOS_EMPRESA
    FOREIGN KEY (id_empresa)
    REFERENCES EMPRESAS (id_empresa)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: ITEM_CATEGORIA_CATEGORIA_PRODUCTOS (table: ITEMS_CATEGORIAS)
ALTER TABLE ITEMS_CATEGORIAS ADD CONSTRAINT ITEM_CATEGORIA_CATEGORIA_PRODUCTOS
    FOREIGN KEY (id_categoria)
    REFERENCES CATEGORIAS_ITEMS (id_categoria)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: ITEM_CATEGORIA_ITEMS (table: ITEMS_CATEGORIAS)
ALTER TABLE ITEMS_CATEGORIAS ADD CONSTRAINT ITEM_CATEGORIA_ITEMS
    FOREIGN KEY (id_item)
    REFERENCES ITEMS (id_item)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: MUNICIPIO_CIUDAD (table: MUNICIPIOS)
ALTER TABLE MUNICIPIOS ADD CONSTRAINT MUNICIPIO_CIUDAD
    FOREIGN KEY (id_ciudad)
    REFERENCES CIUDADES (id_ciudad)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: PREMIOS_EMPRESA_EMPRESA (table: PREMIOS_EMPRESAS)
ALTER TABLE PREMIOS_EMPRESAS ADD CONSTRAINT PREMIOS_EMPRESA_EMPRESA
    FOREIGN KEY (id_empresa)
    REFERENCES EMPRESAS (id_empresa)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: PREMIOS_EMPRESA_PREMIOS (table: PREMIOS_EMPRESAS)
ALTER TABLE PREMIOS_EMPRESAS ADD CONSTRAINT PREMIOS_EMPRESA_PREMIOS
    FOREIGN KEY (id_premio)
    REFERENCES PREMIOS (id_premio)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: PRODUCTO_ITEMS (table: PRODUCTO)
ALTER TABLE PRODUCTO ADD CONSTRAINT PRODUCTO_ITEMS
    FOREIGN KEY (id_item)
    REFERENCES ITEMS (id_item)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: PROPIETARIOS_FAMILIA (table: PROPIETARIOS)
ALTER TABLE PROPIETARIOS ADD CONSTRAINT PROPIETARIOS_FAMILIA
    FOREIGN KEY (id_familia)
    REFERENCES FAMILIA (id_familia)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: RUBRO_ACTIVIDAD_ACTIVIDADES (table: RUBROS_ACTIVIDADES)
ALTER TABLE RUBROS_ACTIVIDADES ADD CONSTRAINT RUBRO_ACTIVIDAD_ACTIVIDADES
    FOREIGN KEY (id_actividad)
    REFERENCES ACTIVIDADES (id_actividad)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: RUBRO_ACTIVIDAD_RUBRO (table: RUBROS_ACTIVIDADES)
ALTER TABLE RUBROS_ACTIVIDADES ADD CONSTRAINT RUBRO_ACTIVIDAD_RUBRO
    FOREIGN KEY (id_rublo)
    REFERENCES RUBROS (id_rublo)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: SEDE_MUNICIPIO (table: SEDES)
ALTER TABLE SEDES ADD CONSTRAINT SEDE_MUNICIPIO
    FOREIGN KEY (id_municipio)
    REFERENCES MUNICIPIOS (id_municipio)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: SERVICIO_ITEMS (table: SERVICIO)
ALTER TABLE SERVICIO ADD CONSTRAINT SERVICIO_ITEMS
    FOREIGN KEY (id_item)
    REFERENCES ITEMS (id_item)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: USUARIOS_ROLES (table: USUARIOS)
ALTER TABLE USUARIOS ADD CONSTRAINT USUARIOS_ROLES
    FOREIGN KEY (id_rol)
    REFERENCES ROLES (id_rol)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

