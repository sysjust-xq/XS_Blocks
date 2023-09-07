{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 盤整到[X]點後，股價創當日新低
// 顯示名稱: 盤整到[10點整]後，股價創當日新低
// 執行頻率: 1分(逐筆洗價)
// 
// _p1參數: 
// _p1數值: 9.5=[09點30分],10=[10點整],11=[11點整],12=[12點整]
// 
Input:_p1(10);//N點後
Var:_Side(-1);//新高=1、新低=-1
Var:_RecordPrice(99999999),KBarOfDay(0),Ratio(3);//近期波動幅度%

settotalBar(2);

if getfieldDate("Date")<>getfieldDate("Date")[1] then begin 
        condition1 = false;
        KBarOfDay = 0;
        _RecordPrice = iff(_Side = 1, 99999999, -99999999);
end else 
        KBarOfDay+=1;

if _p1 = 9.5 and KBarOfDay >= 30 then begin
        condition1 = (GetField("最高價", "D") - GetField("最低價", "D"))/close <= ratio*0.01;
        _RecordPrice = iff(_Side = 1, GetField("最高價", "D"), GetField("最低價", "D"));
end else if _p1 = 10 and KBarOfDay >= 60 then begin
        condition1 = (GetField("最高價", "D") - GetField("最低價", "D"))/close <= ratio*0.01;
        _RecordPrice = iff(_Side = 1, GetField("最高價", "D"), GetField("最低價", "D"));
end else if _p1 = 11 and KBarOfDay >= 120 then begin
        condition1 = (GetField("最高價", "D") - GetField("最低價", "D"))/close <= ratio*0.01;
        _RecordPrice = iff(_Side = 1, GetField("最高價", "D"), GetField("最低價", "D"));
end else if _p1 = 12 and KBarOfDay >= 180 then begin
        condition1 = (GetField("最高價", "D") - GetField("最低價", "D"))/close <= ratio*0.01;
        _RecordPrice = iff(_Side = 1, GetField("最高價", "D"), GetField("最低價", "D"));
end;

ret = condition1 and _Side * (close - _RecordPrice) >= 0;