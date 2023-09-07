{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 當沖虧損金額大於N萬元
// 顯示名稱: 當沖虧損金額 > [100]萬元
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,50,100,300,500,700,1000
// 
settotalBar(2);
input:_p1(100);
value1 = (GetField("現股當沖買進金額")-GetField("現股當沖賣出金額"))/10000;
If value1 < _p1*-1  then ret = 1;
outputField1(value1,"金額");;