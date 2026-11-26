-- ============================================================
-- StreamFlix Database — SQL Project 1 (Beginner, market-ready)
-- Run this WHOLE file first to create and fill the tables.
-- Works in SQLite, MySQL and most SQL tools.
-- NOTE: some values are intentionally NULL (missing) or messy —
--       that is real-world data, and handling it is part of the job.
-- ============================================================

DROP TABLE IF EXISTS views;
DROP TABLE IF EXISTS shows;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id       INTEGER PRIMARY KEY,
    full_name     VARCHAR(100),
    country       VARCHAR(50),
    age           INTEGER,            -- some are NULL (unknown)
    signup_date   DATE,
    plan          VARCHAR(20),        -- Basic / Standard / Premium
    monthly_price DECIMAL(10,2),
    is_active     INTEGER,            -- 1 = active, 0 = cancelled
    cancel_date   DATE                -- NULL if still active
);

CREATE TABLE shows (
    show_id      INTEGER PRIMARY KEY,
    title        VARCHAR(100),
    genre        VARCHAR(50),
    release_year INTEGER,
    rating       DECIMAL(3,1),        -- some are NULL (not yet rated)
    duration_min INTEGER
);

CREATE TABLE views (
    view_id         INTEGER PRIMARY KEY,
    user_id         INTEGER,
    show_id         INTEGER,
    watch_date      DATE,
    minutes_watched INTEGER,
    device          VARCHAR(20)
);

-- users
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (1, 'Thabo Nkosi', 'South Africa', 28, '2026-01-05', 'Premium', 199.0, 1, NULL);
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (2, 'Lerato Mokoena', 'South Africa', NULL, '2026-01-12', 'Basic', 99.0, 1, NULL);
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (3, 'Sipho Dlamini', 'Nigeria', 35, '2026-01-20', 'Standard', 149.0, 0, '2026-04-02');
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (4, 'Naledi Khumalo', 'south africa', 22, '2026-02-01', 'Premium', 199.0, 1, NULL);
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (5, 'Ayanda Zulu', 'Kenya', 41, '2026-02-14', 'Basic', 99.0, 1, NULL);
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (6, 'Kagiso Molefe', 'Nigeria', NULL, '2026-02-20', 'Standard', 149.0, 0, '2026-05-10');
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (7, 'Zinhle Ndlovu', 'South Africa', 30, '2026-03-03', 'Premium', 199.0, 1, NULL);
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (8, 'Tshepo Maseko', 'Kenya', 26, '2026-03-11', 'Basic', 99.0, 0, '2026-05-28');
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (9, 'Grace Okafor', 'Nigeria', 33, '2026-03-19', 'Standard', 149.0, 1, NULL);
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (10, 'David Mwangi', 'Kenya', NULL, '2026-04-02', 'Premium', 199.0, 1, NULL);
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (11, 'Fatima Bello', 'Nigeria', 19, '2026-04-15', 'Basic', 99.0, 1, NULL);
INSERT INTO users (user_id, full_name, country, age, signup_date, plan, monthly_price, is_active, cancel_date) VALUES (12, 'Lebo Sithole', 'South Africa', 45, '2026-04-28', 'Standard', 149.0, 0, '2026-06-15');

-- shows
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (101, 'Township Tales', 'Drama', 2025, 8.4, 48);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (102, 'Savanna Kings', 'Documentary', 2024, 7.9, 52);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (103, 'Lagos Nights', 'Drama', 2026, 8.8, 45);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (104, 'Code Red', 'Thriller', 2025, 7.2, 51);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (105, 'Mama''s Kitchen', 'Comedy', 2023, 6.8, 30);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (106, 'Desert Run', 'Thriller', 2026, 8.1, 47);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (107, 'The Last Goal', 'Drama', 2024, 9.0, 55);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (108, 'Market Day', 'Comedy', 2026, NULL, 28);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (109, 'Wild Coast', 'Documentary', 2025, 7.5, 50);
INSERT INTO shows (show_id, title, genre, release_year, rating, duration_min) VALUES (110, 'City Lights', 'Drama', 2022, 6.5, 42);

-- views
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (1, 1, 101, '2026-05-02', 48, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (2, 1, 103, '2026-05-03', 45, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (3, 1, 107, '2026-05-10', 55, 'Mobile');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (4, 2, 105, '2026-05-04', 30, 'Mobile');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (5, 2, 101, '2026-05-12', 20, 'Mobile');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (6, 3, 104, '2026-03-15', 51, 'Laptop');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (7, 3, 106, '2026-03-20', 47, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (8, 4, 103, '2026-05-05', 45, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (9, 4, 107, '2026-05-18', 55, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (10, 4, 101, '2026-06-01', 48, 'Mobile');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (11, 5, 102, '2026-05-07', 52, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (12, 5, 109, '2026-05-20', 50, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (13, 7, 103, '2026-05-09', 45, 'Laptop');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (14, 7, 107, '2026-05-15', 55, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (15, 7, 110, '2026-06-02', 42, 'Mobile');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (16, 9, 104, '2026-05-11', 51, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (17, 9, 106, '2026-05-22', 47, 'Laptop');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (18, 9, 103, '2026-06-05', 45, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (19, 10, 107, '2026-05-14', 55, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (20, 10, 101, '2026-05-25', 48, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (21, 11, 105, '2026-05-16', 30, 'Mobile');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (22, 11, 108, '2026-05-26', 28, 'Mobile');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (23, 1, 102, '2026-06-03', 52, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (24, 4, 106, '2026-06-07', 47, 'TV');
INSERT INTO views (view_id, user_id, show_id, watch_date, minutes_watched, device) VALUES (25, 7, 101, '2026-06-10', 48, 'TV');

