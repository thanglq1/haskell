-- Create a higher-order function that takes 3 parameters: A function and the two parameters that that function takes, and
-- flips the order of the parameters.
-- For example this: `(/) 6 2` returns `3`. But this: `flip' (/) 6 2` returns `0.3333333333`
fFlip :: (a -> b -> c) -> b -> a -> c
fFlip f x y = f y x

-- Create the `uncurry'` function that converts a curried function to a function on pairs. So this: `(+) 1 2` that returns `3` can be written as
-- `uncurry' (+) (1,2)` (with the two different arguments inside a pair).


-- Create the `curry'` function that converts an uncurried function to a curried function. So this: `fst (1,2)` that returns `1` can be written as
-- `curry' fst 1 2` (with the tuple converted into two different arguments).


-- Use higher-order functions, partial application, and point-free style to create a function that checks if a word has an uppercase letter.
-- Start with using just higher-order functions and build from there. 
-- Solution normal
hasUpperCase1 :: String -> Bool
hasUpperCase1 x = any (\y -> y `elem` ['A'..'Z']) x 
-- Solution with point free style + partial
hasUpperCase2 :: String -> Bool
hasUpperCase2 = any (`elem` ['A'..'Z'])


-- Create the `count` function that takes a team ("Red", "Blue", or "Green") and returns the amount of votes the team has inside `votes`.

votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]
countVote :: String -> Int
countVote team = length (filter (==team) votes)

-- Create a one-line function that filters `cars` by brand and then checks if there are any left.

cars :: [(String,Int)]
cars = [("Toyota",0), ("Nissan",3), ("Ford",1)]
filterCars :: String-> Bool
filterCars brand = any (\(_, x) -> x > 0) (filter (\(x, _) -> brand == x) cars)