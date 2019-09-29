# cerner_2^5_2019

import board
import digitalio
import touchio
import time

touch = touchio.TouchIn(board.A0)
led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

while True:
    led.value = touch.value
    time.sleep(.1)