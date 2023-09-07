{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 大單、特大單買超
// 顯示名稱: [大單]買超
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1=[大單],2=[特大單],3=[大單或特大單],4=[大單與特大單]
// 
input: _p1(1);
SetTotalBar(3);

Switch (_p1)
Begin
  Case 1://大單買超
     If (GetField("買進大單量")- GetField("賣出大單量")) > 0    then ret = 1;
  Case 2://特大單買超
     If (GetField("買進特大單量")- GetField("賣出特大單量")) > 0 then ret = 1;
  Case 3://大單 或 特大單買超
     If (GetField("買進特大單量")- GetField("賣出特大單量")) > 0  or 
            (GetField("買進大單量")- GetField("賣出大單量")) > 0    then ret = 1; 
  Case 4://大單 與 特大單買超
     If (GetField("買進特大單量")- GetField("賣出特大單量")) > 0  and 
            (GetField("買進大單量")- GetField("賣出大單量")) > 0     then ret = 1; 
End;