{-
    Name: Francis Kim
    Course name: csc372
    Assignment: Program2
    Instructor and TA names: McCann, Patrick Hickey and Andrea Padula
    Due date: 2pm 03/10/2017
    Description: There are two methods we have to do, first one is vowelListList, and second one is vowelHistogram
                 vowelListList will accept the string containing the file content and return a list of five strings, one per
                 lower-case English vowel (‘a’, ‘e’, ‘i’, ‘o’, and ‘u’, in that order) with one occurrence of the appropriate
                 vowel for each occurrence of that vowel in the argument, regardless of case. If a vowel does not appear
                 in the text, its string is the empty string.
                 vowelHistogram will accept such a String and will produce a String that, when printed with putStr or
                 putStrLn, produces a simple horizontal histogram of the vowels. 
                 Each line begins with a vowel, a colon, and a space
-}

-- import to get argument
import System.Environment (getArgs)

-- vowelListList : This method accept the string containing the file content and reuturn a list of five strings
--                 I made vowelList method which make string value to list of character
--                 I made vowelA to vowelU method, and each of methods collect vowel and return connected String
vowelListList :: String -> [String]
vowelListList x = vowelA(vowelList x) : vowelE(vowelList x) : vowelI(vowelList x) : vowelO(vowelList x) : vowelU(vowelList x) : [] -- connect all the vowels and make a list

-- vowelHistogram : This method will accept list of string and will produce string and represent how many each of vowel exist as star 
vowelHistogram :: [String] -> String
-- change to string and represent by star, replace value change vowels to star sign
vowelHistogram x = "a: " ++ replaceStar(x !! 0) ++ "\ne: " ++ replaceStar(x !! 1) ++ "\ni: " ++ replaceStar(x !! 2) ++ "\no: " ++ replaceStar(x !! 3) ++ "\nu: " ++ replaceStar(x !! 4)

-- replaceStar : this method change each of vowel to star sign
replaceStar = map (\c ->
                        if c=='a' || c=='e' || c=='i' || c=='o' || c=='u' -- if arguemtn is vowel
                        then '*'                                          -- then change to star
                        else c
                  )

-- vowelList : this method received the String from argument and collect only vowels as character of list
vowelList :: String -> [Char]
vowelList [] = []  -- at the and of string add list sign
vowelList (x:xs)
        | x == 'A' = 'a' : vowelList xs    -- change Capital to small, and add character and recursive
        | x == 'E' = 'e' : vowelList xs    -- change Capital to small, and add character and recursive
        | x == 'I' = 'i' : vowelList xs    -- change Capital to small, and add character and recursive
        | x == 'O' = 'o' : vowelList xs    -- change Capital to small, and add character and recursive
        | x == 'U' = 'u' : vowelList xs    -- change Capital to small, and add character and recursive
        | x == 'a' = x : vowelList xs      -- add character and recursive
        | x == 'e' = x : vowelList xs      -- add character and recursive
        | x == 'i' = x : vowelList xs      -- add character and recursive
        | x == 'o' = x : vowelList xs      -- add character and recursive
        | x == 'u' = x : vowelList xs      -- add character and recursive
        | otherwise = vowelList xs         -- if it is not vowel character, then just recursive

-- vowelA: recieved list of char and return string, collect all 'a' as string
vowelA :: [Char] -> String
vowelA [] = ""     -- At the end of list, then return ""
vowelA (x:xs)
         | x == 'a' = x : vowelA xs  -- if char is a, then collect a as string
         | otherwise = vowelA xs     -- if char is not a, then recursive

-- vowelE: recieved list of char and return string, collect all 'e' as string
vowelE :: [Char] -> String
vowelE [] = ""     -- At the end of list, then return ""
vowelE (x:xs)
         | x == 'e' = x : vowelE xs  -- if char is a, then collect e as string
         | otherwise = vowelE xs     -- if char is not e, then recursive

-- vowelI: recieved list of char and return string, collect all 'i' as string
vowelI :: [Char] -> String
vowelI [] = ""     -- At the end of list, then return ""
vowelI (x:xs)
         | x == 'i' = x : vowelI xs  -- if char is a, then collect i as string
         | otherwise = vowelI xs     -- if char is not i, then recursive

-- vowelO: recieved list of char and return string, collect all 'o' as string
vowelO :: [Char] -> String
vowelO [] = ""     -- At the end of list, then return ""
vowelO (x:xs)
         | x == 'o' = x : vowelO xs  -- if char is a, then collect o as string
         | otherwise = vowelO xs     -- if char is not o, then recursive

-- vowelU: recieved list of char and return string, collect all 'u' as string
vowelU :: [Char] -> String
vowelU [] = ""     -- At the end of list, then return ""
vowelU (x:xs)
         | x == 'u' = x : vowelU xs  -- if char is a, then collect u as string
         | otherwise = vowelU xs     -- if char is not u, then recursive


main :: IO()  -- If main print out something, then we should write it
main = do     -- main do as below
        args <- getArgs          -- get argument
        file <- readFile (head args)      -- get head of argument by file

        putStrLn (vowelHistogram (vowelListList file))    --   read file containing string, and return star sign depends on number of vowels
