{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最近N日內公布營收的股票
// 顯示名稱: 最近[3]日內公布營收的股票
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,4,5
// 
SetBarFreq("d"); //僅限日頻率
input:_p1(3);
var:i(0);
settotalBar(_p1+2);

value1 = GetFieldDate("月營收","m");
if value1 = 0 or AbsValue((Year(Date)-Year(value1))*12+month(Date)-month(value1)) > 2
then return;//過濾資料不是最新一期的

for i = _p1+1 downTo 1
begin
        if value1<>value1[i] then begin
                ret = 1;
                value2 = i-1;
                value3 = Date[i-1];
        end;
end;

outputField1(value2,"幾日前更新");
outputField2(value3,"月營收更新日");
outputField3(month(value1),"月營收期別");
outputField4(GetFieldDate("月營收","m"));