def separate_positive_negative(numbers):
    pos = []
    neg = []
    for number in numbers:
        if number >= 0:
            pos.append(number)
        else:
            neg.append(number)
    return pos, neg