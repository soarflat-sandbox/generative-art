size(500, 500);
background(255);
strokeWeight(3);
smooth();

float radius = 100;
int centx = 250;
int centy = 250;

stroke(0, 30);
noFill(); // fillを無効にする
ellipse(centx, centy, radius * 2, radius * 2);

stroke(20, 50, 70);
float x, y;
float lastx = -999;
float lasty = -999;
float radiusNoise = random(10);

for (int angle = 0; angle <= 1440; angle += 5) {
    radiusNoise += 0.05;
    radius += 0.5;
    float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
    float rad = radians(angle);
    x = centx + (thisRadius * cos(rad));
    y = centy + (thisRadius * sin(rad));
    point(x, y);

    if (lastx > -999) {
        line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
}