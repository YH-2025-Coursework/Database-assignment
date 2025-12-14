-- 1. Update a user’s profile status
UPDATE UserProfiles
SET ProfileStatus = 'Online'
WHERE UserId = 1;

-- 2. Change visibility of a post
UPDATE Posts
SET Visibility = 0
WHERE PostId = 2;

-- 3. Update multiple rows at once
UPDATE Posts
SET Visibility = 1
WHERE AuthorUserId = 1;
