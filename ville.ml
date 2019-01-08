use Pervasives

module Ville : 
sig
  type ville
  val createVille : String -> float -> float -> ville
  val getX : ville -> float
  val getY : ville -> float
  val getDistance : ville -> ville -> float
end

module Ville = 
  struct

    type ville = {name : string; x : float; y : float};;

    let createVille n x y = {name = n ; x = x; y = y};;
    
    let getX v = let {name = _;x = x;y = _} = v in x;;
    
    let getY v = let {name = _;x = _;y = y} = v in y;;
    
    
    let getDistance v1 v2 = sqrt ((getX v1 -. getX v2)**2.0 +. (getY v1 -. getY v2)**2.0);;

  
  end

  (** TESTS*)

let bordeaux = createVille "Bordeaux" 2.0 5.0;;
let marseille = createVille "Marseille" 10.0 (-3.0);;

getX marseille;;
getY bordeaux;;
getDistance bordeaux marseille;;