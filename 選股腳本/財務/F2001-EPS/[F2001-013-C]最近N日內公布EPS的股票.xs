{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最近N日內公布EPS的股票
// 顯示名稱: 最近[3]日內公布EPS的股票
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,4,5
// 
SetBarFreq("d"); //僅限日頻率
input:_p1(3);
var:i(0);
settotalBar(_p1+1);

value1 = GetFieldDate("每股稅後淨利(元)","Q");
if value1 = 0 or AbsValue((Year(date)-Year(value1))*12+month(date)-month(value1)) > 4
then return;//過濾資料不是最新一期的

for i = _p1 downTo 1
begin
if value1<>value1[i] then begin
	ret = 1;
	value2 = i-1;
	value3 = date[i-1];
 end;
end;
outputField1(value2,"幾日前更新");
outputField2(value3,"EPS更新日");
outputField3(month(value1)/3,"EPS公布季");