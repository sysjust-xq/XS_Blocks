{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 買賣家數集中度大於X%
// 顯示名稱: 買賣家數集中度 > [30]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,10,20,30,50,80
// 
settotalBar(3);
input: _p1(30);
value1 = (getfield("分公司淨賣超金額家數", "D")-getfield("分公司淨買超金額家數", "D"))/getfield("分公司交易家數", "D")*100;
If value1 > _p1 and getfield("分公司淨賣超金額家數", "D")-getfield("分公司淨買超金額家數", "D") > 0 then ret = 1;
outputField1(value1);