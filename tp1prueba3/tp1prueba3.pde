GestorDeInteraccion g;
ArrayList<Trazos> t;
Paleta[] p;
Circulo c;
 
void setup () {
  size (800, 600);
  
  c= new Circulo();
  g = new GestorDeInteraccion();
  t = new ArrayList<Trazos>();
  p = new Paleta [2];
  p[0] = new Paleta("colores.jpg");
   p[1] = new Paleta("colores1.png");

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
