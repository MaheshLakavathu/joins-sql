
-- INNER JOIN: Members and Borrowed Books
SELECT Members.Name AS Member_Name, Books.Title AS Book_Title
FROM Members
INNER JOIN Borrowing ON Members.MemberID = Borrowing.MemberID
INNER JOIN Books ON Borrowing.BookID = Books.BookID;

-- LEFT JOIN: All Members and their Borrowed Books (including those with no borrow)
SELECT Members.Name AS Member_Name, Books.Title AS Book_Title
FROM Members
LEFT JOIN Borrowing ON Members.MemberID = Borrowing.MemberID
LEFT JOIN Books ON Borrowing.BookID = Books.BookID;

-- RIGHT JOIN: All Books and the Members who borrowed them
SELECT Members.Name AS Member_Name, Books.Title AS Book_Title
FROM Members
RIGHT JOIN Borrowing ON Members.MemberID = Borrowing.MemberID
RIGHT JOIN Books ON Borrowing.BookID = Books.BookID;

-- FULL OUTER JOIN: Combine LEFT and RIGHT JOIN results
SELECT Members.Name AS Member_Name, Books.Title AS Book_Title
FROM Members
FULL OUTER JOIN Borrowing ON Members.MemberID = Borrowing.MemberID
FULL OUTER JOIN Books ON Borrowing.BookID = Books.BookID;

-- CROSS JOIN: Every Member with every Book (Cartesian Product)
SELECT Members.Name AS Member_Name, Books.Title AS Book_Title
FROM Members
CROSS JOIN Books;

-- SELF JOIN: Authors who are from the same Country
SELECT A1.Name AS Author1, A2.Name AS Author2, A1.Country
FROM Authors A1
JOIN Authors A2
  ON A1.Country = A2.Country
 AND A1.AuthorID <> A2.AuthorID;
