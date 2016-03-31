def nbDigitsFact(n):
	log_n = (n * ln(n) - n + (1/2) * ln(n) + ln(sqrt(2*pi)) + 1/(12*n))/(ln(10)) + 1
	x = floor(log_n.n())
	return x
print nbDigitsFact(factorial(100))