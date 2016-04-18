import Data.Maybe;
import Data.List;

--backpack_solve :: [Float] -> [Float] -> [Float] -> Float -> [Float]
backpack_solve weights values percents capacity
    | capacity<0.0001 = percents
    | otherwise = backpack_solve weights ((take best_item values)++[0]++(drop (best_item+1) values)) ((take (best_item) percents)++[cap_frac]++(drop (best_item+1) percents)) (capacity-(cap_frac*(weights!!best_item)))
    where
        unit_vals = map (\(v,w) -> v/w) (zip values weights)
        best_item = maxInd unit_vals
        cap_frac = min 1 (capacity/(weights!!best_item))

maxInd list = Data.Maybe.fromJust(Data.List.elemIndex (maximum list) list)

main = do
    print "weights: [5,4,7,12,9,6]"
    print "values: [2,5,4,9,8,4]"
    print "capacity: 20"
    print "The portion of each item you should take is:"
    print (backpack_solve [5,4,7,12,9,6] [2,5,4,9,8,4] [0,0,0,0,0,0] 20)