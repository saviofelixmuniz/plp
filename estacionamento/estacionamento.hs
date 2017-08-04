getParkingPrice :: String -> Int
getParkingPrice vehicle = if vehicle == "moto"
							then 5
							else 
								if vehicle == "carro"
								then 10
								else 30

main = do 
	entrada <- getLine
	print (getParkingPrice entrada)