-- 1. Users with their profiles
SELECT 
  u.UserId,
  u.EmailAddress,
  up.DisplayName,
  up.ProfileStatus
FROM Users u
LEFT JOIN UserProfiles up
  ON u.UserId = up.UserId
ORDER BY u.UserId;

-- 2. Posts with author information
SELECT
  p.PostId,
  p.Content,
  p.CreatedAt,
  u.EmailAddress AS AuthorEmail
FROM Posts p
JOIN Users u
  ON p.AuthorUserId = u.UserId
ORDER BY p.CreatedAt DESC;

--3. Follower - followed pairs with readable names
SELECT
  follower.UserId   AS FollowerId,
  follower.EmailAddress AS FollowerEmail,
  followed.UserId   AS FollowedId,
  followed.EmailAddress AS FollowedEmail,
  f.CreatedAt       AS FollowedAt
FROM Follows f
JOIN Users follower
  ON f.FollowerUserId = follower.UserId
JOIN Users followed
  ON f.FollowedUserId = followed.UserId
ORDER BY f.CreatedAt;
