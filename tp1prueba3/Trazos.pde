class Trazos {
  PImage imagen;
  float x, y;
  float vx, vy;
  float estado;
  
  Trazos(String nombre_, float x_, float y_, float vx_, float vy_) {
    this.x = x_;
    this.y = y_;
    this.vx = vx_;
    this.vy = vy_;
    imagen = loadImage ( nombre_ );
       
  estado= 1;
}
  
  
  void dibujar() {
    
    if (estado==1) {
    x += vx;
    y += vy;
    noStroke();
    image(imagen, x, y, 550, 230);
    
     if (y==160) {
          y=50;
        } 
        if (y==250) {
          y=350;
        }
    
    }
}

 void responderAlMouse() {
    if (mouseX > x && mouseX < x + 550 && mouseY > y && mouseY < y+230 ) {
      tint(p[0].darUnColor());
    }
    //if (mouseX > x && mouseX < x + 550 && mouseY > y && mouseY < y+230 ) {
    //  tint(p.darUnColor());
    //}
  }

}
