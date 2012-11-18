import 'dart:html';
import 'dart:math' as Math;

int fromX = 250;
int fromY = 250;

int toX, toY;

CanvasElement canvas = query("#canvas");
CanvasRenderingContext2D context = canvas.context2d;

void main() {
  document.on.keyDown.add(onKeyDown);
}

void draw(context) {

  context.beginPath();
  context.moveTo(fromX,fromY);
  context.lineTo(toX, toY);
  context.stroke();



}

void onKeyDown(event) {

  switch(event.keyCode){

    case 37:
      toX = fromX - 10;
      toY = fromY;
      draw(context);
      fromX-=10;
      break;

    case 38:
      toX = fromX;
      toY = fromY - 10;
      draw(context);
      fromY -= 10;
      break;

    case 39:

      toX = fromX + 10;
      toY = fromY;
      draw(context);
      fromX+=10;
      break;

    case 40:

      toX = fromX;
      toY = fromY + 10;
      draw(context);
      fromY += 10;
      break;
  }
}