######################################################
# Markov Processes

prob = matrix(0,3,3)

for(i in 1:3)
	{
	for(k in 1:3)
		{
		prob[i,k] <- runif(1, 0, 1)
		}
	total=sum(prob[i,])
	prob[i,]=prob[i,]/total
	}
	
LU=matrix(0,3,2)
for(i in 1:3)
{
LU[i,1]=prob[i,1]
LU[i,2]=1-prob[i,3]
}
########################################################

# initial state [1,2,3]

chain = c(sample(1:3, 1))
chain
########################################################

N=1000

for(k in 1: N)
{
now = chain[k]

pstar <- runif(1, 0, 1)
Lstar= LU[now,1]
Ustar= LU [now,2]


if(pstar<Lstar){now=1}
if(pstar>Ustar){now=3}
if((pstar>Lstar)&&(pstar<Ustar)){now=2}

chain=c(chain,now)
chain
}

######################################################

prob = matrix(0,3,3)

prob[1,]=c(0.03,0.04,0.93)
prob[2,]=c(0.13,0.87,0.0)
prob[3,]=c(0.3,0.4,0.3)

for(i in 1:3)
	{
	
	total=sum(prob[i,])
	prob[i,]=prob[i,]/total
	}
	
LU=matrix(0,3,2)
for(i in 1:3)
{
LU[i,1]=prob[i,1]
LU[i,2]=1-prob[i,3]
}
########################################################

# initial state [1,2,3]

chain = c(sample(1:3, 1))
chain
########################################################

N=1000

for(k in 1: N)
{
now = chain[k]

pstar <- runif(1, 0, 1)
Lstar= LU[now,1]
Ustar= LU [now,2]


if(pstar<Lstar){now=1}
if(pstar>Ustar){now=3}
if((pstar>Lstar)&&(pstar<Ustar)){now=2}

chain=c(chain,now)
}
chain
