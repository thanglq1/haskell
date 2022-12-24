
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
f1 :: Float -> Float -> Float -> Float
f1 x y z = x ** (y/z)

f2 :: Float -> Float -> Float -> Float
f2 x y z = sqrt (x/y - z)

-- f3 x y z = x:((show y) ++ z)

f4 :: Int -> Int -> Bool -> [Bool]
f4 x y z = [x > y] ++ [z]

f5 :: [Int] -> [Int] -> [Int] -> Bool
f5 x y z = x == (y ++ z)

-- Question 2
-- Are really all variables in Haskell immutable? Try googling for the answer.


-- Question 3
-- Why should we define type signatures of functions? How can they help you? How can they help others?
-- For everyone easy to understand the arguments and return type of function.

-- Question 4
-- Why should you define type signatures for variables? How can they help you?
-- Anyone know the type of variables


-- Question 5
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
-- `show` convert to String
-- `read` convert to number
v1 :: String
v1 = "100"

v2 :: Int
v2 = 5
v3 :: Int
v3 = read v1 + v2

-- Question 6
-- How would you write the prod function from our lesson so that it works for Int and Double? Does the code compile?


-- Question 7
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
listUsers = ["Thang", "Lee"]