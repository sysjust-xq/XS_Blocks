{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開高不拉回後再創新高
// 顯示名稱: 開高不拉回後再創新高（開高幅度超過[2]%，拉回幅度不超過[1]%）
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 開高幅度的下限值
// _p1數值: 1,2,3
// _p2參數: 拉回幅度的上限值
// _p2數值: 1,2,3
// 
input:_p1(2), _p2(1);
variable:count(0),_LP(999999),_UP(0);

settotalBar(2);

//紀錄變數初始化
if GetField("Date") <> GetField("Date")[1] then begin
	count=1;
	_LP=999999;
	_UP=0;
end else 
	count += 1;

//過了5根一分K棒，才開始記錄最高與最低。
if count>5 and low < _LP then _LP = low;
if count>5 and high > _UP then _UP = high;

//過了5根一分K棒，才判斷。
if count>5 then begin
	condition1 = GetField("開盤價","D")> GetField("參考價", "D")*(1+_p1/100);
	condition2 =_LP[1]*(1+_p2/100)>_UP[1];
	condition3 = close = GetField("最高價", "D");
end else begin
	condition1 = false;
	condition2 = false;
	condition3 = false;
end;

if condition1 and condition2 and condition3 then ret = 1;