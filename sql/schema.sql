USE ippart;

CREATE TABLE `properties2` (
  `id`          INT(20) NOT NULL     DEFAULT 0,
  `category_id` INT(20) NOT NULL     DEFAULT 0,
  `property_id` INT(20) NOT NULL     DEFAULT 0, #Цвет изделия
  `value_id`    INT(20) NOT NULL     DEFAULT 0 #черный
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE `relations_properties_values` (
  `id`          INT(20) NOT NULL     DEFAULT 0,
  `category_id` INT(20) NOT NULL     DEFAULT 0,
  `property_id` INT(20) NOT NULL     DEFAULT 0, #Цвет изделия
  `value_id`    INT(20) NOT NULL     DEFAULT 0 #черный
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE `properties` (
  `category_id`  INT(20)      NOT NULL     DEFAULT 0,
  `property_uid` CHAR(36)     NOT NULL     DEFAULT '',
  `title_str`    VARCHAR(255) NOT NULL     DEFAULT '',
  `value_int`    INT(20)      NULL         DEFAULT 0,
  `value_str`    VARCHAR(255) NULL         DEFAULT '',
  `value_flo`    FLOAT        NULL         DEFAULT 0,
  `value_boo`    TINYINT(2)   NULL         DEFAULT 0
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

#INSERT properties (product_uid, property_uid, title_str, value_int) VALUES ('123-123', '123-345', 'relay', 1);

insert into properties (id, title_str, value_int, value_flo, category_id, product_id, property_str, value_str, value_boo)
                 value (1, '956-1A-12DSE 40А Реле', 25, null, 10, 100, 'Кратность упаковки', null, null);

insert into properties (id, category_id, property_id, value_id, product_id) values(1,10,100,1000,111);
insert into properties (id, category_id, property_id, value_id, product_id) values(2,10,200,2000,111);
insert into properties (id, category_id, property_id, value_id, product_id) values(3,10,300,3000,111);

insert into properties (id, category_id, property_id, value_id, product_id) values(4,10,400,4000,111);
insert into properties (id, category_id, property_id, value_id, product_id) values(5,10,500,5000,111);
insert into properties (id, category_id, property_id, value_id, product_id) values(6,10,600,1000,111);

insert into properties (id, category_id, property_id, value_id, product_id) values(7,10,100,1000,222);
insert into properties (id, category_id, property_id, value_id, product_id) values(8,10,200,2000,222);
insert into properties (id, category_id, property_id, value_id, product_id) values(9,10,300,3000,222);

insert into properties (id, category_id, property_id, value_id, product_id) values(10,10,400,4000,222);
insert into properties (id, category_id, property_id, value_id, product_id) values(11,10,500,5000,222);
insert into properties (id, category_id, property_id, value_id, product_id) values(12,10,600,6000,222);

insert into properties (id, category_id, property_id, value_id, product_id) values(13,10,700,1000,222);

######3
insert into  products (id, title, description) values (1, '956-1A-12DSE 40А Реле', 'Реле 956-1A-12DSE 40А слаботочное. Предназначено для для автомобильных систем сигнализации. Корпус герметичный. Исполнение: стандартное и высокочувствительное. Расшифровка: 956 - номер серии; 1А - тип контактов (1A = 1 нормально разомкнутый (SPST-NO)); 12 - напряжение катушки (12 В); D - тип катушки (D: постоянного тока); S - корпус (S = герметичный, с пластиковой крышкой); E - тип контактных выводов (E = размеры по стандарту ЕС). Максимально коммутируемый ток - 40 А; максимально коммутируемое напряжение - 14 В.');

#select * from properties where category_id=10 and property_id in (100,600) and value_id in (1000) group by product_id;
