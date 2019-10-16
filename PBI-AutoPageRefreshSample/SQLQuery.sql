
DECLARE @i INT = 1;

WHILE (@i <= 60)

 BEGIN

  WAITFOR DELAY '00:00:01'

       /*Your Script*/
 Insert into Counter values(@i)
 SET  @i = @i + 1;

END