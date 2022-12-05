class particula {

    PVector r;
    float m;
    boolean viva;
    color cor;
    particula(float x, float y, float z) {
        this.r  = new PVector(x, y, z);
        this.viva = true;
        this.m = random(5);
        this.cor = (255);
    }

    void mostra() {
        if (viva) {
            stroke(255);
            strokeWeight(m);
            point(this.r.x, this.r.y, this.r.z);
        }
    }
}
