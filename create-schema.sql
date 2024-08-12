create schema usa_cars_db;

create table usa_cars_db.brand (
    brand_name varchar(15) not null,
    start_year int not null,
    end_year int,
    primary key (brand_name)
);

create table usa_cars_db.model (
    model_id serial not null,
    model_brand varchar(15) not null,
    model_name varchar(15) not null,
    start_year int not null,
    end_year int,
    primary key (model_id),
    foreign key (model_brand) references usa_cars_db.brand(brand_name)
);