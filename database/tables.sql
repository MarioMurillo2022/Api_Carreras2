-- Active: 1697072377566@@localhost@5432@postgres

create table
    tbl_api_carreras (
        id serial PRIMARY key,
        nombre varchar(100),
        equipo varchar(50),
        mejor_puesto NUMERIC,
        victorias NUMERIC,
        poles NUMERIC,
        tiempo TIME,
        fecha date
    );

SELECT * FROM tbl_api_carreras 

insert into
    tbl_api_carreras (
        nombre,
        equipo,
        mejor_puesto,
        victorias,
        poles,
        tiempo,
        fecha
    )
values (
        'Max Verstappen',
        'RedBull',
        1,
        14,
        2,
        '01:27:39',
        '01-oct-2023'
    );

insert into
    tbl_api_carreras (
        nombre,
        equipo,
        mejor_puesto,
        victorias,
        poles,
        tiempo,
        fecha
    )
values (
        'Sergio Perez',
        'RedBull',
        1,
        2,
        2,
        '01:29:39',
        '01-oct-2023'
    )

insert into
    tbl_api_carreras (
        nombre,
        equipo,
        mejor_puesto,
        victorias,
        poles,
        tiempo,
        fecha
    )
values (
        'Lewis Hamilton',
        'Mercedes',
        0,
        3,
        2,
        '01:31:39',
        '01-oct-2023'
    )

insert into
    tbl_api_carreras (
        nombre,
        equipo,
        mejor_puesto,
        victorias,
        poles,
        tiempo,
        fecha
    )
values (
        ' Fernando Alonso',
        'Aston Martin',
        0,
        5,
        1,
        '01:34:39',
        '01-oct-2023'
    )
    /*
     Max Verstappen, RedBull, 1, 14, 01:27:39, '01-oct-2023'
     Sergio Perez, RedBull, 1, 2, 01:29:39.188, '01-oct-2023'
     Lewis Hamilton, Mercedes, 0, 3, 01:31:39.128, '01-oct-2023'
     Fernando Alonso, Aston Martin, 0, 5, 01:34:39.268, '01-oct-2023'
     
     
     */