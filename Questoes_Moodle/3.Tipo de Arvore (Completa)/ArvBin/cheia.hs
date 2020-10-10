data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Show)

cheia Vazia = True
cheia (No x Vazia Vazia) = True
cheia (No x esq Vazia) = False
cheia (No x Vazia dir) = False
cheia (No x esq dir) = True && cheia esq && cheia dir