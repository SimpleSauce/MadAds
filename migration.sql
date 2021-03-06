USE adlister_db;

DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
<<<<<<< HEAD
=======
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    parent_id INT UNSIGNED NOT NULL,
    name TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (parent_id) REFERENCES users(id)
        ON DELETE CASCADE
>>>>>>> 39ef0abdd9ffbede95215c4dc86c7ef84842467d
);