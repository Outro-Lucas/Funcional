data Mes = Janeiro 
            | Fevereiro 
            | Marco 
            | Abril 
            | Maio 
            | Junho 
            | Julho 
            | Agosto 
            | Setembro 
            | Outubro
            | Novembro
            | Dezembro
            deriving (Show, Ord, Eq, Enum) 

data Date = MkDate { dia :: Int 
            , mes :: Mes    
            , ano :: Int   
            }

instance Show Date where
    show (MkDate dia mes ano) = concat [show dia, " de ", show mes, " de ", show ano]  

instance Eq Date where
    (MkDate d1 m1 a1) == (MkDate d2 m2 a2) = d1 == d2 && m1 == m2 && a1 == a2

instance Ord Date where
    (MkDate d1 m1 a1) <= (MkDate d2 m2 a2) = d1 <= d2 && converter m1 <= converter m2 && a1 <= a2

converter Janeiro = 0 
converter Fevereiro = 1
converter Marco = 3
converter Abril = 4
converter Maio = 5
converter Junho = 6
converter Julho = 7
converter Agosto = 8
converter Setembro = 9
converter Outubro = 10
converter Novembro = 11
converter Dezembro = 12