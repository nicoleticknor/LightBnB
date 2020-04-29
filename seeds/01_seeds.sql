/*
seeds/01_seeds.sql
*/

INSERT INTO users (
  name,
  email,
  password
) VALUES 
(
  'Christopher Guest',
  'guffman@hotmail.com',
  '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
),
(
  'Andre the Giant',
  'bigint@gmail.com',
  '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
),
(
  'Eugene Levy',
  'lefty@yorkshire.co.uk',
  '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
);

INSERT INTO properties (
  owner_id,
  title,
  description,
  thumbnail_photo_url,
  cover_photo_url,
  cost_per_night,
  parking_spaces,
  number_of_bathrooms,
  number_of_bedrooms,
  country,
  street,
  city,
  province,
  post_code,
  active
) VALUES 
(
  1,
  'The Jewel of Blaine, MO',
  'Just blocks from off-off-off-off-Broadway',
  'https://api.creativecommons.engineering/t/600/https://farm5.staticflickr.com/4560/24445386508_cd6406b9db_m.jpg',
  'https://ccsearch.creativecommons.org/photos/dffb9370-454c-4831-9412-262a7c905b08',
  8000,
  2,
  1,
  2,
  'USA',
  '123 Maple Drive',
  'Blaine',
  'Missouri',
  '10782',
  TRUE
);
(
  2,
  'A Giant House',
  'A bit small for me, but perhaps you will like it',
  'https://api.creativecommons.engineering/t/600/https://farm6.staticflickr.com/5632/20358371509_3a22ae4a9c_m.jpg',
  'https://farm6.staticflickr.com/5632/20358371509_3a22ae4a9c_b.jpg',
  45000,
  18,
  5,
  12,
  'USA',
  '1 Giant House Way',
  'Blaine',
  'Missouri',
  '10783',
  TRUE
),(
  3,
  'Home Sweet Home',
  'A cosy home away from home for you and your family.',
  'https://api.creativecommons.engineering/t/600/https://live.staticflickr.com/4632/39756741524_5501546f37_m.jpg',
  'https://live.staticflickr.com/4632/39756741524_5501546f37_b.jpg',
  12000,
  4,
  3,
  5,
  'USA',
  '1996 Fleck Street',
  'Blaine',
  'Missouri',
  '10773',
  TRUE
);

INSERT INTO reservations (
  start_date,
  end_date,
  property_id,
  guest_id
) VALUES (
  '2018-09-11',
  '2018-09-26',
  2,
  1
),(
  '2019-09-10',
  '2019-09-27',
  2,
  1
),(
  '2019-08-01',
  '2019-09-05',
  2,
  3
);

INSERT INTO property_reviews (
  guest_id,
  property_id,
  reservation_id,
  rating,
  message
) VALUES (
  1,
  2,
  1,
  5,
  'Amazing! Stunning! There was even a Remains of the Day lunchbox to carry my picnics!'
),(
  1,
  2,
  1,
  1,
  'The ROTD lunchbox was gone!! So disappointed. Im going home and I''m gonna... I''m gonna bite my pillow is what I''m gonna do!'
),(
  3,
  2,
  1,
  5,
  'Extremely accessible floorplan; just great for my two left feet.'
);
