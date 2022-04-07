/* User Seeds Insert Begin */
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Matt' , 'matt@fakeemail.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.' );
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Eva Stanley', 'sebastianguerra@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Dominic Parks', 'victoriablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Sue Luna', 'jasonvincent@gmx.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Rosalie Garza', 'jacksondavid@gmx.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Etta West', 'charlielevy@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Margaret Wong', 'makaylaweiss@icloud.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users ( id, name, email, password ) VALUES ( DEFAULT, 'Leroy Hart', 'jaycereynolds@inbox.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
/* User Seeds Insert Completed */

/* Property Seeds Insert Begin */
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 1, 'The Hive',     'Experience a new level of relaxation at The Hive. A Bed and Breakfast dedicated to coding, programing and all sorts of languages. Art made only from code appears on the walls along with historical items from the times of history related to code. You will have your own cozy room complete with television and blazing speed direct internet access as well as a private bathroom, fridge and kitchenette.', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930.61, 6, 4, 8, 'Canada', '12345 Street', 'Vancouver', 'British Columbia', 'x1x 1x1', true );
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 1, 'Speed lamp',   'Over 20 years old, located in a prestigious and exclusive area of the city, Hacking House is a true masterpiece. It was built as a Bed and Breakfast to share its passion for coding, programing and all sorts of languages with the world.', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930.61, 6, 4, 8, 'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', '28142', true );
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 1, 'Blank corner', 'Heres the scenario. You are new in town, and looking for a place to stay. You are on a business trip and only want to focus on your company softball team is game plan. Or maybe you are just looking for a quiet place to relax while you visit your grandkids at the local university. Bed and Breakfast is the place for you. In an artistic twist, Bed And Breakfasts walls are covered with art made only from code. The lobby is designed to be a living room for tech geeks with couches, chairs, sofas and a pool table. There is even a computer call center set up so you can set up appointments or talk technology directly from the comfort of that massive leather sectional sofa.', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 85234, 6, 6, 7, 'Canada', '651 Nami Road', 'Bohbatev',  'Alberta', '83680', true );
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 2, 'Habit mix',    'This Bed and Breakfast is located on a large estate that allows you to look over a large portion of the home, watching over how the art is being created. In the backyard you are able to learn more about the history of languages and individuals that had a huge impact on the programming world, such as Steve Wozniak (Apple Computer) and Bill Gates (Microsoft).', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg', 46058, 0, 5, 6, 'Canada', '1650 Hejto Center',  'Genwezuj',  'Newfoundland And Labrador', '44583', true );
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 4, 'Headed know',  'The Bed and Breakfast is a place where developers go when they want to learn new things and you can find anything needed for creating fantastic programs. From books to others it has everything needed to get the job done. Come and see what is inside, you will never regret it!', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg', 82640, 0, 5, 5, 'Canada', '513 Powov Grove',    'Jaebvap',   'Ontario', '38051', true );
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 6, 'Port out',     'Open 24/7 on any day of the week, our bed & breakfast will provide the most relaxing place for you to experience all things programming related. You will be surrounded by computers and other devices that love to read, write and run code. From the moment you arrive, we will make sure you are equipped with a PS4 (with 120 GB green model), an HD projector, a gaming PC loaded with games, and more.', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 2358, 2, 8, 0, 'Canada', '1392 Gaza Junction', 'Upetafpuv', 'Nova Scotia', '81059', true );
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 6, 'Fun glad',     'Experience the romance of a bygone age, where elegance, refinement and style were hallmarks of hospitality. Our contemporary bed and breakfast is located in the heart of the wine country where we have taken painstaking care to maintain the character and charm of yesteryear. Indulge yourself with some time away from ordinary distractions to refresh, restore, and recharge with us.', 'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg', 34291, 6, 6, 4, 'Canada', '169 Nuwug Circle',   'Vutgapha',  'Newfoundland And Labrador', '00159', true );
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 7, 'Shine twenty', 'Come to our B&B and rest after coding. Relax in all code art. Allows you to program everything with code editing. Also has historical items of the time related to code and an area devoted to inventing your own machines that are based on code.', 'https://images.pexels.com/photos/2076739/pexels-photo-2076739.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2076739/pexels-photo-2076739.jpeg', 13644, 1, 7, 8, 'Canada', '340 Dokto Park',     'Upfufa',    'Nova Scotia', '29045', true );
INSERT INTO properties ( id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active ) VALUES ( DEFAULT, 8, 'Game fill',    'Say hello to your new favorite spot. All of the walls are covered in art made from code, historical items from the times of history related to code and computers. From beautiful paintings to a giant calculator that is functional to fairytales, every inch of wall will be used in this Bed and Breakfast.', 'https://images.pexels.com/photos/1756826/pexels-photo-1756826.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1756826/pexels-photo-1756826.jpeg', 23428, 5, 6, 4, 'Canada', '834 Buwmi Road',     'Rotunif',   'Newfoundland And Labrador', '58224', true );
/* Property Seeds Insert Completed */

/* Reservation Seeds Insert Begin */
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2018-09-11', '2018-09-26', 2, 3 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2019-01-04', '2019-02-01', 2, 2 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2021-10-01', '2021-10-14', 1, 4 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2014-10-21', '2014-10-21', 3, 5 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2016-07-17', '2016-08-01', 3, 4 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2018-05-01', '2018-05-27', 4, 8 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2022-10-04', '2022-10-23', 5, 1 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2015-09-13', '2015-09-30', 6, 8 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2023-05-27', '2023-05-28', 4, 2 );
INSERT INTO reservations ( id, start_date, end_date, property_id, guest_id ) VALUES ( DEFAULT, '2023-04-23', '2023-05-02', 8, 1 );
/* Reservation Seeds Insert Complete */

/* Reservation Seeds Insert Begin */
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 1, 1, 1, 10, 'The place had so much variety of programing! It was amazing!' );
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 2, 5, 10, 3, 'It was fantastic! They had so much experience in keeping us well supported and happy while we learned to program. The food was great and they even provided us with a private bathroom inside the room! I would highly recommend this place to anyone who is interested in learning how to program or needs a place to stay while they do it.');
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 1, 4, 1, 4,  'I was very tired and stressed out until I found this coding bed and breakfast. They were so helpful at keeping me well rested during my stay.');
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 8, 1, 2, 4, 'We were very happy with the Coding Bed & Breakfast and would definitely recommend it to anyone looking for a place to stay while they take on the challenge of learning how to code.');
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 3, 8, 5, 4, 'I am a big fan of the Coding B&B. It is a beautiful place, with the best service, and the work environment is great. What else could you ask for?');
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 4, 2, 7, 5, 'The owners were very nice and welcoming. They have a lot of experience in coding and are very good at what they do. They helped me find a great job with a local company! You can not get better than that!');
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 4, 3, 4, 4, 'I was very impressed with the short amount of time it took for Felice and Ben to respond to any question we had. This is a great place to stay if you are looking for a quiet, relaxing experience.');
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 5, 6, 3, 5, 'The rooms were very clean, and the location was great. And I really appreciated the flexibility of the staff in terms of checkin and checkout times. I was able to stay later than originally planned because of their helpfulness!');
INSERT INTO property_reviews ( id, guest_id, property_id, reservation_id, rating, message ) VALUES ( DEFAULT, 1, 1, 1, 10, 'the place had so much variety of programing! It was amazing!' );\
/* Reservation Seeds Insert Complete */