import Text.Printf

data Complex = Complex { real :: Float
                        ,img :: Float
                        } deriving (Eq)

instance Show Complex where
    show (Complex real img) = ( printf "%.3f " real ) ++ "+" ++ ( printf " %.3f" img) ++ "i"

instance Num Complex where
    (+) c1 c2       = Complex ( (real c1) + (real c2) ) ( (img c1) + (img c2) )
    (-) c1 c2       = Complex ( (real c1) - (real c2) ) ( (img c1) - (img c2) )
    (*) c1 c2       = Complex ( ( (real c1) * (real c2) ) - ( (img c1) * (img c2) ) ) ( ( (real c1) * (img c2) ) + ( (real c2) * (img c1) ) )
    negate c        = Complex ( (real c) * (-1) ) ( (img c) * (-1) )
    abs c           = Complex ( sqrt(real c * real c + img c * img c) ) (0)
    signum c        = Complex ( real c / ( sqrt(real c * real c + img c * img c) ) ) ( img c / ( sqrt(real c * real c + img c * img c) ) ) 
    fromInteger n   = Complex (fromInteger n) (0)