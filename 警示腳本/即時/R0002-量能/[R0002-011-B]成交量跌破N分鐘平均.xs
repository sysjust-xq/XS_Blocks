{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 成交量跌破N分鐘平均
// 顯示名稱: 成交量跌破[20]分鐘平均
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 5,10,20,60
// 
input:_p1(20);
var:_Count(0);
settotalBar(_p1+2);
//初始化
if getfieldDate("Date") <> getfieldDate("Date")[1] then begin
	_Count = 0;
end else begin
	_Count += 1;
end;
//均量足夠的分鐘Bar才予以計算
if _Count >= _p1 - 1 then begin
	condition1 = volume crosses under average(volume,_p1);	
end else begin
	condition1 = false;
end;
//判斷
ret = condition1;