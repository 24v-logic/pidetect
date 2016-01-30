import picamera

def initializeCamera():
    camera = picamera.PiCamera()
    print('Camera initialized. . .')
    return camera

def configureCamera(camera, brightness, contrast, saturation, exposure_mode):
    camera.brightness = brightness
    camera.contrast = contrast
    camera.saturation = saturation
    camera.exposure_mode = exposure_mode
    print('Camera configuration: /n Brightness: %s /n Contrast: %s /n Saturation: %s /n Exposure mode: %s' % (brightness, contrast, saturation, exposure_mode) )
    
    
def getSeq(camera, n):
    camera.capture_sequence([
    'image%02d.jpg' % i
    for i in range(n)
    ])



    