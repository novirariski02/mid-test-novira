def decode(code, positions):

    positions = list(map(int, positions))

    decoded_list = [''] * len(code)

    for i in range(len(code)):
        decoded_list[positions[i] - 1] = code[i]

    decoded_text = ''.join(decoded_list)
    
    return decoded_text

input_code = 'abc'
input_positions = '312'
output = decode(input_code, input_positions)
print(output)