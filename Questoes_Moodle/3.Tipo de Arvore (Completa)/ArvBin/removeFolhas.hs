data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Show)

removeFolhas Vazia =  Vazia
removeFolhas (No a Vazia Vazia) =  Vazia
removeFolhas (No a esq dir) =  No a (removeFolhas esq) (removeFolhas dir)