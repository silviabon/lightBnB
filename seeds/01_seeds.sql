INSERT INTO users (name, email, password) VALUES 
('Preston Auer', 'preston@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Carl Goush', 'goush@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Maria Guanabara', 'maria@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Mercedes Tuch', 'tuch@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Jones McDonald', 'jones@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Jennifer Stout', 'stout@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('John Barney', 'barney@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Konstantin Schulash', 'k_schu@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Foster McGill', 'f_mcgill@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Kenya Macedo', 'kenya@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

ALTER SEQUENCE users_id_seq RESTART WITH 11;

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, 
number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code) VALUES
(1, 'cute place', 'description', 'http://images/imageurl.jpg', 'http://images/imageurl.jpg', 120, 1, 1, 1, 'Canada', '300 Cameron street', 'Surrey', 'BC', 'V3G3H6'),
(2, 'ugly shack', 'description', 'http://images/imageurl.jpg', 'http://images/imageurl.jpg', 30, 4, 0, 0, 'Canada', '5370 Hastings street', 'Vancouver', 'BC', 'V3G3H6'),
(3, 'ok place', 'description', 'http://images/imageurl.jpg', 'http://images/imageurl.jpg', 70, 0, 1, 1, 'Canada', '1377 W 14th street', 'Burnaby', 'BC', 'V3G3H6'),
(4, 'huge apartment', 'description', 'http://images/imageurl.jpg', 'http://images/imageurl.jpg', 650, 1, 2, 3, 'Canada', '5927 Harwood street', 'Vancouver', 'BC', 'V3G3H6');

ALTER SEQUENCE properties_id_seq RESTART WITH 5;

INSERT INTO reservations (guest_id, property_id, start_date, end_date) VALUES
(5, 1, '2018-11-19T08:00:00.000Z', '2018-11-21T08:00:00.000Z'),
(6, 2, '2019-06-10T08:00:00.000Z', '2019-06-15T08:00:00.000Z'),
(5, 1, '2019-09-17T08:00:00.000Z', '2019-06-18T08:00:00.000Z'),
(7, 3, '2019-10-10T08:00:00.000Z', '2019-10-14T08:00:00.000Z'),
(8, 4, '2019-12-23T08:00:00.000Z', '2020-01-02T08:00:00.000Z');

ALTER SEQUENCE reservations_id_seq RESTART WITH 6;

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES
(5, 1, 1, 4, 'message'),
(6, 2, 2, 1, 'message'),
(7, 3, 4, 3, null),
(8, 4, 5, 5, 'message');

ALTER SEQUENCE property_reviews_id_seq RESTART WITH 5;