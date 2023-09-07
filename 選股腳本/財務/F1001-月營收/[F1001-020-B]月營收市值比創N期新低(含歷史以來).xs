{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收市值比創N期新低(含歷史以來)
// 顯示名稱: 月營收市值比創[1年]新低
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1=[1年],2=[2年],3=[3年],5=[5年],10=[10年],0=[歷史以來]
// 
input: _p1(1); 
SetTotalBar(2);
if _p1 <= 0 then value2 = GetFieldStartOffset("月營收")-12 else value2 = _p1*12;
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  var: idx(0);
  value1 = Summation(GetField("月營收"),12)/GetField("總市值(億)");
  value33 = 0;
  for idx = 1 to value2-1 begin
        value3 = Summation(GetField("月營收")[idx],12)/GetField("總市值(億)")[idx];       
        if value1 > value3 then return;
  end;        
  ret=1;
end;
OutputField(1, Value1, 2, "月營收/總市值");