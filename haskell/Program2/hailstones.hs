{-
    Name: Francis Kim
    Course name: csc372
    Assignment: Program2
    Instructor and TA names: McCann, Patrick Hickey and Andrea Padula
    Due date: 2pm 03/10/2017
    Description: Starting with a positive integer and if it is even then make half, othersie triple it and add one until get 1
                 If argument is negative, then print error statement
-}

-- hailstones: Recevied one Integer argument, and return list of Integer
hailstones :: Int -> [Int]
hailstones x
        | x < 1 = error " Argument is less than 1 "   -- if argument is less than 0, then print error
        | x == 1 = x : []                                 -- if finally argument is 1, then add 1 and make a list
        | (x `mod` 2) == 0 = x : hailstones (x `div` 2)   -- if x is even, then make half, and recursive
        | otherwise = x : hailstones(3*x+1)               -- if x is odd, then triple it and add one, and recursive
