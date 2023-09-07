{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日主力買超大於X億
// 顯示名稱: 近[5]日主力買超金額 > [5]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 0.5,1,3,5,10,20,50
// 
input:_p1(5);
input:_p2(5);
settotalBar(_p1+3);
if summation((GetField("主力買賣超張數","D")*getfield("均價")),_p1)*0.0001 > _p2 then ret = 1;
outputField1(summation((GetField("主力買賣超張數","D")*getfield("均價")),_p1)*0.0001);