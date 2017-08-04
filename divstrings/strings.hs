printMixedWords :: [String] -> [String] -> IO()

printMixedWords (h1:t1) (h2:t2) 
	| t1 == [] = do
		let output = h1 ++ " " ++ h2
		putStrLn output
	| otherwise = do 
		let output = h1 ++ " " ++ h2
		putStrLn output
		printMixedWords t1 t2 

main = do
	input <- getLine 
	let l1 = (words input)

	input <- getLine 
	let l2 = (words input)

	printMixedWords l1 l2 