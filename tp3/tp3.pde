// Martina Rosales 124873/2
// enlace a video de youtube: https://youtu.be/w8Cs2fxIY6Q

PImage referencia; //guarda la img

int cantidad = 80;  //para cant de circulos concentricos
float[] posX = new float[cantidad];
float[] posY = new float[cantidad]; //posiciones
float[] espaciado = new float[cantidad]; //para guardar separacion

color colorPar = color(0);     // negro
color colorImpar = color(255); // blanco

void setup() {
  size(800, 400);
  referencia = loadImage("data/referencia.jpeg"); 
  noFill(); //para q los circulos se hagan sin relleno
  inicializarVariables(); // llama a la funcion para generar posiciones iniciales
}

void draw() {
  background(255);
  image(referencia, 0, 0, 400, 400); // imagen a la izquierda

    for (int i = 0; i < cantidad; i++) {
     float d = dist(mouseX, mouseY, posX[i], posY[i]);  //calcula la distancia del mouse
     if (d < 50) { //si el mouse esta cerca de 50 engrosa el trazo
     strokeWeight(16);
   } else {
     strokeWeight(6);
    }
    dibujarCirculos(posX[i], posY[i], 15, espaciado[i]); //llama a la funcion para crear circulos concentricos
  }

 dibujarCirculos(600, 200, 24, 18); // círculo central fijo

  // instrucciones en pantalla
  
  push();
  // rectangulo para que se lea el texto
  fill(255); // blanco 
  noStroke();
  rect(405, height - 30, 390, 25); // fondo del texto
  
  // texto encima del rectangulo
  fill(255, 0, 0); // texto rojo
  textSize(14);
  text("N o A: para cambiar colores / R: para reiniciar", 410, height - 13);
  pop(); // para q no afecte al codigo

 }
void keyPressed() {
  if (key == 'n' || key == 'N') {
    colorPar = color(255, 100, 200);   // rosa
    colorImpar = color(255, 120, 0);   // naranja
  }

  if (key == 'a' || key == 'A') {
    colorPar = color(0, 255, 0);     // verde
    colorImpar = color(0, 0, 255);   // azul
  }

  if (key == 'r' || key == 'R') {
    inicializarVariables(); // reinicia todo desde 0
    colorPar = color(0);
    colorImpar = color(255);
  }
}

// funcion que retorna un valor (espaciado segun la posicion)  
float calcularEspaciado(float x) {
  return map(x, 492, width, 20, 24);  //map para que el valor sea entre 20 y 24
}


// funcion que reinicia todas las variables
void inicializarVariables() {
  for (int i = 0; i < cantidad; i++) {
    posX[i] = random(485, width);
    posY[i] = random(50, height); //random para que de distribuyan aleatoriamente
    espaciado[i] = calcularEspaciado(posX[i]);
  }
}
