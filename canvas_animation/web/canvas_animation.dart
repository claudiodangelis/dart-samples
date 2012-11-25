import 'dart:html';
import 'dart:math';

CanvasRenderingContext2D ctx;

main() {
  CanvasElement canvas = document.query("#canvas");
  ctx = canvas.getContext("2d");
  // tells the browser that you wish to perform an animation
  window.requestAnimationFrame(animate);
}

animate(num time){
  calculate();
  draw();
  // repeat the animation
  window.requestAnimationFrame(animate);
}

draw() {
  // draw a circle
  ctx..fillStyle = '#FFFFFF'
      ..fillRect( 0, 0, 255, 255 )
      ..fillStyle = '#FF0000'
      ..beginPath()
      ..arc(x, y, 10, 0, PI * 2, true)
      ..closePath()
      ..fill();
}

num x, y;
calculate(){
  var time = new Date.now().millisecondsSinceEpoch * 0.002;
  x = sin( time ) * 96 + 128;
  y = cos( time * 0.9 ) * 96 + 128;
}