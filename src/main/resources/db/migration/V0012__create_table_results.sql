create table results(
id bigint primary key ,
race_id bigint ,
driver_id bigint ,
constructor_id bigint ,
number bigint ,
grid bigint ,
position varchar (10) ,
position_text varchar(10),
position_order bigint ,
points decimal(10,2),
laps bigint ,
time   varchar(20),
milliseconds  varchar(20),
fastest_lap  varchar(20) ,
rank varchar(20),
fastest_lap_time  varchar(20),
fastest_lap_speed  varchar(20),
status_id  bigint ,

 constraint fk_races_results foreign key (race_id) references races (id),
 constraint fk_constructors_results foreign key (constructor_id) references constructors (id),
 constraint fk_driver_results foreign key (driver_id) references drivers (id),
  constraint fk_status_results foreign key (status_id) references status (id)
)