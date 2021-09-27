class Branch{
    final float x, y, x2, y2;
    final int len, ang, sW;

    Branch(float _x, float _y, int _ang, int _len, int _sW, int dir){
        x = _x;
        y = _y;
        len = _len;
        ang = _ang + int(random(15, 35)) * dir;
        x2 = x + len * cos(radians(ang));
        y2 = y + len * sin(radians(ang)); 
        sW = (_sW <= 1) ? 1 : _sW-1;
    }

    void display(){
        final color c = (len < 15) ? color(0, 255, 0) : color(48, 24, 0);
        stroke(c);
        strokeWeight(sW);
        line(x, y, x2, y2);
    }
}