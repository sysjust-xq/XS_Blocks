{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 買賣家數發散度創N日新高
// 顯示名稱: 買賣家數發散度創[5]日新高
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20,30,40,50,60,100,120
// 
input: _p1(5);
settotalBar(_p1+2);
value1 = (getfield("分公司淨買超金額家數", "D")-getfield("分公司淨賣超金額家數", "D"))/getfield("分公司交易家數", "D")*100;
If value1 > highest(value1[1],_p1) and getfield("分公司淨買超金額家數", "D")-getfield("分公司淨賣超金額家數", "D") > 0 then ret = 1;
outputField1(value1);
outputField2(highest(value1[1],_p1));