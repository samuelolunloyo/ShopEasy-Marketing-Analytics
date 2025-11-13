SELECT * FROM dbo.engagement_data;

SELECT DISTINCT ContentType FROM dbo.engagement_data;

------Change to consistent CASE ----------------------
UPDATE dbo.engagement_data
SET ContentType = 'Newsletter'
WHERE ContentType = 'newsletter';

UPDATE dbo.engagement_data
SET ContentType = 'Video'
WHERE ContentType = 'video';

UPDATE dbo.engagement_data
SET ContentType = 'SocialMedia'
WHERE ContentType = 'Socialmedia';

UPDATE dbo.engagement_data
SET ContentType = 'Blog'
WHERE ContentType = 'blog';
	