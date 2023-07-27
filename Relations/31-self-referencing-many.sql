-- for a social networking app, one user can have many friends which are basically users 
-- so here we need a relations table as well

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    f_name VARCHAR(255)
);

-- relations table N:N 
CREATE TABLE IF NOT EXISTS users_friends (
    user_id INT UNSIGNED,
    friend_id INT UNSIGNED,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (friend_id) REFERENCES users(id) ON DELETE CASCADE,
    CHECK (user_id < friend_id),
    -- can also be friend_id<user_id; this is to ensure avoiding adding same relation in 2 ways
    PRIMARY KEY (user_id, friend_id)
);
