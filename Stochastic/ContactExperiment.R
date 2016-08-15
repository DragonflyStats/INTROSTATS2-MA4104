

Control = sample(1:50,15)

Common=numeric()

for ( i in 1:500000)
{
Contact1 = sample(1:50,15)
Contact2 = sample(1:50,15)
Contact3 = sample(1:50,15)
ContUnion = union(union(Contact1,Contact2),Contact3)
Common=c(Common,length(intersect(Control,ContUnion)))
}

