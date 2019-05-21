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

SELECT * FROM user;
SELECT * FROM question;
SELECT * FROM answer;