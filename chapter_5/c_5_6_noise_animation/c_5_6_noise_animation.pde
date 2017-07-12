float xStart, xNoise, yStart, yNoise;
float xStartNoise, yStartNoise;

void setup() {
    // 描画ウィンドウの幅と高さを指定する
    size(300, 300);
    // 滑らかな描画（アンチエイリアス）を有効にする
    smooth();
    // 背景色を指定
    background(0);
    // フレームレートを指定
    frameRate(24);
    // 開始位置にノイズを使う
    xStartNoise = random(20);
    yStartNoise = random(20);
    // シード値を設定
    xStart = random(10);
    yNoise = random(10);
}

void draw() {
    // 毎フレーム毎にbackgroundをクリアする
    background(0);

    // 毎フレーム毎に開始位置のシード値を加算する   
    xStartNoise += 0.01;
    yStartNoise += 0.01;
    xStart += (noise(xStartNoise) * 0.5) - 0.25;
    yStart += (noise(yStartNoise) * 0.5) - 0.25;

    xNoise = xStart;
    yNoise = yStart;

    for (int y = 0; y <= height; y += 5) {
        // シード値に0.1を加算
        yNoise += 0.1;
        // 各列の開始時点でxNoiseをリセット
        xNoise = xStart;
        for (int x = 0; x <= width; x += 5) {
            // シード値に0.1を加算
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
    rotate(noiseFactor * radians(540));
    float edgeSize = noiseFactor * 35;
    float grey = 150 + (noiseFactor * 120);
    float alph = 150 + (noiseFactor * 120);
    noStroke();
    fill(grey, alph);
    ellipse(0, 0, edgeSize, edgeSize / 2);
    // 保存した座標をとりだす
    popMatrix();
}