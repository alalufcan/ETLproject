CREATE TABLE "uber_rides_random" (
    "id" varchar   NOT NULL,
    "distance" float   NOT NULL,
    "source" varchar   NOT NULL,
    "destination" varchar   NOT NULL,
    "price" float   NOT NULL,
    "name" varchar   NOT NULL,
	"new_time" varchar NOT NULL,
	"Days" int not null,
	"Month" int not null,
	"Year" int not null,
	"Date" int not null,
    "distance" float NOT NULL,
    "surge_multiplier" float NOT NULL,
    "product_id" varchar NOT NULL,
    CONSTRAINT "pk_uber_rides_random" PRIMARY KEY (
        "id"
     )
);

select * from uber_rides_random;

CREATE TABLE "boston_weather" (
    "id" varchar,
    "Day" varchar,
    "High" float,
    "Low" float,
    "Precip.(inch)" float,
	"Month" int,
	"Year" int,
	"Days" int,
	"Date" int,
    CONSTRAINT "pk_boston_weather" PRIMARY KEY (
        "id"
     )
);
select * from boston_weather;

SELECT "uber_rides_random"."distance","boston_weather"."Precip.(inch)", "boston_weather"."High",  "uber_rides_random"."destination","uber_rides_random"."price","boston_weather"."Low", "uber_rides_random"."source", "uber_rides_random"."distance","uber_rides_random"."surge_multiplier", "uber_rides_random"."product_id"
FROM uber_rides_random
INNER JOIN boston_weather 
ON uber_rides_random."Date" = boston_weather."Date";
