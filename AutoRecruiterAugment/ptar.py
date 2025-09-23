import pyautogui
import sys
import random
import time

counter = int(sys.argv[1])

# You should have the actual Pony Town page up at all times.
# If you wish, you can choose to have it click the area on your taskbar where your browser would be.

time.sleep(random.randrange(5, 28))
pyautogui.press('enter')
pyautogui.hotkey('ctrl', 'v', interval=random.uniform(0.5,0.20))
pyautogui.write(sys.argv[1], interval=random.uniform(0.5,0.25))
pyautogui.press('enter')