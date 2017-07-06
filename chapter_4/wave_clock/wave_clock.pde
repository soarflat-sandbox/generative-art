void setup() {
    size(500, 500);
    background(255);
    strokeWeight(1);
    smooth();

    float radius = 100;
    int centx = 250;
    int centy = 250;

    // 色を指定
    stroke(20, 50, 70);

    float x1, x2, y1, y2;
    float rad, oppositeRad;
    float radiusNoise = random(10);

    for (float angle = 0; angle <= 100; angle += 1) {
        radiusNoise += 0.01;
        radius = (noise(radiusNoise) * 550) + 1;
        
        rad = radians(angle);
        x1 = centx + (radius * cos(rad));
        y1 = centy + (radius * sin(rad));

        oppositeRad = rad + PI;
        x2 = centx + (radius * cos(oppositeRad));
        y2 = centy + (radius * sin(oppositeRad));

        line(x1, y1, x2, y2);
    }
}