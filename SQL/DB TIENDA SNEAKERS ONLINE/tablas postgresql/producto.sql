-- Table: public.producto

-- DROP TABLE IF EXISTS public.producto;

CREATE TABLE IF NOT EXISTS public.producto
(
    id_producto integer NOT NULL DEFAULT nextval('producto_id_producto_seq'::regclass),
    nombre text COLLATE pg_catalog."default" NOT NULL,
    precio money NOT NULL,
    marca character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT producto_pkey PRIMARY KEY (id_producto)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.producto
    OWNER to postgres;