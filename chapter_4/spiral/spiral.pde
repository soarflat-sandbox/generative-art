size(500, 300);
background(255);
strokeWeight(5);
smooth();

float radius = 10;
int centx = 250;
int centy = 150;

stroke(0, 30);
noFill(); // fillを無効にする
ellipse(centx, centy, radius * 2, radius * 2);

stroke(20, 50, 70);
float x, y;
float lastx = -999;
float lasty = -999;
for (int angle = 0; angle <= 1440; angle += 5) {
    radius += 0.5;
    float rad = radians(angle);
    x = centx + (radius * cos(rad));
    y = centy + (radius * sin(rad));
    point(x, y);
}