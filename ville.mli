module Ville : 
sig
  type ville
  val createVille : String -> float -> float -> ville
  val getX : ville -> float
  val getY : ville -> float
  val getDistance : ville -> ville -> float
end

