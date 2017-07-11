float xStart, xNoise, yNoise;

void setup() {
    // 描画ウィンドウの幅と高さを指定する
    size(300, 300);
    // 滑らかな描画（アンチエイリアス）を有効にする
    smooth();
    // 背景色を指定
    background(255);
    xStart = random(10);
    xNoise = xStart;
    yNoise = random(10);

    for (int y = 0; y <= height; y += 5) {
        // シード値に0.01を加算
        yNoise += 0.1;
        // 各列の開始時点でxNoiseをリセット
        xNoise = xStart;
        for (int x = 0; x <= width; x += 5) {
            // シード値に0.01を加算
            xNoise += 0.1;
            drawPoint(x, y, noise(xNoise, yNoise));
        }   
    }
}

void drawPoint(float x, float y, float noiseFactor) {
    // 現在の座標を保存する
    pushMatrix();
    // 座標（描画位置）の移動
    translate(x, y);
    // 座標を回転する
    rotate(noiseFactor * radians(360));
    stroke(0, 150);
    line(0, 0, 20, 0);
    // 保存した座標をとりだす
    popMatrix();
}