class GestorDeInteraccion {
  Dir_y_Vel mouse;
  boolean seMoviaEnElFrameAnterior;

  boolean arriba;
  boolean abajo;
  boolean derecha;
  boolean izquierda;

  GestorDeInteraccion() {
    mouse = new Dir_y_Vel();
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY);

    //----- que pasa con el mouse en este frame
    boolean seMueveElmouseEnEsteFrame = false;
    float sensibilidad = 35;
    if (mouse.velocidad()>sensibilidad && mouse.velocidad()<150) {
      seMueveElmouseEnEsteFrame = true;
    }
    arriba = false;
    abajo = false;
   

    if (seMueveElmouseEnEsteFrame &&
      !seMoviaEnElFrameAnterior) {
      arriba = mouse.direccionY()<-sensibilidad?true:false;
      abajo = mouse.direccionY()>sensibilidad?true:false;
    
    }
    //---- dejo listo todo para el siguiente frame
    seMoviaEnElFrameAnterior = seMueveElmouseEnEsteFrame;
  }
}
