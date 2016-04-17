'''2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by
all of the numbers from 1 to 20?'''

#start with what you know
i=2520

#The idea is to go up by 2520 each iteration to save time.
#It already divides 1-10 so its multiples are the ones that will too.
#Since the starting i is divisible by 20, all future i's will be too.
#This also means they will be divisible by 1,2,4,and 5 'automatically'.
divisors=[3,6,7,8,9,11,12,13,14,15,16,17,18,19]

def wrong(x):
	for k in divisors:
		if x % k !=0:
			return True

while wrong(i):
	i+=2520

print i

#It takes 3.5 seconds to complete. If I went up by 1 each time it would
#take 20x as long, which is 1 min 10 sec.