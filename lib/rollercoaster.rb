
require "tk"

CANVAS_WIDTH  = 600
CANVAS_HEIGHT = 400

def run_cart
end

root = TkRoot.new do
  title "Roller Coaster Simulator"
end

canvas = TkCanvas.new(root) do
  width  CANVAS_WIDTH
  height CANVAS_HEIGHT
end

button = TkButton.new(root) do
  text "Run!"
  command { run_cart }
end

button.pack
canvas.pack

Tk.mainloop
