-- Table: public.metodo_pago

-- DROP TABLE IF EXISTS public.metodo_pago;

CREATE TABLE IF NOT EXISTS public.metodo_pago
(
    id_metodo integer NOT NULL DEFAULT nextval('metodo_pago_id_metodo_seq'::regclass),
    tipo character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT metodo_pago_pkey PRIMARY KEY (id_metodo)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.metodo_pago
    OWNER to postgres;