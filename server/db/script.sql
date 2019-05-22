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

CREATE TABLE session(
    id INT AUTO_INCREMENT,
    userId INT,
    date datetime,
    PRIMARY KEY(id),
    FOREIGN KEY(userId) REFERENCES user(id)
);

CREATE TABLE answer(
    id INT AUTO_INCREMENT,
    questionId INT,
    answer BOOLEAN,
    sessionId INT,
    PRIMARY KEY(id),
    FOREIGN KEY(questionId) REFERENCES question(id),
    FOREIGN KEY(sessionId) REFERENCES session(id)
);

INSERT INTO user VALUES
(NULL, 'Patricio Pérez Pinto', 'pperezp@gmail.com');

INSERT INTO user VALUES
(NULL, 'Ricardo Soto', 'rsoto@gmail.com');

INSERT INTO session VALUES(NULL, 1, NOW());

INSERT INTO question VALUES
(NULL, '¿Eres experto en Futbol?'),
(NULL, '¿Sabes de mecánica de autos?'),
(NULL, '¿Has cazado alguna vez?'),
(NULL, '¿Juegas futbol una vez por semana?'),
(NULL, '¿Tienes barba?'),
(NULL, '¿Sabes de cortes de carnes?'),
(NULL, '¿Te comes el cartilago de la carne?'),
(NULL, '¿Tienes pelo en pecho?'),
(NULL, '¿Shampoo y jabón son tus únicos útiles de aseo?'),
(NULL, '¿Te gustan todas las mujeres?'),
(NULL, '¿Tienes un set de herramientas?'),
(NULL, '¿Eres capaz de nombrar a 5 actrices porno?'),
(NULL, '¿Ves teleseries?'),
(NULL, '¿Te gustan los gatos?'),
(NULL, '¿Te gusta el shushi?'),
(NULL, '¿Bailas por gusto?'),
(NULL, '¿Eres ambientalista / ecologista?'),
(NULL, '¿Eres feminista?'),
(NULL, '¿Eres animalista?'),
(NULL, '¿Has jugado FIFA o PES en los últimos 6 meses?'),
(NULL, '¿Te recortas o afeitas los pelos de la axila?'),
(NULL, '¿Usas blistex?'),
(NULL, '¿Has cortado un arbol con un hacha?'),
(NULL, '¿Has ido más de 2 veces al médico los últimos 6 meses?'),
(NULL, '¿Has disparado un arma?'),
(NULL, '¿Has montado un caballo?'),
(NULL, '¿Te miras más de 3 veces al espejo por día?'),
(NULL, '¿Has pescado alguna vez?'),
(NULL, '¿Has dormido con un hombre?'),
(NULL, '¿Has peleado a mano limpia?'),
(NULL, '¿Te has sacado las cejas alguna vez?'),
(NULL, '¿Leche entera o Leche descremada?'),
(NULL, '¿Te has depilado?'),
(NULL, '¿Has matado a algún animal?');

INSERT INTO answer VALUES
(NULL, 1,TRUE, 1),
(NULL, 2,TRUE, 1),
(NULL, 3,FALSE, 1),
(NULL, 4,FALSE, 1),
(NULL, 5,TRUE, 1),
(NULL, 6,TRUE, 1),
(NULL, 7,TRUE, 1),
(NULL, 8,FALSE, 1),
(NULL, 9,TRUE, 1),
(NULL, 10,TRUE, 1),
(NULL, 11,TRUE, 1),
(NULL, 12,TRUE, 1),
(NULL, 13,FALSE, 1),
(NULL, 14,FALSE, 1),
(NULL, 15,TRUE, 1),
(NULL, 16,FALSE, 1),
(NULL, 17,TRUE, 1),
(NULL, 18,TRUE, 1),
(NULL, 19,TRUE, 1),
(NULL, 20,FALSE, 1),
(NULL, 21,TRUE, 1),
(NULL, 22,TRUE, 1),
(NULL, 23,FALSE, 1),
(NULL, 24,TRUE, 1),
(NULL, 25,TRUE, 1),
(NULL, 26,TRUE, 1),
(NULL, 27,TRUE, 1),
(NULL, 28,FALSE, 1),
(NULL, 29,TRUE, 1),
(NULL, 30,FALSE, 1),
(NULL, 31,TRUE, 1),
(NULL, 32,TRUE, 1),
(NULL, 33,FALSE, 1),
(NULL, 34,FALSE, 1);

SELECT * FROM user;
SELECT * FROM question;
SELECT * FROM session;
SELECT * FROM answer;

DROP TABLE answer;
DROP TABLE session;
DROP TABLE question;
DROP TABLE user;

-- Porcentaje de macho segun usuario e id de session
SELECT 
    (
        (
            SELECT 
                COUNT(0) 
            FROM 
                answer 
                JOIN session ON session.id = answer.sessionId
            WHERE 
                answer.answer IS TRUE AND 
                session.userId = 1 AND
                session.id = 1
        ) /
        (SELECT COUNT(0) FROM question) * 100
    ) 'Porcentaje';