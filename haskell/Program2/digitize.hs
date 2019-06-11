{-
    Name: Francis Kim
    Course name: csc372
    Assignment: Program2
    Instructor and TA names: McCann, Patrick Hickey and Andrea Padula
    Due date: 2pm 03/10/2017
    Description: Given a string containing digits and/or colons, return a String consisting of three lines of space, underscore,
                 ‘pipe’, and/or period characters that, when printed with putStr or putStrLn, will display the characters
                 as if displayed by a digital clock.
                 Each digit’s digital representation is nine characters in size, in a 3x3 block. Thus, the digit ‘1’ consists of
                 seven spaces and two pipe characters, with the pipe characters on the right.
-}

-- digitize : This method print out each number string as underbar, colon, and bar
digitize :: String -> String
digitize [] = "\n\n"  -- if String is empty, print out \n\n
digitize x = digitizeTop1 x ++ digitizeMiddle1 x ++ digitizeEnd1 x -- Return string from clock time, each method describe on below  

-- digitizeTop1 : This method return top of string which consist of underbar, bar and colon
digitizeTop1 :: String -> String
digitizeTop1 [x] = digitizeTop x ++ "\n"     -- change last number of clock time and add new line
digitizeTop1 (x:xs) = digitizeTop x ++ digitizeTop1 xs  -- change each number of clock time and recursive

-- digitizeMiddle1 : This method return middle of string which consist of underbar, bar and colon
digitizeMiddle1 :: String -> String
digitizeMiddle1 [x] = digitizeMiddle x ++ "\n"     -- change last number of clock time and add new line
digitizeMiddle1 (x:xs) = digitizeMiddle x ++ digitizeMiddle1 xs  -- change each number of clock time and recursive

-- digitizeEnd1 : This method return middle of string which consist of underbar, bar and colon
digitizeEnd1 :: String -> String
digitizeEnd1 [x] = digitizeEnd x     -- change last number of clock time and add new line
digitizeEnd1 (x:xs) = digitizeEnd x ++ digitizeEnd1 xs  -- change each number of clock time and recursive

-- digitizeTop : this method recieved each character of clock time and change to proper sign(underbar, bar, colon) for the top
digitizeTop :: Char -> String 
digitizeTop x
        | x == '0' = " _ " -- top for 0
        | x == '1' = "   " -- top for 1
        | x == '2' = " _ " -- top for 2
        | x == '3' = " _ " -- top for 3
        | x == '4' = "   " -- top for 4
        | x == '5' = " _ " -- top for 5
        | x == '6' = " _ " -- top for 6
        | x == '7' = " _ " -- top for 7
        | x == '8' = " _ " -- top for 8
        | x == '9' = " _ " -- top for 9
        | x == ':' =  " "  -- top for :
        | otherwise = error " It is not digit or colons "        -- if it is not number or colon, then return error

-- digitizeMiddle : this method recieved each character of clock time and change to proper sign(underbar, bar, colon) for the middle
digitizeMiddle :: Char -> String
digitizeMiddle x
        | x == '0' = "| |" -- middle for 0
        | x == '1' = "  |" -- middle for 1
        | x == '2' = " _|" -- middle for 2
        | x == '3' = " _|" -- middle for 3
        | x == '4' = "|_|" -- middle for 4
        | x == '5' = "|_ " -- middle for 5
        | x == '6' = "|_ " -- middle for 6
        | x == '7' = "| |" -- middle for 7
        | x == '8' = "|_|" -- middle for 8
        | x == '9' = "|_|" -- middle for 9
        | x == ':' =  "."  -- middle for :
        | otherwise = error " It is not digit or colons "        -- if it is not number or colon, then return error

-- digitizeEnd : this method recieved each character of clock time and change to proper sign(underbar, bar, colon) for the end
digitizeEnd :: Char -> String
digitizeEnd x
        | x == '0' = "|_|" -- bottom for 0
        | x == '1' = "  |" -- bottom for 1
        | x == '2' = "|_ " -- bottom for 2
        | x == '3' = " _|" -- bottom for 3
        | x == '4' = "  |" -- bottom for 4
        | x == '5' = " _|" -- bottom for 5
        | x == '6' = "|_|" -- bottom for 6
        | x == '7' = "  |" -- bottom for 7
        | x == '8' = "|_|" -- bottom for 8
        | x == '9' = " _|" -- bottom for 9
        | x == ':' =  "."  -- bottom for :
        | otherwise = " It is not digit or colons "        -- if it is not number or colon, then return error

