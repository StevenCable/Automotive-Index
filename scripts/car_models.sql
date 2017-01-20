-- db indexed_cars

CREATE INDEX make_code_index ON "car_models" ("make_code");

CREATE INDEX model_code_index ON "car_models" ("model_code");

CREATE INDEX year_index ON "car_models" ("year");