def nombre_mersenne():
    p = 0
    while(p<=257):
        n = 2^(p)-1 
        if is_prime(n):
            print p
        p += 1
    return -1

nombre_mersenne()
