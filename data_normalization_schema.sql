CREATE TABLE "owners" (
  "id" int PRIMARY KEY,
  "owner_name" varchar,
  "fenced_yard" bool,
  "city_dweller" bool
);

CREATE TABLE "pet_type" (
  "id" int PRIMARY KEY,
  "type" varchar
);

CREATE TABLE "pets" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "pet_type" int,
  "owner_id" int
);

ALTER TABLE "pets" ADD FOREIGN KEY ("pet_type") REFERENCES "pet_type" ("id");

ALTER TABLE "pets" ADD FOREIGN KEY ("owner_id") REFERENCES "owners" ("id");
