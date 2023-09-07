{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 代操券商近N日賣超金額大於X億
// 顯示名稱: 代操券商近[10]日賣超金額 > [2]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 0.2,0.3,0.5,1,1.5,2
// 
input:_p1(10);
input:_p2(2);
settotalBar(_p1+3);
if summation((GetField("關鍵券商買賣超張數","D")*getfield("均價")),_p1)*0.0001 < -1*_p2 then ret = 1;
outputField1(summation((GetField("關鍵券商買賣超張數","D")*getfield("均價")),_p1)*0.0001);