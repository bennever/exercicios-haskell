module Main where

    {-
        
    -}
    somadorAux :: Int -> Int -> IO Int
    somadorAux 0 total = return total
    somadorAux qt total = do
        valor <- readLn :: IO Int
        somadorAux (qt-1) (total + valor)
        
    somador :: IO ()
    somador = do
        qt <- readLn :: IO Int
        out' <- somadorAux qt 0
        putStrLn ("O total é " ++ show out')

    main :: IO ()
    main = do
        putStrLn "Quantos números?"
        somador
