CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email) VALUES ('johndoe', 'johndoe@example.com');
INSERT INTO users (username, email) VALUES ('janedoe', 'janedoe@example.com');
INSERT INTO users (username, email) VALUES ('alice', 'alice@example.com');
INSERT INTO users (username, email) VALUES ('bob', 'bob@example.com');

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price NUMERIC(10, 2) NOT NULL CHECK (price > 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, description, price) VALUES ('Product 1', 'Description for Product 1', 19.99);
INSERT INTO products (name, description, price) VALUES ('Product 2', 'Description for Product 2', 29.99);
INSERT INTO products (name, description, price) VALUES ('Product 3', 'Description for Product 3', 39.99);
INSERT INTO products (name, description, price) VALUES ('Product 4', 'Description for Product 4', 49.99);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    product_id INT REFERENCES products(id),
    quantity INT NOT NULL CHECK (quantity > 0),
    total_price NUMERIC(10, 2) NOT NULL,
    ordered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO orders (user_id, product_id, quantity, total_price) VALUES (1, 1, 2, 39.98);
INSERT INTO orders (user_id, product_id, quantity, total_price) VALUES (2, 3, 1, 39.99);
INSERT INTO orders (user_id, product_id, quantity, total_price) VALUES (3, 2, 4, 119.96);
INSERT INTO orders (user_id, product_id, quantity, total_price) VALUES (4, 1, 1, 19.99);
