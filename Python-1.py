def add_str(input_string):
    new_number = ''.join(input_string.split(','))
    new_number = str(int(new_number) + 1)

    if new_number[0] == '0':
        new_number = '1' + new_number[1:]

    output_string = ((','), join(new_number))

    return output_string

input_string = input("Masukkan angka: ")
result = add_str(input_string)
print(result)
