# ðBallistic-Calculation-D
Dè¨èªã§æ¸ãããã·ã³ãã«ãªå¼¾éè¨ç®ãã¼ã«ã§ãã
## âç¹å¾´
* Dè¨èªã§æ¸ããã¦ãã

ä»¥ä¸
## ðãã«ã
```
dub build
```
## ð¨ä½¿ãæ¹

### --v0ãªãã·ã§ã³ã§åéåº¦(m/s)ã--sitaãªãã·ã§ã³ã§è§åº¦(åº¦)ãæå®ã§ãã¾ãã
```bash
>ballistic-calculation-d --v0 10 --sita 45

Flight time : 1.44308s
Length : 10.2041m
Expressed as a formula : x(x-10.2041)=0
```

### å¯¾è©±çã«å®è¡ãããã¨ãã§ãã¾ãã
```bash
>ballistic-calculation-d
v0(m/s) >10
Sita(Degree) >45

Flight time : 1.44308s
Length : 10.2041m
Expressed as a formula : x(x-10.2041)=0
```

### ã¾ããjsonã¨ãã¦åºåãããã¨ãã§ãã¾ãã
```bash
>ballistic-calculation-d --v0 10 --sita 45 --json

{"ExpressedAsFormula":"x(x-10.2041)=0","FlightTime":"1.44308","Length":"10.2041"}
```
## ðãã¹ã
```
dub test
```

## ð«LICENSE

[MIT](./LICENSE)

## âAuthor

[PenguinCabinet](https://github.com/PenguinCabinet)
