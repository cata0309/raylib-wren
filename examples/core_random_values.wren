import "raylib" for Raylib, Color, ConfigFlags
import "random" for Random

var random = Random.new()

var frames_counter = 0
var rand_value = random.int(-8, 5)

Raylib.targetFPS = 60
Raylib.configFlags = ConfigFlags.vsync

Raylib.initWindow(800, 450, "raylib [core] example - generate random values")

while (!Raylib.windowShouldClose) {
  frames_counter = frames_counter + 1

  if ( ((frames_counter / 120) % 2) == 1) {
    rand_value = random.int(-8, 5)
    frames_counter = 0
  }

  Raylib.beginDrawing()

  Raylib.clearBackground(Color.rayWhite)

  Raylib.drawText("Every 2 seconds a new random value is generated:", 130, 100, 20, Color.maroon)
  Raylib.drawText("%(rand_value)", 360, 180, 80, Color.lightGray)

  Raylib.endDrawing()
}

Raylib.closeWindow()
