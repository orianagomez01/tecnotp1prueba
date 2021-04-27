GestorDeInteraccion g;
ArrayList<Trazos> t;
Paleta p;
Circulo c;
 
void setup () {
  size (800, 600);
  
  c= new Circulo("colores1.png");
  g = new GestorDeInteraccion();
  t = new ArrayList<Trazos>();
  p = new Paleta("colores.jpg"); 

  background(255);
}

void draw () {
  background (255);
  g.actualizar();
  c.dibujar();
  
  if (g.arriba) {
    t.add(new Trazos("trazo00.png", 120, 350, 0, -1));
    println ("arriba");
  }
  if (g.abajo) {
    t.add(new Trazos("trazo01.png", 120, 50, 0, 1));
  println ("abajo");
}


  for (Trazos t : t) {
    t.dibujar();
    t.responderAlMouse();
  }
}
