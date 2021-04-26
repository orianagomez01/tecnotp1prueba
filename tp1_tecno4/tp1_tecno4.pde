int cantidad;
Trazos t;
Paleta p;
Circulo c;
GestorDeInteraccion g;

void setup () {
  size (800, 600); 
  colorMode (HSB);
  //INICIALIZAR
  p = new Paleta("colores.jpg"); 
  
 g = new GestorDeInteraccion();
  t= new Trazos();
    
  c= new Circulo();
}

void draw () {
  background(255);
  c.dibujar();
  t.dibujar();
  t.responderAlMouse();
  g.actualizar();
  
  //t.dibujarTrazoUno();
  //t.dibujarTrazoDos();
  }




void keyPressed () {
}
