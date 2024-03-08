\echo 'Delete and create gbfr-damage-calc db?'
\prompt 'Return for yes or ctrl-c to cancel > ' foo

DROP DATABASE gbfr_damage_calculator;
CREATE DATABASE gbfr_damage_calculator;
\connect gbfr_damage_calculator

\i gbfr_damage_calculator_schema.sql
\i gbfr_damage_calculator_seed.sql