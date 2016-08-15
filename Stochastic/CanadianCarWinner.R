#Canadian Car Winner

# Timing the simulation

#################################################
# 10 prizes for ten-thousand entrants
# 100 thousand simulations

Time1 = Sys.time()

Y=numeric()

for(i in 1:100000)
	{
	X=sample(1:10000,10,replace=T)
	Y=c(Y,max(table(X)))
	}
table(Y)

Time2 = Sys.time()

#################################################
# 20 prizes for ten-thousand entrants
# 100 thousand simulations

Time3 = Sys.time()

Y2=numeric()

for(i in 1:100000)
	{
	X2=sample(1:10000,20,replace=T)
	Y2=c(Y2,max(table(X2)))
	}
table(Y2)

Time4 = Sys.time()


################################################
Time2-Time1
Time4-Time3

################################################
Get a sense of the results
table(Y)
table(Y2)
