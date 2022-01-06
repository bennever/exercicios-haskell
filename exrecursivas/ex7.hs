
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) = if x < y then x : merge xs (y:ys) else y : merge (x:xs) ys


metades :: [a] -> ([a],[a])
metades xs = splitAt (length xs `div` 2) xs


mergesort :: Ord a => [a] -> [a]
mergesort []  = []
mergesort [x] = [x]
mergesort xs = merge (mergesort esquerda) (mergesort direita) 
    where (esquerda, direita) = metades xs

main :: IO ()
main = do 
    print $ mergesort [3, 6, 8, 2, 9, 43, 75, 24, 32, 83]
    print $ mergesort [10, 55, 87, 90, 33, 28, 74, 49, 43]
