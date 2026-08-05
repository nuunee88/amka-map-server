CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE IF NOT EXISTS universities (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  name_short TEXT,
  address TEXT,
  website TEXT,
  students INT,
  geom GEOMETRY(Point, 4326)
);

INSERT INTO universities
  (name, name_short, address, website, students, geom)
VALUES
  ('Монгол Улсын Их Сургууль', 'МУИС',
   'Бага тойруу 1, Сүхбаатар дүүрэг',
   'https://www.num.edu.mn', 18000,
   ST_SetSRID(ST_MakePoint(106.9057, 47.9184), 4326)),

  ('Шинжлэх Ухаан Технологийн Их Сургууль', 'ШУТИС',
   'Их сургуулийн гудамж 8, Баянгол дүүрэг',
   'https://www.must.edu.mn', 22000,
   ST_SetSRID(ST_MakePoint(106.9374, 47.9162), 4326)),

  ('Монгол Улсын Боловсролын Их Сургууль', 'МУБИС',
   'Бага тойруу 14, Баянзүрх дүүрэг',
   'https://www.msue.edu.mn', 9000,
   ST_SetSRID(ST_MakePoint(106.8832, 47.9021), 4326)),

  ('Монгол Улсын Анагаахын Шинжлэх Ухааны Их Сургууль', 'МАУИС',
   'Замчид гудамж 3, Сүхбаатар дүүрэг',
   'https://www.mnums.edu.mn', 6000,
   ST_SetSRID(ST_MakePoint(106.8945, 47.9098), 4326)),

  ('Хууль Зүйн Их Сургууль', 'ХЗИС',
   'Чингэлтэй дүүрэг',
   'https://www.legaluniversity.edu.mn', 4500,
   ST_SetSRID(ST_MakePoint(106.9120, 47.9210), 4326));

CREATE INDEX IF NOT EXISTS universities_geom_idx
  ON universities USING GIST (geom);
