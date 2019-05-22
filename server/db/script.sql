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
    uuid VARCHAR(36),
    date datetime,
    PRIMARY KEY(uuid)
);

CREATE TABLE answer(
    id INT AUTO_INCREMENT,
    userId INT,
    questionId INT,
    answer BOOLEAN,
    sessionId VARCHAR(36),
    PRIMARY KEY(id),
    FOREIGN KEY(userId) REFERENCES user(id),
    FOREIGN KEY(questionId) REFERENCES question(id),
    FOREIGN KEY(sessionId) REFERENCES session(uuid)
);

INSERT INTO user VALUES
(NULL, 'Patricio Pérez Pinto', 'pperezp@gmail.com');

INSERT INTO session VALUES('baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0', NOW());

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
(NULL, 1, 1,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 2,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 3,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 4,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 5,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 6,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 7,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 8,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 9,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 10,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 11,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 12,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 13,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 14,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 15,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 16,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 17,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 18,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 19,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 20,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 21,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 22,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 23,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 24,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 25,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 26,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 27,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 28,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 29,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 30,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 31,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 32,TRUE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 33,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'),
(NULL, 1, 34,FALSE, 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0');

SELECT * FROM user;
SELECT * FROM question;
SELECT * FROM session;
SELECT * FROM answer;

DROP TABLE answer;
DROP TABLE session;
DROP TABLE question;
DROP TABLE user;

-- Porcentaje de male
SELECT 
    (
        (
            SELECT 
                COUNT(0) 
            FROM 
                answer 
            WHERE 
                answer IS TRUE AND 
                userId = 1 AND
                sessionId = 'baafaa2d-7c2d-11e9-891d-c7d8e6f51aa0'
        ) /
        (
            SELECT COUNT(0) FROM answer
        ) * 100
    ) 'Porcentaje';