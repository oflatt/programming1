import time

b = 99

while b>1:
    print(str(b) + ' bottles of beer on the wall, '
          + str(b) + ' bottles of beer. Take one down, throw it around, '
          + str(b) + ' bottles of beer on the wall.')
    time.sleep(0.5)
    b -= 1

print('1 bottles of beer on the wall, 1 '
          + 'bottles of beer. Take one down, throw it around, '
          + '1 bottles of beer on the wall.')

