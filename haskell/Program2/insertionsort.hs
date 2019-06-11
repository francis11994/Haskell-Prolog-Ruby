{-
    Name: Francis Kim
    Course name: csc372
    Assignment: Program2
    Instructor and TA names: McCann, Patrick Hickey and Andrea Padula
    Due date: 2pm 03/10/2017
    Description:  For this implementation, we don’t care how you find the correct location. insertInOrder does this
                  job, given an integer to be inserted and an ascending-ordered list of integers. We may assume that the
                  value being inserted does not already exist in the ordered list. insertInOrder should be able to handle
                  inserting a value into an empty list.
                  insertionSort takes a list of unique integers (that is, no duplicates) and implements Insertion Sort to
                  sort the list into ascending order. We may assume that the given list contains only unique integers.

-}

-- insertInOrder : this method two argument which is Integer and list of integer
--                 Integer is target we have to put in the list of integer as ascending order
insertInOrder :: Int -> [Int] -> [Int]
insertInOrder x [] = [x]        --  if list is empty, then just add integer into list
insertInOrder x (y:ys) 
        | x < y = x : y : ys    -- if value of input is less than one of list of integer, then connect input, y, and tail of list
        | otherwise = y : insertInOrder x ys     -- if value of input is bigger than one of list of integer, then recursive

-- insertionSort : This method do insertion sort by ascending order
insertionSort :: [Int] -> [Int] 
insertionSort [] = []   -- if it is empty list, then just print out empty list
insertionSort [x] = [x] -- if last integer of list, then just return that list
insertionSort (x:xs) = insertInOrder x (insertionSort xs) -- do the insertion sort, using insertInOrder method compare each of value

