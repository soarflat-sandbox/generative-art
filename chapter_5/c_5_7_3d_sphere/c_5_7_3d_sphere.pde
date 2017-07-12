// OpenGLのライブラリのインポートする
import processing.opengl.*;

void setup() {
    // レンダリングエンジンにOPENGLを指定
    size(500, 300, OPENGL);
    // どれぐらいの細かさで円を描画するか指定
    // (360/40) = 9 のため9度毎に頂点を作る。
    sphereDetail(40);
}

void draw() {
    background(255);
    translate(width/2, height/2, 50);
    sphere(100);
}