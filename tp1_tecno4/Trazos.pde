class Trazos {
  
  Dir_y_Vel mouse;
  GestorDeInteraccion interaccion;
  PImage imagen, imagen1;
  PImage ptrazos[];
  float x, y, z, dir, ancho, alto;
  float estado;
  

  Trazos () {
    x= 120; //120
    y=50; //50
    z=350;
    ancho = 550;
    alto = 230;
    ptrazos =  new PImage[5];

    for ( int j = 0; j < ptrazos.length; j++ ) {
      ptrazos [j]  = loadImage("trazo"+ nf(j, 2) +".png");
    }

    interaccion = new GestorDeInteraccion();
    mouse = new Dir_y_Vel();
    
    estado= int(random(1, 4));
  }

  void dibujar () {
    if (estado== 1) {
      image (ptrazos[0], x, y, ancho, alto); 
      image (ptrazos[1], x, z, ancho, alto);
      
      
      
      if (g.arriba) {
        g.actualizar();
      y++;
        if (y==150) {
          y=50;
        }
      } else { 
        z--; 
        if (z==250) {
          z=350;
        }
      }
       
      println ("arriba");
      println ("abajo");
       //deslizarTrazo();
      }
      
      
    
    }
    //if (estado==2) {
    //  image (ptrazos[2], width/2-300, height/2-100, ancho, alto); 
    //  if (mousePressed == true) {
    //  z--;
    //} //actualizar estos parametros ya q no tiene z sino height
    //if (z==250) {
    //  z=350;
    //}
    //}
    //if (estado==3) {
    //  image (ptrazos[3], x, y, ancho, alto); 
    //  image (ptrazos[4], x, z, ancho, alto);
    //  if (mousePressed == true) {
    //    y++;
    //    if (y==150) {
    //      y=50;
    //    }
    //  } else { 
    //    z--; 
    //    if (z==250) {
    //      z=350;
    //    }
    //  }
    //}
  


  //void deslizarTrazo () {
  // if (mouseY >= 300) {
  //      y++;
  //      if (y==150) {
  //        y=50;
  //      }
  //    } else { 
  //      z--; 
  //      if (z==250) {
  //        z=350;
  //      }
  //    }


//void velTrazo () {
  
// if (g.arriba) 
//  //mouse va para arriba y se supone q el trazo sube
//  {
//    cs.add(new Caminante(random (120,660), 530 , 0, -1));
//    println ("arriba");
//  }
//  if (g.abajo) 
//  //mouse va para abajo y el trazo se supone q también
//  {
//    cs.add(new Caminante(random (120,660), 70 , 0, 1));
//     println ("abajo");
//  } 
//}


  void responderAlMouse() {
    if (mouseX > x && mouseX < x + ancho && mouseY > y && mouseY < y+alto ) {
      tint(p.darUnColor());
    }
    if (mouseX > x && mouseX < x + ancho && mouseY > z && mouseY < z+alto ) {
      tint(p.darUnColor());
      //imagen1.filter(INVERT);
      // mascara01.mask(mascara01);
    }
    if (mouseX > width/2-300 && mouseX < width/2-300 + ancho && mouseY > height/2-100 && mouseY < (height/2-100)+alto ) {
      tint(p.darUnColor());
    }
  }
}
