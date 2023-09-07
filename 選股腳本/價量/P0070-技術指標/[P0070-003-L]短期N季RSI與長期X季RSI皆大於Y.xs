{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 短期N季RSI與長期X季RSI皆大於Y
// 顯示名稱: 短期[6]季RSI與長期[12]季RSI皆 > [60]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 10,12,14
// _p3參數: 
// _p3數值: 30,60,80
// 
input: _p1(6), _p2(12),_p3(60);
settotalbar(maxlist(_p1,_p2) * 10);
Value1 = RSI(Close, _p1);
Value2 = RSI(Close, _p2);
if Value1 >_p3 and  Value2> _p3 then ret=1;