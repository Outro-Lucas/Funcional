data Gesto = Pedra | Papel | Tesoura

ganhadores [] = []
ganhadores xs = if converter (last xs) then ganhadores (init xs) ++ [ length xs - 1 ] else ganhadores (init xs) 
  where
    converter (a,b) = ganha a b
    
ganha Pedra Pedra = False
ganha Pedra Papel = False
ganha Pedra Tesoura = True
ganha Papel Pedra = True
ganha Papel Papel = False
ganha Papel Tesoura = False
ganha Tesoura Pedra = False 
ganha Tesoura Papel = True
ganha Tesoura Tesoura = False