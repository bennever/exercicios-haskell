module Main where

    {-
       
    -}
    putStr' :: String -> IO ()
    putStr' [] = return ()
    putStr' str = 
        sequence_ [
            putChar c | c <- str
        ]

    main :: IO ()
    main = do
        putStr' "Haskell"
        putStr' "Trabalho"
        putStr' "Computador"
