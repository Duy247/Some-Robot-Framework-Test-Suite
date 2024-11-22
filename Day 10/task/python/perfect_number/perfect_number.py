def is_perfect_number(number):
    sum_of_divisors = 0
    for i in range(1, number):
        if number % i == 0:
            sum_of_divisors += i
    return sum_of_divisors == number