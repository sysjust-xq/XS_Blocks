{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 每股營收大於X元
// 顯示名稱: 每股營收 > [10]元
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 1,3,5,10,15,20
// 
input:_p1(10);
SetTotalBar(3); 
If summation(GetField("月營收","M"),12)/(GetField("股本(億)","D"))> _p1 then ret = 1;
outputField2(summation(GetField("月營收","M"),12)/(GetField("股本(億)","D")));