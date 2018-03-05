-- Coursework for the Database Management Module
-- Ioannis Valasakis <code@wizofe.uk>
-- Copyright (c) 2018, GNU GPL v3.0
-- See the IV_DB_CW.pdf for description and analysis of the database design

CREATE TABLE IF NOT EXISTS buildings (
gridRef VARCHAR(30) NOT NULL,
material VARCHAR(30),
PRIMARY KEY (gridRef)
);

CREATE TABLE IF NOT EXISTS rooms (
roomID INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
gridRef VARCHAR(30) NOT NULL,
rtype VARCHAR(30) NOT NULL,
rspace FLOAT(10) NOT NULL,
aspect VARCHAR(30),
INDEX (rtype, aspect),
PRIMARY KEY (roomID),
FOREIGN KEY (gridRef) REFERENCES buildings(gridRef)
);

CREATE TABLE IF NOT EXISTS measures (
measID int(10) UNSIGNED,
roomID INT(10) UNSIGNED,
rtime DATETIME NOT NULL,
temperature FLOAT(6),
humidity FLOAT(6),
genus VARCHAR(30),
species VARCHAR(30),
INDEX (genus, species),
PRIMARY KEY(measID, roomID),
FOREIGN KEY (roomID) REFERENCES rooms(roomID)
);

-- Insert some dummy data to test the database

INSERT INTO buildings VALUES
  ('AA1', 'wood, stone'),
  ('AA2', 'asbestos'),
  ('AA3', 'stone');

INSERT INTO rooms (gridref, rtype, rspace, aspect) VALUES
  ('AA1', 'bedroom', 45, 'north'),
  ('AA1', 'library', 120, 'south'),
  ('AA1', 'library', 35, 'east'),
  ('AA2', 'hall', 20, 'east'),
  ('AA3', 'library', 20, 'east'),
  ('AA3', 'kitchen', 225, 'north'),
  ('AA3', 'kitchen', 225, 'west'),
  ('AA3', 'bathroom', 225, 'north'),
  ('AA1', 'kitchen', 225, 'west'),
  ('AA2', 'kitchen', 225, 'west');

INSERT INTO measures (measID, roomID, rtime, temperature, humidity, genus, species) VALUES
  (10, 1, CURRENT_TIMESTAMP, 33, 2.3, 'Aspergillus', 'versicolor'),
  (22, 2, CURRENT_TIMESTAMP, 27, 9.18, 'Aspergillus', 'fumigatus'),
  (11, 2, CURRENT_TIMESTAMP, 27, 91.5, 'Aspergillus', 'nidulans'),
  (15, 2, CURRENT_TIMESTAMP, 27, 80, 'Aspergillus', 'versicolor'),
  (11, 5, CURRENT_TIMESTAMP, 27, 62.35, 'Aspergillus', '');
