isDanger :: Int -> Int -> String
isDanger formerApproach currentApproach = if currentApproach > formerApproach
											then "PERIGO"
										  else "ADEQUADO"

calculateDifference :: Int -> Int -> Int
calculateDifference altitude idealAltitude = abs(idealAltitude - altitude)

readAltitude :: Int -> Int -> IO()
readAltitude idealAltitude formerApproach = do
	input <- getLine
	let inputAltitude = read input
	let currentApproach = calculateDifference inputAltitude idealAltitude

	if currentApproach == 0
	then do putStrLn "OK"
		else do
		putStrLn (isDanger formerApproach currentApproach)
		readAltitude idealAltitude currentApproach

main = do
	input <- getLine
	let idealAltitude = read input
	input <- getLine
	let firstAltitude = read input

	let firstApproach = calculateDifference firstAltitude idealAltitude

	readAltitude idealAltitude firstApproach

