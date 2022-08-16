-- SQL Mini Project #1

CREATE TABLE videos (
    ID serial PRIMARY KEY,
    video_id int,
    video_title VARCHAR(255) NOT NULL,
    length_in_minutes int,
    url VARCHAR(255) NOT NULL
);

INSERT INTO videos (video_id, video_title, length_in_minutes, url) 
VALUES
(1231, 'Rex Incognito', 2, 'https://youtu.be/L4D7zZGAYUg'),
(0417, 'Path of Yaksha', 2, 'https://youtu.be/-cXUkovtA3U'),
(0715, 'Elogia Cinerosa', 4, 'https://youtu.be/yFrH9y_cpLg'),
(1029, 'Thunderings of the Merciless', 3, 'https://youtu.be/eFJ0f8udERg');

CREATE TABLE reviewers (
    ID serial PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    rating int,
    short_text_review VARCHAR(255) NOT NULL,
    video_id int
);

INSERT INTO reviewers (user_name, rating, short_text_review, video_id) 
VALUES
('Kenma Kozume', 4, 'Yu-Peng Chen has the most amazing compositions.', 0715),
('Hinata Shoyo', 5, 'These Osts are so good!', 0417),
('Kuuro Tetsuro', 5, 'Talented, brilliant, incredible, amazing, show stopping, spectacular-', 1231),
('Oikawa Toru', 2, 'This music frustrates me because of how good it is.', 0715),
('Akaashi Keiji', 5, 'Having such high quality battle music is the reason why I still play this game.', 1029),
('Yaku Morisuke', 5, 'Genshin never dissapoints with their art in both music and story telling.', 1029);

SELECT * FROM videos LEFT JOIN reviewers ON videos.video_id = reviewers.video_id
