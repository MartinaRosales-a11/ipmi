PImage imagen1, imagen2, imagen3;   // imagenes declaradas
PFont miFuente;      // fuente declarada

int NumPantalla;
int ContadorTiempo;

// lugar y tamaño del boton
float botonX, botonY, botonAncho, botonAlto;

void setup() {
  size(640, 480);
  NumPantalla = 0;
  ContadorTiempo = 0;
  frameRate(30);
  miFuente = createFont("data/BebasNeue-Regular.otf", 48);
  textFont(miFuente);

  // cargar imagenes
  imagen1 = loadImage("imagen1.jpeg");
  imagen2 = loadImage("imagen2.jpeg");
  imagen3 = loadImage("imagen3.jpeg");

  // boton
  botonX = width / 2;
  botonY = height - 80;
  botonAncho = 150;
  botonAlto = 60;
}

void draw() {
  background(255);

  if (NumPantalla == 0) {
    image(imagen1, 0, 0, width, height);
  float opacidad = map(ContadorTiempo, 0, 90, 0, 255);
float y = map(ContadorTiempo, 0, 90, height / 2, height / 2 - 40);

    fill(255, opacidad);
    textAlign(CENTER, CENTER);
    textSize(25);
    text("Forest of Resonating Lamps de TeamLab es una instalación interactiva \n que combina elementos físicos y digitales \n para crear una experiencia inmersiva.", width / 2, y);
  }

  else if (NumPantalla == 1) {
    image(imagen2, 0, 0, width, height);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(35);
    float y = map(ContadorTiempo, 0, 90, 0, 400);
    text("Consiste en una sala con paredes espejadas, donde \n cuelgan cientos de lámparas de vidrio de Murano \n equipadas con luces LED y sensores de proximidad.", width / 2, y);
  }

  else if (NumPantalla == 2) {
    image(imagen3, 0, 0, width, height);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(25);
    float y = map(ContadorTiempo, 0, 90, 400, 0);
    text("La obra utiliza tecnologías como sensores, iluminación LED \n y programación en tiempo real para responder a la presencia y \n movimiento de los visitantes, integrando el arte y \n la tecnología de manera innovadora.", width / 2, y);

    // si el mouse esta sobre el botoncito
    float dx = mouseX - botonX;
    float dy = mouseY - botonY;
    boolean mouseSobreBoton = (dx * dx) / sq(botonAncho / 2) + (dy * dy) / sq(botonAlto / 2) <= 1;

    // cambiar color si se apoya el mouse
    if (mouseSobreBoton) {
      fill(200);  // gris
    } else {
      fill(0, 150, 255);    // azul normal
    }

    ellipse(botonX, botonY, botonAncho, botonAlto);

    // texto
    fill(255);
    textSize(24);
    text("Reiniciar", botonX, botonY);
  }

  // tiempo para avanzar pantallas automaticamente. Igual al presionar tambien se puede avanzar
  ContadorTiempo++;
 if (ContadorTiempo > 90) {
    ContadorTiempo = 0;
    NumPantalla++;
    if (NumPantalla > 2) {
      NumPantalla = 2;  // mantener en la ult pantalla
    }
  }
}

void mousePressed() {
  
  if (NumPantalla == 2) {
    float dx = mouseX - botonX;
    float dy = mouseY - botonY;
    boolean clicEnBoton = (dx * dx) / sq(botonAncho / 2) + (dy * dy) / sq(botonAlto / 2) <= 1;
    if (clicEnBoton) {
      NumPantalla = 0;
      ContadorTiempo = 0;
      return;
    }
  }

  NumPantalla++;
  ContadorTiempo = 0;
  if (NumPantalla > 2) {
    NumPantalla = 2;
  }
}
