data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Show)

menorNivelFolha a = nivel (menorNivel a) a 

nivel _ Vazia = []
nivel 0 (No x Vazia Vazia) = [x]
nivel n (No x esq dir) = ( nivel (n-1) esq ) ++ ( nivel (n-1) dir )

menorNivel (No x Vazia Vazia) = 0
menorNivel (No x esq Vazia) = menorNivel esq + 1
menorNivel (No x Vazia dir) = menorNivel dir + 1
menorNivel (No x esq dir) = ( min (menorNivel esq) (menorNivel dir) ) + 1