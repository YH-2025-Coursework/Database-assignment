-- 1. Filter users by email domain
SELECT UserId, EmailAddress, CreatedAt
FROM Users
WHERE EmailAddress LIKE '%@example.com';


-- 2. Latest posts first
SELECT PostId, AuthorUserId, CreatedAt, Visibility
FROM Posts
ORDER BY CreatedAt DESC, PostId DESC;


-- 3. Posts containing a substring "post"
SELECT PostId, AuthorUserId, Content
FROM Posts
WHERE Content LIKE '%post%';


-- 4. Public posts only, ordered first by author, then time
SELECT PostId, AuthorUserId, CreatedAt, Content
FROM Posts
WHERE Visibility = 1
ORDER BY AuthorUserId ASC, CreatedAt DESC;


-- 5. Count posts per user
SELECT AuthorUserId, COUNT(*) AS PostCount
FROM Posts
GROUP BY AuthorUserId
ORDER BY PostCount DESC, AuthorUserId ASC;


-- 6. Count followers per followed user
SELECT FollowedUserId, COUNT(*) AS FollowerCount
FROM Follows
GROUP BY FollowedUserId
ORDER BY FollowerCount DESC, FollowedUserId ASC;
