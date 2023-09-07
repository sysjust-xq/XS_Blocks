{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: EBITDA成長率創N季新低(含歷史以來)
// 顯示名稱: EBITDA成長率創[4季]新低
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4=[4季],8=[8季],12=[12季],16=[16季],-1=[歷史以來]
// 
input: _p1(4);        { 如果是0, 表示是掛牌以來 }

var: step(0);
once (step = 0) begin
  if barfreq = "Q" then step = 4;
  if barfreq = "Y" then step = 1;
  if barfreq = "M" or barfreq = "AM" then step = 12;
end;  

SetTotalBar(3);
value1 = RateOfChange(GetField("稅前息前折舊前淨利"), step);        // 最新一期成長率
if _p1 = 0 then begin
  value2 = GetFieldStartOffset("稅前息前折舊前淨利") - step;        // 可以計算成長率的實際期數
end else begin 
  value2 = _p1-1;
end;  
if value2 < 0 then return;
if value2 = 0 then begin
        ret = 0;
end else begin
        for value98 = 1 to value2 begin
                value22 = RateOfChange(GetField("稅前息前折舊前淨利")[value98], step);
                if value22 <= value1 then return;
        end;
        ret = 1;
end;
OutputField(1, Value1, 2, "成長率");