{-
    Name: Francis Kim
    Course name: csc372
    Assignment: Program2
    Instructor and TA names: McCann, Patrick Hickey and Andrea Padula
    Due date: 2pm 03/10/2017
    Description: The input value is list of Integer, and give the average of list.
                 I added all the list of integer and divided by length of list.
-}

-- meanIntList : Have one argument list of integer and return Float
--               This method is calculate average of list using sum1 method and length1 method
--               And if input is empty list, then return error statement

meanIntList :: [Int] -> Float
meanIntList[] = error " It is empty List"  -- if list is empty, then error
meanIntList x = fromIntegral(sum1(x)) / fromIntegral(length1(x))  -- add all the list of integer and divided by length

-- sum1 : This method add all the list of integer, and I used recursion
sum1 :: [Int] -> Int
sum1 [] = 0     -- if end of list, add 0
sum1 (x:xs) = x + sum1(xs)    -- x represent head of list, and xs is tail of list. Everytime head x should be added and recurse with tail

-- length1 : This method get length of list
length1 :: [Int] -> Int 
length1[] = 0    -- if end of list, add 0
length1 (x:xs) = 1 + length1 xs  -- add 1 every time until end of list

