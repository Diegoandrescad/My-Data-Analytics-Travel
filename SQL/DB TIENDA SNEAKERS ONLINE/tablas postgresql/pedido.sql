-- Table: public.pedido

-- DROP TABLE IF EXISTS public.pedido;

CREATE TABLE IF NOT EXISTS public.pedido
(
    id_pedido integer NOT NULL DEFAULT nextval('pedido_id_pedido_seq'::regclass),
    fecha_pedido timestamp without time zone,
    total money,
    id_usuario integer,
    id_metodo integer,
    CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido),
    CONSTRAINT metodo_pedido FOREIGN KEY (id_metodo)
        REFERENCES public.metodo_pago (id_metodo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT usuario_pedido FOREIGN KEY (id_usuario)
        REFERENCES public.usuario (id_usuario) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pedido
    OWNER to postgres;