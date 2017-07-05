size(500, 300);
background(255);
strokeWeight(5);
smooth();

float radius = 100;
int centx = 250;
int centy = 150;

stroke(0, 30);
noFill(); // fillを無効にする
ellipse(centx, centy, radius * 2, radius * 2);

stroke(20, 50, 70);
float x, y;
float lastx = -999;
float lasty = -999;
for (int angle = 0; angle <= 360; angle += 5) {
    float rad = radians(angle);
    x = centx + (radius * cos(rad));
    y = centy + (radius * sin(rad));
    point(x, y);
}