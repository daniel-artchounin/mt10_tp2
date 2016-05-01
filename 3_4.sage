#Question 1
# Après prime_pi de 10^12 il plante

#def function(x):
#	return prime_pi(x)
#def function2(x):
#	return x/ln(x)
#a = plot(function, 0, 10^5) + plot(function2, 0, 10^5); a
#show(a)

def function3(x):
	return ln(x)/x * prime_pi(x)

show(plot(function3, 0, 10^11))
