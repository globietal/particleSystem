class coordinate {
    PVector[] e;
    PVector orig, r;
    float tam;
    boolean on;
    coordinate(float x, float y, float z) {
        this.orig = new PVector(x, y, z);
        this.on = true;
        this.e = new PVector[3];
        setE();
        this.tam = 200;
    }

    void setE() {
        this.e[0] = new PVector(1, 0, 0);
        this.e[1] = new PVector(0, 1, 0);
        this.e[2] = new PVector(0, 0, -1);
    }
    void mostra() {
        if (on) {
            stroke(255, 0, 0);
            strokeWeight(1);
            noFill();
            line(this.orig.x, this.orig.y, this.orig.z, this.orig.x+this.tam, this.orig.y, this.orig.z);
            stroke(0, 255, 0);
            line(this.orig.x, this.orig.y, this.orig.z, this.orig.x, this.orig.y+this.tam, this.orig.z);
            stroke(0, 0, 255);
            line(this.orig.x, this.orig.y, this.orig.z, this.orig.x, this.orig.y, this.orig.z+this.tam);
        }
    }
}
