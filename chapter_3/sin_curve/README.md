# サインカーブ
以下のコードで、綺麗なサインカーブが描画される。

**sin_curve/sin_curve.pde**

```
size(500, 100);
background(255);
strokeWeight(5);
smooth();

stroke(0, 30);
line(20, 50, 480, 50);

stroke(20, 50, 70);
float xstep = 1;
float lastx = -999;
float lasty = -999;
float angle = 0;
float y = 50;
for (int x=20; x<=480; x+=xstep) {
  float rad = radians(angle);
  y = 50+(sin(rad)*40);
  if (lastx>-999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
  angle++;
}
```

## サインカーブにランダム性を加える
規則正しい線が描画されても、あまりに単純すぎて面白くないため、線にランダム性を加えてみる。

sinを3乗してみたり

**sin_curve2/sin_curve2.pde（sin_curve.pdeを同じ記述は省略）**

```
y = 50+(pow(sin(rad),3)*30);
```

パーリンノイズを加えてみるとユニークな線が描画できる。

**sin_curve3/sin_curve3.pde（sin_curve.pdeを同じ記述は省略）**

```
y = 50+(pow(sin(rad),3)*30);
```
