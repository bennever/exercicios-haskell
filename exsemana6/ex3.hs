module Main where

    {-
        
    -}
    somador :: IO () 
    somador = do
        putStrLn "Quantos números?"
        quantidade <- readLn :: IO Int
        numeros <- sequence [ readLn :: IO Int | _ <- [1..quantidade] ]
        putStrLn $ "O total é " ++ show (sum numeros)


    {-
        
    -}
    somadorAux :: Int -> [IO Int]
    somadorAux 0 = []
    somadorAux n = (readLn :: IO Int) : somadorAux (n-1)

    somador2 :: IO ()
    somador2 = do
        putStrLn "Quantos números? "
        numeros <- readLn :: IO Int
        let valores = somadorAux numeros
        lista <- sequence valores
        putStrLn ("O total é " ++ show (sum lista))

    main :: IO ()
    main = do
        somador
