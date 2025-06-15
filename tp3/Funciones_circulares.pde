void dibujarCirculos(float x, float y, int cantidad, float espaciado) { // funcion propia q no retorna a un valor

    for (int i = 1; i < cantidad; i++) { //genera los circulos concentricos
    for (int j = 0; j < 1; j++) { // Recorre una vez mas
      if (i % 2 == 0) {
        stroke(colorPar);
      } else {
        stroke(colorImpar);
      }
    
   
      // Calcula el radio del circulo: depende de su posición (i) y el espaciado
      float radio = i * espaciado * 0.3; //0.3 para que no crezcan demasiado
      ellipse(x + j, y + j, radio * 2, radio * 2); //para dibujar circulos
    }
  }
}
