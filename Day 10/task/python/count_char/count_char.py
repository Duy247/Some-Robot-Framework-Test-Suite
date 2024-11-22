def count_character(string):
    letter = 0
    digit = 0
    special = 0
    for i in string:
        if i.isalpha():
            letter += 1
        elif i.isdigit():
            digit += 1
        else:
            special += 1
    return letter, digit, special