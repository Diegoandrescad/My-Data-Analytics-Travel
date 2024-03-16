CREATE TABLE public.producto_pedido
(
    id serial NOT NULL,
    id_pedido integer,
    id_producto integer,
    PRIMARY KEY (id),
    CONSTRAINT producto_pedido_pedido FOREIGN KEY (id_pedido)
        REFERENCES public.pedido (id_pedido) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
        NOT VALID,
    CONSTRAINT producto_pedido_producto FOREIGN KEY (id_producto)
        REFERENCES public.producto (id_producto) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
        NOT VALID
);