subtractLists :: [Int] -> [Int] -> IO()

subtractLists (h1:t1) (h2:t2)
	| t1 == [] = do
		let output = h1 - h2
		print output
	| otherwise = do
		let output = h1 - h2
		print output
		subtractLists t1 t2

main = do
	input <- getLine
	let l1 = (map read $ words input :: [Int])

	input <- getLine
	let l2 = (map read $ words input :: [Int])

	subtractLists l1 l2