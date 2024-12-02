--Create a database for a family.

--Create a table for the family members with name, surname, date_of_birth, id (autoincremented primary key) (your family).
DESCRIBE family.members;

--Create a table that lists different fruit types (varchar for fruit name), id.
DESCRIBE family.friuts;

--Create a table that has the number of pieces of fruit each family member ate in a month (family_id, fruit_id, number_eaten, date_eaten).
DESCRIBE family.eaten;

--Populate these tables with information from your family (insert).
INSERT INTO fruits (fruits)
VALUES ('Strawberry'),
       ('Apricot'),
       ('Guava')

--SHOw how to update a person's name if there is a spelling mistake (update).
UPDATE family.members
SET last_name = 'Jackson'
WHERE idmembers = 7;
SELECT * FROM family.members;

--Show how to delete a person from the family_member tables.
DELETE FROM family.members
WHERE idmembers = 8;
SELECT * FROM family.members;

--Create a select on the fruit table that lists all fruits in the table.
 SELECT * FROM family.friuts;

--Create a select on the family table that lists all family members.
SELECT * FROM family.members;

--Create a select on the family_id table that joins to the fruit table so that it can show each piece of fruit a family member eats (like joining clients table to invoices table)
SELECT
      fm.first_namel,
      fm.last_name,
      fm.date_of_birth,
      ff.fruit
 FROM family.members fm
 JOIN family.friuts ff
   ON fm.ID_members = ff.iD_members
