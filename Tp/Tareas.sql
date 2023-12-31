CREATE TABLE "PERFILES" (
    "id" SERIAL PRIMARY KEY,
    "nombre" VARCHAR(255) NOT NULL
);

CREATE TABLE "PERMISOS" (
    "id" SERIAL PRIMARY KEY,
    "nombre" VARCHAR(255) NOT NULL
);

CREATE TABLE "PERMISOS_PERFIL" (
    "id" SERIAL PRIMARY KEY,
    "id_permisos" INTEGER NOT NULL,
    "id_perfil" INTEGER NOT NULL,
    FOREIGN KEY ("id_permisos") REFERENCES "PERMISOS" ("id"),
    FOREIGN KEY ("id_perfil") REFERENCES "PERFILES" ("id")
);

CREATE TABLE "USUARIOS" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "id_perfil" INTEGER NOT NULL
);

CREATE TABLE "TAREAS_REALIZAR" (
    "id" SERIAL PRIMARY KEY,
    "fecha" DATE NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "direccion" VARCHAR(255) NOT NULL
);
