with open('input_file.txt', 'w') as inp:
    with open('output_file.txt', 'w') as out:
        for i in range(2 ** 8):
            inp.write(f'{i:08b}\n')
            out.write(f'{(i // 100) % 10:04b}{(i // 10) % 10:04b}{i % 10:04b}\n')
            print(f'{i:08b}', f'{(i // 100) % 10:04b}{(i // 10) % 10:04b}{i % 10:04b}')
