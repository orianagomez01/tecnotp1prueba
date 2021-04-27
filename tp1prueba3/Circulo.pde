class Circulo {
  PGraphics circulos;
  float diame=5;
  float xe, ye;
  PImage fondo;
  
  Circulo() {
    circulos=createGraphics(800, 600);
    circulos.beginDraw();
    circulos.background(0);
    circulos.endDraw();
 
}

  void dibujar() {
    circulos.beginDraw();
    for (int i=0; i < 180; i++) {
      for (int j=0; j < 180; j++) {
        float xe= 5 +(width/85)*i;
        float ye= 5 +(height/85)*j;
        circulos.fill (p[1].darUnColor());
        circulos.ellipse(xe, ye, diame, diame);
      }
    }
    circulos.endDraw();
    image(circulos, 0, 0);
  }
}
