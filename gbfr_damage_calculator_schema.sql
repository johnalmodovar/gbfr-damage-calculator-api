/* TODO: create all necessary tables for all existing data in our database. */
CREATE TABLE IF NOT EXISTS characters
(
    character_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    element character varying(10) COLLATE pg_catalog."default" NOT NULL,
    nickname character varying(30) COLLATE pg_catalog."default",
    va_jp character varying(30) COLLATE pg_catalog."default",
    va_en character varying(30) COLLATE pg_catalog."default",
    character_roles character varying(20)[] COLLATE pg_catalog."default",
    weapon_category character varying(20) COLLATE pg_catalog."default",
    lore_description text COLLATE pg_catalog."default",
    CONSTRAINT characters_character_name_key UNIQUE (character_name)
);

CREATE TABLE IF NOT EXISTS combos
(
    "character" character varying(20) COLLATE pg_catalog."default",
    move_name character varying(30) COLLATE pg_catalog."default",
    modifier character varying(20) COLLATE pg_catalog."default",
    damage_cap numeric(8,0),
    classifications character varying(20)[] COLLATE pg_catalog."default",
    skill_ratio smallint[]
);

CREATE TABLE IF NOT EXISTS over_masteries
(
    attribute character varying(40) COLLATE pg_catalog."default" NOT NULL,
    "values" numeric[] NOT NULL,
    CONSTRAINT over_masteries_attribute_key UNIQUE (attribute)
);
    
CREATE TABLE IF NOT EXISTS sigils
(
    sigil_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    max_level integer NOT NULL,
    effect_per_level numeric[] NOT NULL,
    sigil_color character varying(10) COLLATE pg_catalog."default" NOT NULL,
    effect text COLLATE pg_catalog."default",
    CONSTRAINT sigils_sigil_name_key UNIQUE (sigil_name)
);

CREATE TABLE IF NOT EXISTS traits
(
    trait_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    max_level numeric(2,0) NOT NULL,
    CONSTRAINT traits_trait_name_key UNIQUE (trait_name)
)

CREATE TABLE IF NOT EXISTS skills
(
    "character" character varying(20) COLLATE pg_catalog."default",
    skill_name character varying(30) COLLATE pg_catalog."default",
    skill_modifier character varying(20) COLLATE pg_catalog."default",
    skill_cooldown smallint,
    damage_cap numeric(8,0),
    classifications character varying(20)[] COLLATE pg_catalog."default",
    skill_ratio smallint[]
);

CREATE TABLE IF NOT EXISTS weapons
(
    weapon_name character varying(30) COLLATE pg_catalog."default",
    weapon_user character varying(20) COLLATE pg_catalog."default",
    weapon_type character varying(20) COLLATE pg_catalog."default"
);


