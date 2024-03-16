-- Table: public.envio

-- DROP TABLE IF EXISTS public.envio;

CREATE TABLE IF NOT EXISTS public.envio
(
    id_envio integer NOT NULL DEFAULT nextval('envio_id_envio_seq'::regclass),
    fecha_envio timestamp without time zone,
    estado character varying(20) COLLATE pg_catalog."default" NOT NULL,
    id_pedido integer NOT NULL,
    id_direccion integer NOT NULL,
    CONSTRAINT envio_pkey PRIMARY KEY (id_envio),
    CONSTRAINT envio_direccion FOREIGN KEY (id_direccion)
        REFERENCES public.direccion (id_direccion) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT envio_estado_check CHECK (estado::text = ANY (ARRAY['enviado'::character varying, 'no enviado'::character varying]::text[]))
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.envio
    OWNER to postgres;