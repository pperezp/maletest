CREATE DATABASE maletestDB;

USE maletestDB;

CREATE TABLE user(
    id INT AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE question(
    id INT AUTO_INCREMENT,
    description VARCHAR(200),
    PRIMARY KEY(id)
);

CREATE TABLE answer(
    id INT AUTO_INCREMENT,
    userId INT,
    questionId INT,
    answer BOOLEAN,
    PRIMARY KEY(id),
    FOREIGN KEY(userId) REFERENCES user(id),
    FOREIGN KEY(questionId) REFERENCES question(id)
);

SELECT * FROM user;
SELECT * FROM question;
SELECT * FROM answer;