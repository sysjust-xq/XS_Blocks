{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月MACD黃金交叉(DIF短期N,DIF長期X,MACD期數Y)
// 顯示名稱: 月MACD黃金交叉(DIF短期[4],DIF長期[9],MACD期數[3])
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,4,5,9,12,20
// _p2參數: 
// _p2數值: 9,18,26,35,60
// _p3參數: 
// _p3數值: 3,5,9,7
// 
input: _p1(4), _p2(9), _p3(3);
variable: difValue(0), macdValue(0), oscValue(0);
SetTotalBar((maxlist(_p1,_p2) +_p3) * 4);
MACD(weightedclose(), _p1, _p2, _p3, difValue, macdValue, oscValue);
Ret = difValue Crosses Above macdValue;