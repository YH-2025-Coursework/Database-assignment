INSERT INTO Users (EmailAddress, PasswordHash, CreatedAt)
VALUES
('alice@example.com', 'hash1', SYSDATETIME()),
('bob@example.com',   'hash2', SYSDATETIME()),
('carol@example.com', 'hash3', SYSDATETIME()),
('dave@example.com',  'hash4', SYSDATETIME());

INSERT INTO UserProfiles (UserId, DisplayName, ProfileStatus, UserpicUrl)
VALUES
(1, 'Alice', 'Online',  NULL),
(2, 'Bob',   'Away',    NULL),
(3, 'Carol', 'Offline', NULL);

INSERT INTO Posts (AuthorUserId, Content, Visibility, CreatedAt)
VALUES
(1, 'Hello world',        1, SYSDATETIME()),
(1, 'Another post',       1, SYSDATETIME()),
(2, 'Bob''s first post',  1, SYSDATETIME()),
(3, 'Carol here',         2, SYSDATETIME()),
(2, 'Private note',       0, SYSDATETIME());

INSERT INTO Follows (FollowerUserId, FollowedUserId, CreatedAt)
VALUES
(1, 2, SYSDATETIME()),  -- Alice follows Bob
(1, 3, SYSDATETIME()),  -- Alice follows Carol
(2, 1, SYSDATETIME()),  -- Bob follows Alice
(3, 2, SYSDATETIME());  -- Carol follows Bob
