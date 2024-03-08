/* TODO: create all necessary tables for all existing data in our database. */
CREATE TABLE IF NOT EXISTS characters
(
    character_name character varying(30) NOT NULL,
    nickname character varying(30),
    element character varying(20) NOT NULL,
    character_roles character varying(20)[],
    weapon_category character varying(20) NOT NULL,
    lore_description text
);

CREATE TABLE IF NOT EXISTS combos
(
    "character" character varying(20) NOT NULL,
    move_name character varying(30) NOT NULL,
    modifier character varying(20),
    damage_cap numeric(8,0) NOT NULL,
    classifications character varying(20)[],
    damage_ratio smallint[] NOT NULL
);

CREATE TABLE IF NOT EXISTS sigils
(
    sigil_name character varying(30) NOT NULL,
    sigil_type character varying(20) NOT NULL,
    sigil_effect text COLLATE NOT NULL,
    max_level SMALLINT NOT NULL,
    effect_per_level numeric[] NOT NULL,
    CONSTRAINT sigils_sigil_name_key UNIQUE (sigil_name),
    CONSTRAINT sigils_sigil_type_key UNIQUE (sigil_type)
);

CREATE TABLE IF NOT EXISTS skills
(
    "character" character varying(20) NOT NULL,
    skill_name character varying(30) NOT NULL,
    skill_modifier character varying(20),
    skill_cooldown smallint,
    damage_cap numeric(8,0) NOT NULL,
    classifications character varying(20)[],
    skill_ratio smallint[] NOT NULL
);


