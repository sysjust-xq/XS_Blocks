{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 大單、特大單買盤佔比大於X%
// 顯示名稱: [大單]買盤佔比 > [10]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1=[大單],2=[特大單]
// _p2參數: 
// _p2數值: 10,30,50,70,90
// 
input: _p1(1);
input: _p2(10);
SetTotalBar(3);
If getfield("成交金額(元)") <> 0 then 
Value1 = (GetField("買進大單金額","D")-GetField("賣出大單金額","D"))/getfield("成交金額(元)")*100;
If getfield("成交金額(元)") <> 0 then 
Value2 = (GetField("買進特大單金額","D")-GetField("賣出特大單金額","D"))/getfield("成交金額(元)")*100;

Switch (_p1)
Begin
  Case 1://大單買超
     If value1 > _p2 then ret = 1;
  Case 2://特大單買超
     If value2 > _p2 then ret = 1;
End;