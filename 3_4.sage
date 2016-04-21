#Question 1
# Après prime_pi de 10^12 il plante
#a = plot(prime_pi, 0, 100) + plot(x/ln(x), 0, 100); a

def function(x):
	return prime_pi(x) * x/ln(x)

show(plot(function, 0, 100))
