SELECT 
    ROWNUM, 
    ID, 
    USERNAME, 
    PASSWORD, 
    DB_NAME, 
    APPLICATION, 
    DATE_CREATED, 
    REQUESTOR, 
    REMARKS, 
    STATUS 
FROM 
    USER_MASTER 
WHERE 
    USERNAME 
IN 
    (SELECT USERNAME FROM DBA_USERS) 
AND 
    USERNAME LIKE CONCAT(:search,'%')