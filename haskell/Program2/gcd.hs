{-
    Name: Francis Kim
    Course name: csc372
    Assignment: Program2
    Instructor and TA names: McCann, Patrick Hickey and Andrea Padula
    Due date: 2pm 03/10/2017
    Description: Have to get greatest common divisor
                 Received two argument and if 0 0 or 0 negative or negative 0 or negative negative, then it gives error statement
                 If it is positive number, then print out greatest common divisor. 
                 Recurse until one of argument is 0, and I recurse method y (x mod y) to get greatest common divisor
-}

-- ourGCD : Have two arguments Integer, and return Integer
--          This method get greatest common integer
ourGCD :: Int -> Int -> Int
ourGCD 0 0 = error " gcd 0 0 is undefined"   -- if two argument are 0, then return error statement
ourGCD x 0 = x   -- if one of argument is 0, then return other argument
ourGCD 0 y = y   -- if one of argument is 0, then return other argument
ourGCD x y | (x < 0 || y < 0) = error " There is negative number "  -- if one of argument is negative, then print error statement
           | otherwise = ourGCD y (x `mod` y)   -- recursive using y (x mod y) until one of argument is 0
