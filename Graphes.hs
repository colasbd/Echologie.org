{- Module visant à implémenter un type Graphe. Un graphe doit
   pouvoir décrire aussi bien une représentation graphique de
   fonction que n'importe quelle construction géométrique. Il
   doit aussi être possible de décrire des transformations af-
   fines, projectives ou autres. -}

newtype Droite = (Rational,Rational,Rational) -- ou float ?
newtype Point  = (Rational,Rational,Rational) -- ou float ?

instance Eq Droite where
    (=) (a,b,c) (a',b',c') = a%a' == b%b' && b%b' == c%c'

class TikZ a where
    tikz a :: Text -- Adapter à la définition de latex

-- liste des coordonnees des pponts dimpacts pour une valeur
-- initiale x et une fonction de recurrence f
listeDePoint x f = (x,x) : (x,f x) : listeDePoint (f x) f

-- donne les coordonnees du point P dans unebprojection en 
-- prznant D comme droote a linfini
proj D P
