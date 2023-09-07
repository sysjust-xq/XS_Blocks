{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 成立不到N年就掛牌的公司
// 顯示名稱: 成立不到[5]年就掛牌的公司
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10
// 
input:_p1(5);
SetTotalBar(3);
if GetField("公司成立日期") > 0 and DateDiff(GetField("公司掛牌日期"),GetField("公司成立日期"))/365 < _p1 then ret =1; 
OutputField1(GetField("公司掛牌日期"),"公司掛牌日期");
OutputField2(GetField("公司成立日期"),"公司成立日期");
outputField3(DateDiff(GetField("公司掛牌日期"),GetField("公司成立日期"))/365,"差了幾年");