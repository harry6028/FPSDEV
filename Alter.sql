--liquibase formatted sql

--changeset Haru:2
CREATE FUNCTION km_to_miles (@km float)
RETURNS float
AS
BEGIN
        DECLARE @miles float
        SELECT @miles = @km*0.6214
        RETURN(@miles)
END
GO

--rollback drop FUNCTION  km_to_miles ;