def knapsackSolve(weights,values,maxCapacity=10,rounding=1):
	if len(weights)!=len(values):
		return 'Error: list sizes unequal'
	#create list with unit value of each item
	unitVals=map(lambda w,v: float(v)/float(w),weights,values)
	#create output list
	knapsack=[0]*len(weights)
	#running total
	totalWeight=0
	totalValue=0
	
	while totalWeight<maxCapacity:
		#pick the best item
		item=unitVals.index(max(unitVals))
		#how much of it will fit? (range 0-1)
		percent=min(1,float(maxCapacity-totalWeight)/weights[item])
		percent*=10**rounding
		percent=int(percent)
		percent/=float(10**rounding)
		if percent==0 or unitVals[item]==0:
			break
		#put it in
		knapsack[item]=percent
		#add to total weight
		totalWeight+=weights[item]*percent
		totalValue+=values[item]*percent
		#stop this item from being picked again.
		unitVals[item]=0
		print 'chose',percent,"of item",item,', Backpack:',totalWeight,'lbs /',maxCapacity,'lbs. Net: $',totalValue

	return knapsack

ws=[5,4,7,12,9,6] #weights
vs=[2,5,4,9,8,4] #values
print knapsackSolve(ws,vs,20)