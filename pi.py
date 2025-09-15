import math
import os

def main():
    side = 1
    num_sides = 4
    r = (math.sqrt(2))/2

    i = input("Insert number of loops: ")
    try:
        i = int(i)
    except:
        print("Not a number.")
        os.system("pause > nul")
        return

    while i > 0:
        side = math.sqrt((r - math.sqrt(r**2-(side/2)**2))**2+(side/2)**2) #archimede
        num_sides *= 2
        perimeter = num_sides*side
        print(f"side: {side}; n: {num_sides} ; PI: {perimeter / (r*2)}")
        i -= 1

if __name__ == "__main__":
    main()