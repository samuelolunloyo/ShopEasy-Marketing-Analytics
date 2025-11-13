SELECT * FROM dbo.customer_journey
----------------------------------------------------------------------------

-------Step 1: Checking for NULL Values-------------------------------------
SELECT * FROM dbo.customer_journey
WHERE	Duration IS NULL;

------- Step 2: Replacing for NULL Values with 0----------------------------
	UPDATE dbo.customer_journey
	SET Duration = 0
	WHERE Duration IS NULL;

------- Step 3: Check for improper case-------------------------------------
SELECT * FROM dbo.customer_journey
WHERE	Stage = 'checkout';

------- Step 4: Replace improper case---------------------------------------

UPDATE dbo.customer_journey
SET Stage = 'Checkout'
WHERE Stage = 'checkout';

UPDATE dbo.customer_journey
SET Stage = 'Productpage'
WHERE Stage = 'productpage';

UPDATE dbo.customer_journey
SET Stage = 'Homepage'
WHERE Stage = 'homepage';

---Check if the cases are uniform---------------------------------
SELECT DISTINCT Stage
FROM dbo.customer_journey;

----Check for cases in Actions-------------------------------------
SELECT DISTINCT Action
FROM dbo.customer_journey;