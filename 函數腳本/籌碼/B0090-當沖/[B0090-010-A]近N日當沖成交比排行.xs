{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日當沖成交比排行
// 顯示名稱: 近[5]日當沖成交比前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input: _p1(5,numeric);
value1 = Summation(GetField("現股當沖張數"), _p1);
value2 = Summation(Volume, _p1);

retval = value1 / value2;