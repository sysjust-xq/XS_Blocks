{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日MTM趨勢往上可是近X日股價已經開始下跌
// 顯示名稱: [10]日MTM趨勢往上可是近[3]日股價已經開始下跌
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20
// _p2參數: 
// _p2數值: 2,3,5,7
// 
Input: _p1(10),_p2(3);
SetBarFreq("AD");
settotalbar(_p1 + 2);
Value1 = Momentum(Close, _p1);
ret = UpTrend(value1,_p1) and  downTrend(c,_p2);