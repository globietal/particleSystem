import peasy.*;
PeasyCam cam;
int n=1; //numero de COORDENADAS
int nPar =200;
coordinate[] coordenadas;
particula[] particulas;
void setup() {
    //fullScreen(P3D);
    size(900, 900, P3D);
    cam = new PeasyCam(this, 0, 0, 0, 300);
    cam.setMinimumDistance(0);
    cam.setMaximumDistance(500);
    particulas =new particula[nPar];
    coordenadas = new coordinate[n];
    for (int i =0; i<n; i++) {
        coordenadas[i] = new coordinate(0, 0, 0);
    }
    for (int i=0; i<nPar; i++) {
        float rand = random(100, 200);
        particulas[i] = new particula(random(-rand, rand), random(-rand, rand), random(-rand, rand));
    }
}
/*void mousePressed(){
 save("print.jpeg");
 noLoop();
 }*/

void draw() {
    //  translate(width/2,height/2);
    rotate(radians(frameCount));
    background(0, 10);

    for (int i =0; i<nPar; i++) {
        coordenadas[0].mostra();
        particulas[i].mostra();
        if (random(4)>3) {
            particulas[i].viva =false;
        } else {
            particulas[i].viva=true;
        }
    }
    println("rolando..."+" Frame : "+frameCount+"   FPS: "+floor(frameRate));
}
