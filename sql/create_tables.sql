CREATE TABLE Users (
  UserId        int IDENTITY(1,1) PRIMARY KEY,
  EmailAddress  nvarchar(255) NOT NULL UNIQUE,
  PasswordHash  nvarchar(500) NOT NULL,
  CreatedAt     datetime2(0) NOT NULL
);

CREATE TABLE UserProfiles (
  UserId        int PRIMARY KEY,
  DisplayName   nvarchar(200) NOT NULL,
  ProfileStatus nvarchar(200) NULL,
  UserpicUrl    nvarchar(500) NULL,
  CONSTRAINT FK_UserProfiles_Users
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

CREATE TABLE Posts (
  PostId        int IDENTITY(1,1) PRIMARY KEY,
  AuthorUserId  int NOT NULL,
  Content       nvarchar(max) NOT NULL,
  Visibility    int NOT NULL,
  CreatedAt     datetime2(0) NOT NULL,
  CONSTRAINT FK_Posts_Users
    FOREIGN KEY (AuthorUserId) REFERENCES Users(UserId)
);

CREATE TABLE Follows (
  FollowerUserId int NOT NULL,
  FollowedUserId int NOT NULL,
  CreatedAt      datetime2(0) NOT NULL,
  CONSTRAINT PK_Follows PRIMARY KEY (FollowerUserId, FollowedUserId),
  CONSTRAINT FK_Follows_Follower
    FOREIGN KEY (FollowerUserId) REFERENCES Users(UserId),
  CONSTRAINT FK_Follows_Followed
    FOREIGN KEY (FollowedUserId) REFERENCES Users(UserId)
);
