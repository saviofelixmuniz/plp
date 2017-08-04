isAlcoholBetter :: Double -> Double -> Bool 
isAlcoholBetter alcohol gasoline = if gasoline * 0.7 <= alcohol
									then False
									else True

calculateCost :: Double -> Double -> Double
calculateCost fuel litters = fuel * litters

main = do
	entrada <- getLine
	let alcohol = read entrada
	entrada <- getLine
	let gasoline = read entrada
	entrada <- getLine
	let litters = read entrada
	if isAlcoholBetter alcohol gasoline
		then print (calculateCost alcohol litters)
		else print (calculateCost gasoline litters)