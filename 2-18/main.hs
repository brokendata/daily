import qualified Data.Map as M

cipher :: M.Map Char Char
cipher = M.fromList $ zip az za
    where az = ['a'..'z']
          za = reverse az

solve = sequence . map (flip M.lookup $ cipher)

main :: IO()
main = do
    x <- getLine
    case solve x of
        Just s -> putStrLn s
        Nothing -> putStrLn "invalid characters?"
