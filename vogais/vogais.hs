findLastVocal :: String -> String
findLastVocal [] = ""
findLastVocal (h1:t1) = 
	if (t1 == "a" || t1 == "e" || t1 == "i" || t1 == "o" || t1 == "u")
		then t1
		else findLastVocal t1

main = do
	input <- getLine 
	input2 <- getLine
	input3 <- getLine
	input4 <- getLine
	input5 <- getLine

	putStrLn (findLastVocal input ++ findLastVocal input2 ++ findLastVocal input3 ++ findLastVocal input4 ++ findLastVocal input5)