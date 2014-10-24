is-it-prime
===========

This is a small Swift iPhone app to determine if a given number is prime.

If you forgot elementary math, a prime number is a natural number greater than 1 that divides only by 1 and itself.

I wrote this to test a number of factorization algorithms for speed. This one uses trial division, the slowest integer factorization algorithm.

It's basically a loop that counts up to `n - 1` and breaks as soon as `n % i == 0`.
