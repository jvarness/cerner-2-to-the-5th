import board
import adafruit_dotstar as dotstar
import time
import random
# cerner_2^5_2019
# The trinket M0 from adafruit has a dotstar tri-color LED built into the top
# of it. This initializes the brightness of the LED. A brightness of 1 is 
# reeeeeeeaaaalllllyyyy bright.
dot = dotstar.DotStar(board.APA102_SCK, board.APA102_MOSI, 1, brightness=(1.0/3.0))
# Seeding a random number generator with a prime number
random.seed(13)

######################### MAIN LOOP ##############################
# forever...
while True:
    r = random.randint(128,255)
    g = random.randint(0,r)
    b = random.randint(0,r)
    # ... modify the RGB values on the LED.
    dot[0] = [r,g,b]
    # Sporadically change the RGB values on the dotstart
    time.sleep(random.choice([0.05,0.1,0.15,0.2]))