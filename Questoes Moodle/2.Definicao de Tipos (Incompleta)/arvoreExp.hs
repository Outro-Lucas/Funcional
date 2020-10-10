data arvoreExpressao = No(Int -> Int -> Int) | Folha Int deriving (Read)

data Expr = Val Int 
| Soma Expr Expr 
| Mult Expr Expr
| Div Expr Expr
| Sub Expr Expr
| Mod Expr Expr
deriving (Read, Eq, Show)