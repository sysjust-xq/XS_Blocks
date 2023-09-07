{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現金報酬率小於X%
// 顯示名稱: 現金報酬率 < [1]%
// 執行頻率: 年
// 
// 現金報酬率 = (自由現金流量-利息費用+利息收入)/企業價值
// _p1參數: 
// _p1數值: 1,3,5,10
// 
input:_p1(1);
SetTotalBar(3);
value1=(getfield("自由現金流量")-GetField("利息支出")+ GetField("利息收入"))/GetField("企業價值")*100;
If value1 < _p1 then ret = 1;
outputField1(value1);