{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 急挫後回彈
// 顯示名稱: 急挫後回彈（前1分鐘下殺超過[2]%，現在從低檔反彈超過[1]%）
// 執行頻率: 1分(非逐筆洗價)
// 
// 急挫後，在早盤時段前出現反彈
// _p1參數: 往下殺幅度的下限值
// _p1數值: 1,2,3
// _p2參數: 低檔反彈幅度的下限值
// _p2數值: 1,2,3
// 
input:_p1(2), _p2(1);
var:_rangeStart(-1),_rangeEnd(-1);
settotalbar(3);

_rangeStart = iff(-1 = 1, GetField("最高價")[2], GetField("最低價")[2]);
_rangeEnd   = iff(-1 = 1, GetField("最低價")[1], GetField("最高價")[1]);
condition1 = 100 * -1 * (GetField("最低價")[1]/absvalue(_rangeStart) - sign(_rangeStart)) > _p1; //上個1分鐘線單分鐘拉超過1.5%
condition2 = -1 * (_rangeEnd - GetField("最低價")) > 0; //高不過高
condition3 = 100 * -(-1 * (GetField("最高價")/absvalue(_rangeEnd) - sign(_rangeEnd))) > _p2;  //自高檔回1%

if condition1 and condition2 and condition3 then ret=1;