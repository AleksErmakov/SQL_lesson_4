INSERT INTO Artist(name_alias)
VALUES
('SUM 41'),
('Pink Floyd'),
('Madona'),
('Eminem'),
('Taylor Swift'),
('DJ Tiesto'),
('The Band'),
('Frank Sinatra'),
('Katy Perry'),
('Snoop Dogg');

INSERT INTO Genre(name)
VALUES
('PUNK'),
('ROCK'),
('POP'),
('HIP-HOP'),
('FOLK'),
('ELECTRO'),
('COUNTRY'),
('JAZZ');

INSERT INTO genre_artist(artist_id, genre_id)
VALUES  
('1', '1'),
('1', '2'),
('2', '2'),
('3', '3'),
('3', '4'),
('4', '4'),
('5', '3'),
('5', '5'),
('5', '7'),
('6', '6'),
('7', '2'),
('7', '3'),
('7', '5'),
('8', '8'),
('9', '3'),
('9', '4'),
('9', '7'),
('10', '4'),
('10', '3');

INSERT INTO Album(name, release_date) 
VALUES
('Underclass Hero', '2017'),
('The Wall', '2011'),
('The Holiday Collection', '2022'),
('Revival', '2009'),
('Speak Now', '2010'),
('The London sessions', '2019'),
('Music from Big Pink', '2021'),
('All the Way', '2022'),
('Smile', '2012'),
('Bush', '2020');


INSERT INTO Artist_Album(album_id, artist_id)
VALUES
('1', '1'),
('1', '9'),
('2', '2'),
('2', '7'),
('3', '3'),
('3', '4'),
('4', '4'),
('4', '3'),
('5', '5'),
('5', '10'),
('6', '6'),
('7', '7'),
('7', '2'),
('8', '8'),
('9', '1'),
('9', '9'),
('9', '10'),
('10', '10'),
('10', '9'),
('10', '5');


INSERT INTO Track(name, duration, album_id) 
VALUES
('Walking Disaster', '286', '1'),
('Look at Me', '243', '1'),
('One of My Turns', '204', '1'),
('Young Lust', '213', '2'),
('Material Girl', '240', '3'),
('Angel', '236', '3'),
('Remind Me', '225', '4'),
('Believe', '315', '4'),
('Back to December', '293', '5'),
('Mine', '220', '5'),
('On My California', '187', '6'),
('Blue', '168', '6'),
('I Shall Be Released', '209', '7'),
('We Can Talk', '206', '7'),
('My Heart Will Go On', '282', '8'),
('If You Asked Me To', '235', '8'),
('Never Really Over', '213', '9'),
('Daisies', '174', '9'),
('This City', '213', '10'),
('Awake', '271', '10');

INSERT INTO Collection (name, release_date) 
VALUES
('It is August', '2022'),
('Second', '2012'),
('Third', '2015'),
('Fat and Cat', '2021'),
('Just HP', '2016'),
('Old School', '2020'),
('Really Good or Quiet Mood', '2018'),
('Punk and Rock and Five o’clock', '2017');

INSERT INTO track_collection (track_id, collection_id)
VALUES
('1', '1'),
('1', '2'),
('1', '3'),
('2', '4'),
('2', '2'),
('2', '3'),
('3', '4'),
('4', '1'),
('5', '5'),
('5', '6'),
('5', '7'),
('5', '8'),
('6', '7'),
('6', '6'),
('7', '5'),
('7', '4'),
('7', '3'),
('8', '2'),
('8', '1'),
('9', '2'),
('9', '3'),
('9', '4'),
('9', '5'),
('10', '6'),
('11', '7'),
('12', '8'),
('12', '7'),
('13', '6'),
('13', '5'),
('14', '4'),
('14', '3'),
('14', '2'),
('15', '1'),
('16', '2'),
('16', '3'),
('17', '4'),
('17', '5');
