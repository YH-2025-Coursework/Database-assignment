-- 1. Delete a specific post
DELETE FROM Posts
WHERE PostId = 3;

-- 2. Delete a follow relationship
DELETE FROM Follows
WHERE FollowerUserId = 1
  AND FollowedUserId = 3;
