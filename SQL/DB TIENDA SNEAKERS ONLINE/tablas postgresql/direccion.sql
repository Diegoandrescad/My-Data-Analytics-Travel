-- Table: public.direccion

-- DROP TABLE IF EXISTS public.direccion;

CREATE TABLE IF NOT EXISTS public.direccion
(
    id_direccion integer NOT NULL DEFAULT nextval('direccion_id_direccion_seq'::regclass),
    ciudad character varying(100) COLLATE pg_catalog."default" NOT NULL,
    provincia character varying(100) COLLATE pg_catalog."default" NOT NULL,
    calle character varying(100) COLLATE pg_catalog."default" NOT NULL,
    codigo_postal integer NOT NULL,
    CONSTRAINT direccion_pkey PRIMARY KEY (id_direccion)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.direccion
    OWNER to postgres;