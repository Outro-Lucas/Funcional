import qualified Data.Char (toUpper)

upper :: String -> String
upper str = [Data.Char.toUpper ch | ch <- str]