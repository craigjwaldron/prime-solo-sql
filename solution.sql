-- (1) Get all users from Chicago.
    SELECT * FROM syntax_practice WHERE city='chicago';

        shawn	chicago	5	10	355.8	1
        anthony	chicago	0	0	0	5
        davey	chicago	9	99	98.04	7

-- (2) Get all users with usernames that contain the letter a.
    SELECT * FROM syntax_practice WHERE username LIKE '%a%';

        shawn	chicago	5	10	355.8	1
        larry	minneapolis	3	4	77.01	3
        dallas	new york	6	12	0.99	4
        anthony	chicago	0	0	0	5
        travis	miami	1	100	500000.34	6
        davey	chicago	9	99	98.04	7
        ora	phoenix	88	90	3.33	8

-- (3) The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
    UPDATE syntax_practice set account_balance=10.00 where account_balance=0.00

        UPDATE 1

-- (4) Select all users that have attempted 9 or more transactions. ?????????
    SELECT * FROM syntax_practice WHERE transactions_attempted>8

        shawn	chicago	5	10	355.8	1
        cherise	minneapolis	9	9	4000	2
        dallas	new york	6	12	0.99	4
        travis	miami	1	100	500000.34	6
        davey	chicago	9	99	98.04	7
        ora	phoenix	88	90	3.33	8

-- (5) Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
     SELECT * FROM syntax_practice ORDER BY account_balance DESC;

         travis	miami	1	100	500000.34	6
         cherise	minneapolis	9	9	4000	2
         shawn	chicago	5	10	355.8	1

    --  QUESTION: When I did  SELECT * FROM syntax_practice LIMIT 3; I did not get travis. Why is that?

-- (6) Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
    SELECT * FROM syntax_practice ORDER BY account_balance ASC;

        dallas	new york	6	12	0.99	4
        ora	phoenix	88	90	3.33	8
        anthony	chicago	0	0	10	5

-- (7) Get all users with account balances that are more than $100.
    SELECT * FROM syntax_practice WHERE account_balance>100;

        travis	miami	1	100	500000.34	6
        cherise	minneapolis	9	9	4000	2
        shawn	chicago	5	10	355.8	1

-- (8) Add a new record.
    INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('craig', 'pluto', 33, 55, 5.69, 9);

        craig	pluto	33	55	5.69	9
        ora	phoenix	88	90	3.33	8
        dallas	new york	6	12	0.99	4
        larry	minneapolis	3	4	77.01	3
        cherise	minneapolis	9	9	4000	2
        travis	miami	1	100	500000.34	6
        davey	chicago	9	99	98.04	7
        anthony	chicago	0	0	10	5
        shawn	chicago	5	10	355.8	1

-- (9) The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
      DELETE from syntax_practice WHERE city='miami' OR city='phoenix' AND transactions_completed<5;

        craig	pluto	33	55	5.69	9
        ora	phoenix	88	90	3.33	8
        dallas	new york	6	12	0.99	4
        larry	minneapolis	3	4	77.01	3
        cherise	minneapolis	9	9	4000	2
        davey	chicago	9	99	98.04	7
        anthony	chicago	0	0	10	5
        shawn	chicago	5	10	355.8	1
