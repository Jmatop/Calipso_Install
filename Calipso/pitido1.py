
# importamos la libreria GPIO
import RPi.GPIO as GPIO
# desactivamos mensajes de error
GPIO.setwarnings(False)
# indicamos el uso de  la identificacion BCM para los GPIO
GPIO.setmode(GPIO.BCM)
# indicamos que el GPIO18 es de salida de corriente
GPIO.setup(18,GPIO.OUT)
# damos corriente al pin
GPIO.output(18, True)
time.sleep(2)
GPIO.output(18, False)

