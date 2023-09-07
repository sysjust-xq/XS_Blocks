{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股利創N年新低(含歷史以來)
// 顯示名稱: [現金股利]創[3年]新低
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[股利],1=[現金股利],2=[股票股利]
// _p2參數: 
// _p2數值: 3=[3年],5=[5年],10=[10年],-1=[歷史以來]
// 
settotalBar(2);
input: _p1(1);
input: _p2(3);
if _p2 <= 0 then value2 = GetFieldStartOffset("股利合計") else value2 = _p2-1;
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  if _p1 = 0 then begin
    value1 = GetField("股利合計");
    value3 = SimpleLowest(GetField("股利合計")[1], value2);
  end else if _p1 = 1 then begin
    value1 = GetField("現金股利");
    value3 = SimpleLowest(GetField("現金股利")[1], value2);  
  end else begin
    value1 = GetField("股票股利");
    value3 = SimpleLowest(GetField("股票股利")[1], value2);  
  end;
  if value1 < value3 then ret=1;
end;
outputField(1, value1, 2, "股利");