size(500, 500);
background(255);
strokeWeight(0.5);
smooth();

int centx = 250;
int centy = 250;

stroke(0, 30);
noFill();

stroke(20, 50, 70);
float x, y;
for (int i = 0; i < 100; i+= 1) {
    float lastx = -999;
    float lasty = -999;
    float radius = 10;
    float radiusNoise = random(10);
    stroke(random(20), random(50), random(70), 80);
    int startAngle = int(random(360));
    int endAngle = 1440 + int(random(2440));
    int angleStep = 5 + int(random(3));

    for (int angle = startAngle; angle <= endAngle; angle += angleStep) {
        radiusNoise += 0.05;
        radius += 0.5;
        float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
        float rad = radians(angle);
        x = centx + (thisRadius * cos(rad));
        y = centy + (thisRadius * sin(rad));

        if (lastx > -999) {
            line(x, y, lastx, lasty);
        }
        lastx = x;
        lasty = y;
    }
}