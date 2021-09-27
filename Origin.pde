void setup(){
    size(1400, 1000);
    background(50);
    stroke(48, 24, 0);
    strokeWeight(10);
    line(width/2, height, width/2, height-250);
    createTree(width/2, height-250, 270, 90, 10);
}

void createTree(float x, float y, int ang, int len, int sW){
    if(len < 5){
        return;
    }   
    final Branch b1 = new Branch(x, y, ang, len, sW, 1);
    b1.display(); 
    createTree(b1.x2, b1.y2, b1.ang, len - int(random(5, 9)), b1.sW);

    final Branch b2 = new Branch(x, y, ang, len, sW, -1);
    b2.display(); 
    createTree(b2.x2, b2.y2, b2.ang, len - int(random(5, 9)), b2.sW);
}