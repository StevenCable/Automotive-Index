\c steven;
DROP DATABASE IF EXISTS "index_cars";

DROP USER "indexed_cars_user";
CREATE USER "indexed_cars_user";


CREATE DATABASE "index_cars" OWNER "indexed_cars_user"; 
\c index_cars;

\i scripts/car_models.sql

\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql

--SELECT THROUGH FULL DATABASE
SELECT DISTINCT "make_title" FROM "car_models" WHERE make_code = 'LAM';

SELECT DISTINCT model_title FROM "car_models" WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT DISTINCT make_code, model_code, model_title, year FROM "car_models" WHERE make_code = 'LAM';

SELECT DISTINCT * FROM "car_models" WHERE  year BETWEEN 2010 AND  2015;

SELECT DISTINCT * FROM "car_models" WHERE year = 2010;

--CREATE INDICES
CREATE INDEX make_code_index ON "car_models" ("make_code");

CREATE INDEX model_code_index ON "car_models" ("model_code");

CREATE INDEX year_index ON "car_models" ("year");

--SELECT BY WAY OF INDICES
SELECT DISTINCT "make_title" FROM "car_models" WHERE make_code = 'LAM';

SELECT DISTINCT model_title FROM "car_models" WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT DISTINCT make_code, model_code, model_title, year FROM "car_models" WHERE make_code = 'LAM';

SELECT DISTINCT * FROM "car_models" WHERE  year BETWEEN 2010 AND  2015;

SELECT DISTINCT * FROM "car_models" WHERE year = 2010;


-- \d+ "car_models";

