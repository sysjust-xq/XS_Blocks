{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 掛牌超過N年的公司
// 顯示名稱: 掛牌超過[5]年的公司
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10
// 
input:_p1(5);
SetTotalBar(3);
if GetField("公司掛牌日期") > 0 and DateDiff(Date,GetField("公司掛牌日期"))/365 > _p1 then ret =1;
OutputField1(GetField("公司掛牌日期"),"公司掛牌日期");