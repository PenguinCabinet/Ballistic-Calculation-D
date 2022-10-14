# 🚀Ballistic-Calculation-D
D言語で書かれたシンプルな弾道計算ツールです。
## ✅特徴
* D言語で書かれている

以上
## 🏗ビルド
```
dub build
```
## 🔨使い方

### --v0オプションで初速度(m/s)、--sitaオプションで角度(度)を指定できます。
```bash
>ballistic-calculation-d --v0 10 --sita 45

Flight time : 1.44308s
Length : 10.2041m
Expressed as a formula : x(x-10.2041)=0
```

### 対話的に実行することもできます。
```bash
>ballistic-calculation-d
v0(m/s) >10
Sita(Degree) >45

Flight time : 1.44308s
Length : 10.2041m
Expressed as a formula : x(x-10.2041)=0
```

### また、jsonとして出力することもできます。
```bash
>ballistic-calculation-d --v0 10 --sita 45 --json

{"ExpressedAsFormula":"x(x-10.2041)=0","FlightTime":"1.44308","Length":"10.2041"}
```
## 📃テスト
```
dub test
```

## 🎫LICENSE

[MIT](./LICENSE)

## ✍Author

[PenguinCabinet](https://github.com/PenguinCabinet)
