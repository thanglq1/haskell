-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.

-- Solution1: Pattern matching - multiple function definitions
subList1 :: [a] -> [a]
subList1 [] = []
subList1 [x] = [x]
subList1 [x, y] = [x, y]
subList1 (x:y:z:[]) = [x,y]
subList1 (x:rest) = [x, head rest]

-- Solution2: Pattern matching - case expresstions
subList2 :: [a] -> [a]
subList2 a = case a of
    []          -> []
    [x]         -> [x]
    [x, y]      -> [x, y]
    (x:y:z:[])  -> [x, y]
    (x:rest)    -> [x, head rest]

-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together
add1 :: (Int, Int, Int) -> Int
add1 (x,y,z) = x + y + z

-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.

-- Solution1: Pattern matching    
checkList1 :: [a] -> Bool
checkList1 [] = True
checkList1 _ = False

-- Solution2: case expression
checkList2 :: [a] -> Bool
checkList2 a = case a of
    []  -> True
    _   -> False
-- Solution3: if then else
checkList3 :: [a] -> Bool
checkList3 a =
    if length a == 0
        then True
        else False 

-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.
-- Solution1: Patterm matching
tail1 :: [a] -> [a]
tail1 [] = []
tail1 [x] = [x]
tail1 [x, y] = [y]
tail1 (x:y:z:[]) = [y, z]
tail1 (x:rest) = rest
-- Solution2: Case experssion
tail2 :: [a] -> [a]
tail2 a = case a of
    []  -> []
    [x] -> [x]
    [x, y]  -> [y]
    (x:y:z:[])  -> [y,z]
    (x:rest)    -> rest

-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)
-- Solution1: Guard
addOne1 :: Int -> Int
addOne1 x
    | even x == True = x + 1
    | otherwise = x
-- Solution2: Case expression
addOne2 :: Int -> Int
addOne2 x = case even x of
    True -> x + 1
    False -> x
