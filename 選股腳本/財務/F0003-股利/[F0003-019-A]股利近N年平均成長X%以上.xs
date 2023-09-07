{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股利近N年平均成長X%以上
// 顯示名稱: [現金股利]近[5]年平均成長[10]%以上
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[股利],1=[現金股利],2=[股票股利]
// _p2參數: 
// _p2數值: 2,3,5,10
// _p3參數: 
// _p3數值: 0,10,20,30,50
// 
SetTotalBar(2);
input: _p1(1);
input: _p2(5);
input: _p3(10);

value98 = 0;
For value99 = 0 to _p2 - 1
begin
        switch (_p1) begin        
        case 0:
                value98 = value98 + RateOfChange(GetField("股利合計")[value99], 1);                
        case 1:
                value98 = value98 + RateOfChange(GetField("現金股利")[value99], 1);
        case 2:
                value98 = value98 + RateOfChange(GetField("股票股利")[value99], 1);
         end;
end;        
value98 = value98 / _p2;
if value98 >= _p3 then ret=1;
outputfield(1,value98,4,"近N年平均");