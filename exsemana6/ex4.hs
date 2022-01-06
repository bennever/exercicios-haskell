import System.IO ( hSetEcho, stdin )

{-
  
-}
obterChar:: IO Char 
obterChar = do
  hSetEcho stdin False
  x <- getChar
  hSetEcho stdin True
  return x

{-
  
-}
imprimir :: [Char] -> [Char] -> IO String
imprimir [] controle = return controle
imprimir (char:str) controle = do
  putChar char
  imprimir str controle

{-
  
-}
obterLinha :: IO String 
obterLinha = do 
  char <- obterChar
  case char of
    '\n' -> do
      imprimir [char] []
    '\DEL' -> do
      imprimir "\b \b" "\DEL"
    _ -> do
      putChar char
      string <- obterLinha
      if string == "\DEL" then do 
        obterLinha
      else do
        return (char:string)

main :: IO ()
main = do
  str <- obterLinha
  putStrLn str
