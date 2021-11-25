CREATE USER supermercado IDENTIFIED BY super;

-- grant priviledges
GRANT CONNECT, RESOURCE, DBA TO supermercado;



  CREATE TABLE "SUPERMERCADO"."CATEGORIA" 
   (	"ID_CATEGORIA" NUMBER(9,0) NOT NULL ENABLE, 
	"NOMBRE_CATEGORIA" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "CATEGORIA_PK" PRIMARY KEY ("ID_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SUPERMERCADO"."PRODUCTO" 
   (	"ID" NUMBER(9,0) NOT NULL ENABLE, 
	"NOMBRE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"URL_IMAGEN" VARCHAR2(100 BYTE), 
	"PRECIO" NUMBER(10,0) NOT NULL ENABLE, 
	"DESCUENTO" NUMBER(10,0), 
	"CAT_IDCATEGORIA" NUMBER(9,0) NOT NULL ENABLE, 
	 CONSTRAINT "PRODUCTO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

alter table producto add constraint producto_cate_cat_id_fk foreign key (cat_idcategoria) references categoria(id_categoria);

Select * from producto

insert into producto values (001,'LAVALOZA QUICK 750 ml','https://www.web.dupu.cl/97-large_default/lavaloza-quix-750-ml-tradicional-verde.jpg', 1000, 100, 101);
insert into producto values (002,'LECHE EN CAJA LITRO BLANCA, SOPROLE','http://images.lider.cl/wmtcl?source=url[file:/productos/702661a.jpg]&sink', 1500, 100, 102);
insert into producto values (003,'LECHE EN CAJA LITRO CHOCOLATE, SOPROLE','https://www.soprole.cl/content/dam/countries/chile/soprole/website_asset/products/pd_tile_detail_page/leches_liquidas_sabor/123542840-receta_original_chocolate1ldetail2000x2420_png.png', 1000, 100, 102);
insert into producto values (004,'TALLARINES 5 CAROZZI', 'https://elcaramelo.cl/wp-content/uploads/2020/06/Dise%C3%B1o-sin-t%C3%ADtulo-40.png',700, 70, 103);
insert into producto values (005,'CLOROX 1 LITRO CLORINDA','https://www.puntoaseo.cl/wp-content/uploads/2018/02/Cloro-Clorinda-Litro.jpg', 2000, 30, 101);
insert into producto values (006,'CERA RPJA ARELA 700 GRAMOS','https://lh3.googleusercontent.com/proxy/kPmnZcnNkXN1wBwjq7DwnqWGvzgwb40p52KXfEG8NoVnzsrY7siUuRfS_k1FMD1yV0IPYhne7uRivWDQw7QNlg2SynrRdMbUUsJ14aY2Mw', 1004, 0, 101);
insert into producto values (007,'GALLETAS TRITON','https://www.dimeiggs.cl/media/catalog/product/cache/2/image/600x600/9df78eab33525d08d6e5fb8d27136e95/c/l/cl_z102381.jpg', 700, 70, 104);
insert into producto values (008,'TALLARINES TALIANI 5 ','https://talliani.cl/wp-content/themes/talliani_2015/assets/img/productos/pastas/tradicionales/spaghetti5.jpg', 790, 20, 103);
insert into producto values (009,'JABON LIQUIDO DAVE 700 ML','https://www.dove.com/content/dam/unilever/dove/mexico/pack_shot/bw_deep_moisture_500_ml-2376350-png.png', 1600, 10, 105);
insert into producto values (010,'CERA AMARILLA ARELA 700 GRAMOS','https://lh3.googleusercontent.com/proxy/9vUrLAFDDyFbBcYiIPkO9iuUC64dHVtmf7zKdGdvGc8h9ireI5ZdOoMqoJom3N50lAh-yPYFCrBJRkawN0VApNWtSZL2NPrGLJe9WPs_aOC6GeE', 1004, 0, 101);
insert into producto values (011,'CLORO GEL CLORINDA 700 ML','https://www.puntoaseo.cl/wp-content/uploads/2019/11/Cloro-Clorinda-Gel-Original-900.jpg', 1000, 0, 101);



insert into categoria values (101,'ARTICULOS DE LIMPIEZA');
insert into categoria values (102,'LACTEOS');
insert into categoria values (103,'FIDEOS');
insert into categoria values (104,'GALLETAS');
insert into categoria values (105,'HIGIENE');



Select * from categoria

select P.id, P.nombre, P.precio, P.descuento, C.descripcion from producto p
left join categoria c on c.idcategoria = p.idcategoria ORDER BY NOMBRE ASC,PRECIO ASC

select P.id, P.nombre, P.precio, P.descuento, C.descripcion from producto P left join categoria C on C.idcategoria = P.idcategoria

select P.id, P.nombre, P.precio, P.descuento, C.descripcion from producto P left join categoria C on C.idcategoria = P.idcategoria
