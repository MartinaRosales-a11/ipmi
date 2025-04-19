PImage miFoto;

miFoto = loadImage ("autoretrato.jpg");

size (800,400);
background (255); 

//foto
image ( miFoto, 0, 0, 400, 400); 
  
//pelo
fill(30); 
stroke(30);
ellipse(600, 130, 150, 190);

// rostro
fill (255, 220, 200);
stroke (255, 220, 200);
ellipse (600, 150, 140, 190);
  
// cuello
fill (255, 220, 200); //mismo tono del rostro
stroke (255, 220, 200);
rect(580, 240, 40, 50);
  
// ojos
fill(80, 60, 50); // marrón
stroke(0);
strokeWeight(1);
ellipse(580, 145, 10, 6); // ojo izq
ellipse(620, 145, 10, 6); // ojo der

//nariz
stroke(150, 100, 90);
strokeWeight(2);
noFill();
beginShape();
vertex(600, 150); // inicio de la nariz
vertex(595, 170); 
vertex(600, 170);
endShape();

//boca
noFill();
stroke(150, 50, 70); // rosa
strokeWeight(2);
arc(600, 200, 30, 15, 0, PI);

//cejas
stroke (80, 70, 50);
strokeWeight(3);
line(570, 124, 590, 126); // ceja izq
line(610, 126, 630, 124); // ceja der

//mechones de pelo
stroke(30); 
strokeWeight(2);
// mechón izquierdo
noFill();
bezier(570, 60, 560, 130, 570, 170, 570, 250);
// mechón derecho
bezier(630, 60, 640, 130, 630, 170, 630, 250);
 
// remera
fill(40); // gris oscuro casi negro
stroke(40);
beginShape();
vertex(540, 290);
vertex(660, 290);
vertex(700, 400);
vertex(500, 400);
endShape(CLOSE);

// collar
noFill();
stroke(0);
strokeWeight(1);

arc(600, 260, 40, 20, 0, PI); //primer cordon
arc(600, 270, 45, 25, 0, PI); //segundo cordon



  
  
