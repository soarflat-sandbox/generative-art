void setup() {
    size(500, 500);
    background(255);
    strokeWeight(3);
    smooth();

    float radius = 100;
    int centx = 250;
    int centy = 250;

    // 色を指定
    stroke(0, 30);
    // 塗りつぶしをしない
    noFill();
    // 円を描画（noFull()しているので、線だけ描画される）
    ellipse(centx, centy, radius * 2, radius * 2);
    // 色を指定
    stroke(20, 50, 70);

    float x, y;
    float noiseVal = random(10);
    float radVariance, thisRadius, rad;
    
    beginShape();
    // 色を指定
    fill(20, 50, 70, 50);

    for (float angle = 0; angle <= 360; angle += 1) {
        noiseVal += 0.1;
        radVariance = 30 * customNoise(noiseVal);

        thisRadius = radius + radVariance;
        rad = radians(angle);
        x = centx + (thisRadius * cos(rad));
        y = centy + (thisRadius * sin(rad));
        curveVertex(x, y);
    }
    endShape();
}

float customNoise(float value) {
    int count = int((value % 12));
    float retValue = pow(sin(value), 3);
    return retValue;
}