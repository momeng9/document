SELECT TOP 10 * FROM Usermanagement WHERE id NOT IN
(
    SELECT TOP ((1-1)*10) id FROM Usermanagement  ORDER BY id
)
ORDER BY id