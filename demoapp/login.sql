CREATE OR REPLACE FUNCTION LOGIN 
(
  USERNAME IN VARCHAR2 
, PASS IN VARCHAR2 
) RETURN NUMBER IS
    cnt NUMBER;
BEGIN
    EXECUTE IMMEDIATE 'SELECT COUNT(*) FROM LOGINS WHERE USERNAME='''||USERNAME||''' AND PASSWORD='''||PASS||'''' INTO cnt;
    IF cnt > 0 THEN
        RETURN 1;
    END IF;
    RETURN 0;
END LOGIN;