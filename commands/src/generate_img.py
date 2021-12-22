import numpy as np
from PIL import Image
from sys import stdin
arr=''.join(stdin.read().split())

def hex_to_rgb(value):
    lv = len(value)
    return tuple(int(value[i:i + lv // 3], 16) for i in range(0, lv, lv // 3))

pixels=np.array([hex_to_rgb(arr[i:i+6]) for i in range(0, len(arr), 6)]).reshape(100, 100, 3)
image = Image.fromarray(pixels.astype('uint8'), 'RGB')
image = image.resize((600,600), resample=Image.NEAREST)
image.save('blockchain_image.png', optimize=True, quality=95)
