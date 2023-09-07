{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 當日高點回檔
// 顯示名稱: 自當日高點回檔[2]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 高點回檔幅度的下限值
// _p1數值: 1,2,3,5,7
// 
Input: _p1(2); //%
var: intraBarPersist _Count(0);
var: _recordprice(0);
var: _cantrigger(false);
SetTotalBar(0);

if GetFielddate("日期") <> GetFielddate("日期")[1] then begin
        _Count = 0;
        _recordprice = GetField("最高價","D");
        _cantrigger = true;
end;

//創新高後拉回
condition1 = _Count > 0;
condition2 = iff(_recordprice<>0,
        100 * -1 * (GetField("最低價")/absvalue(_recordprice) - sign(_recordprice)),0) > _p1;

if condition1 and condition2 and _cantrigger then
begin
        Ret = 1;
        _cantrigger = false;
end;     

//創新高
if GetField("最高價", "D") = GetField("最高價") then begin
        _Count = 0;
        _cantrigger = true;
        _recordprice = GetField("最高價");
end else begin
        _Count = _Count + 1;
end;