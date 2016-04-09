def nbDigitsFactBase2(n):
	ln_n_fact = n * ln(n) - n + (1/2) * ln(n) + ln(sqrt(2*pi)) + 1/(12*n)
	nb_digits_of_n_fact = floor(ln_n_fact / ln(2) + 1)
	return nb_digits_of_n_fact