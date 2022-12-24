
-- Question 1
-- Write a multiline comment below.
{-
In this block is multiline comment.
We can add multipline in here.
-}

-- Question 2
-- Define a function that takes a value and multiplies it by 3.
multipliesBy3 x = x * 3

-- Question 3
-- Define a function that calculates the area of a circle.
circleArea r = 3.14 * r^2

-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 
cylinderVolume r h = h * circleArea r

-- Question 5
-- Define a function that checks if the volume of a cylinder is greater than or equal to 42.
checkCylinderVolumeGT42 r h = cylinderVolume r h > 42
