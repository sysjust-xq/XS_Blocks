{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自由現金流量對淨利比(較前期或去年同期或四季合計較去年同期)增加
// 顯示名稱: 自由現金流量對淨利比[較前期]增加
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[較前期],1=[較去年同期],2=[四季合計較去年同期]
// 
input: _p1(0);

switch _p1 begin
case 0: 
   value1 = GetField("自由現金流量") /  GetField("本期稅後淨利");
   value2 = GetField("自由現金流量")[1] /  GetField("本期稅後淨利")[1];
case 1:
   value1 = GetField("自由現金流量") /  GetField("本期稅後淨利");
   value2 = GetField("自由現金流量")[4] /  GetField("本期稅後淨利")[4];
case 2:
   value1 = Summation(GetField("自由現金流量"),4) /  Summation(GetField("本期稅後淨利"),4);
   value2 = Summation(GetField("自由現金流量"),4)[4] /  Summation(GetField("本期稅後淨利"),4)[4];
end;
if value1 > value2 then ret=1;