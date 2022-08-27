module Polynomial where

type Coefficient = Integer -- TODO: rational coefficients? maybe generalise to any field or ring?

type Power = Integer

-- Require Num a, Integral n (in fact non-negative)
data Polynomial
  = Add Polynomial Polynomial
  | Monomial
      { coefficient :: Coefficient,
        power :: Power
      }
  deriving (Eq, Show)

-- (+) :: Polynomial -> Polynomial -> Polynomial
-- (+) p@(Monomial a1 n1) q@(Monomial a2 n2) = if n1 == n2 then Monomial (a1 + a2) n1 else Add p q
-- (+) (Monomial a n) q = q -- TODO: implement properly
-- (+) p (Monomial a n) = p -- TODO: implement properly
-- (+) p q = p -- TODO: implement properly

-- (*) :: Polynomial -> Polynomial -> Polynomial
-- (*) = Add -- TODO: implement
