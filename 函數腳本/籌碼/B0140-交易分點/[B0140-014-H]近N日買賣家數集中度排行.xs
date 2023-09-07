{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日買賣家數集中度排行
// 顯示名稱: 近[10]日買賣家數集中度排行
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input:_p1(10,numeric);
SetTotalBar(_p1+2); 
value1 = (Summation(getfield("分公司淨賣超金額家數", "D"), _p1)-Summation(getfield("分公司淨買超金額家數", "D"), _p1))/summation(getfield("分公司交易家數", "D"),_p1)*100;
If Summation((getfield("分公司淨賣超金額家數", "D")), _p1)-Summation(getfield("分公司淨買超金額家數", "D"), _p1) > 0  then retVal=value1;