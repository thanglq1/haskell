-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

-- Solution1: Use if then else
checkMonthlyConsumption1 :: Double -> Double -> Double -> String
checkMonthlyConsumption1 hourlyConsumption hoursDailyUse maximumMonthly =
            if hourlyConsumption * hoursDailyUse * 30 > maximumMonthly
                then "Monthly consumption is greater than maximum allowed"
                else
                    if hourlyConsumption * hoursDailyUse * 30 == maximumMonthly
                        then "Monthly consumption is equal maximun allowed"
                        else "Monthly consumption is smaller than maximum allowed"

-- Solution2: Use if then else + where
checkMonthlyConsumption2 :: Double -> Double -> Double -> String
checkMonthlyConsumption2 hourlyConsumption hoursDailyUse maximumMonthly =
        if fMC hourlyConsumption hoursDailyUse > maximumMonthly
            then  "Monthly consumption is greater than maximum allowed"
            else
                if fMC hourlyConsumption hoursDailyUse == maximumMonthly
                    then "Monthly consumption is equal maximun allowed"
                    else "Monthly consumption is smaller than maximum allowed"
    where fMC hConsumption hDailyUse = hConsumption * hDailyUse * 30

-- Solution3: Use if then else + let
checkMonthlyConsumption3 :: Double -> Double -> Double -> String
checkMonthlyConsumption3 hourlyConsumption hoursDailyUse maximumMonthly =
        let fMC hConsumption hDailyUse = hConsumption * hDailyUse * 30
        in if fMC hourlyConsumption hoursDailyUse > maximumMonthly
            then  "Monthly consumption is greater than maximum allowed"
            else
                if fMC hourlyConsumption hoursDailyUse == maximumMonthly
                    then "Monthly consumption is equal maximun allowed"
                    else "Monthly consumption is smaller than maximum allowed" 

-- Solution4: Use guard + where
checkMonthlyConsumption4 :: Double -> Double -> Double -> String
checkMonthlyConsumption4 hourlyConsumption hoursDailyUse maximumMonthly
        | monthlyConsumption1 > maximumMonthly = "Monthly consumption is greater than maximum allowed"
        | monthlyConsumption1 == maximumMonthly = "Monthly consumption is equal maximun allowed"
        | otherwise = "Monthly consumption is smaller than maximum allowed"
    where
        monthlyConsumption1 = hourlyConsumption * hoursDailyUse * 30




-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.
checkMonthlyConsumption5 :: Double -> Double -> Double -> String
checkMonthlyConsumption5 hourlyConsumption hoursDailyUse maximumMonthly
        | fMC hourlyConsumption hoursDailyUse > maximumMonthly = "Monthly consumption is greater than maximum allowed, excess is " ++ show ((-1) * fDiff hourlyConsumption hoursDailyUse maximumMonthly)
        | fMC hourlyConsumption hoursDailyUse == maximumMonthly = "Monthly consumption is equal maximun allowed"
        | otherwise = "Monthly consumption is smaller than maximum allowed, savings is " ++ show (fDiff hourlyConsumption hoursDailyUse maximumMonthly)
    where
        fMC hConsumption hDailyUse = hConsumption * hoursDailyUse * 30
        fDiff hConsumption hDailyUse maxMonthly = maxMonthly - fMC hConsumption hDailyUse



-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.


-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

-- Solution1: Use if then else + where
div1 :: Double -> Double -> String
div1 x y =
    if y == 0
        then error "divide by zero"
        else  show result
    where result = x / y
-- Solution2: Use if then else + let
div2 :: Double -> Double -> String
div2 x y = 
    if y == 0
        then error "divide by zero"
        else let result = x / y
             in show result
-- Solution3: Use guard + where
div3 :: Double -> Double -> String
div3 x y
    | y == 0 = error "divide by zero"
    | otherwise = show result
    where result = x / y
-- Solution4: Use guard + let
div4 :: Double -> Double -> String
div4 x y
    | y == 0 = error "divide by zero"
    | otherwise = let result = x / y
                  in show result

-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 

sum1 :: Double -> Double -> Double
sum1 x y =
    let fSquare a b = a * b
        fQuotient a b 
            | b == 0 = error "divide by zero"
            | otherwise = a / b
    in sumPower (fSquare x y) (fQuotient x y) 
    where 
        sumPower a b = (a + b)^2