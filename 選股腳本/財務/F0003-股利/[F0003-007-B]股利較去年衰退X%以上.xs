{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股利較去年衰退X%以上
// 顯示名稱: [現金股利]較去年[衰退10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[股利],1=[現金股利],2=[股票股利]
// _p2參數: 
// _p2數值: 0=[衰退],10=[衰退10%以上],20=[衰退20%以上],30=[衰退30%以上],50=[衰退50%以上],-0.5=[衰退0.5元以上],-1=[衰退1元以上],-2=[衰退2元以上]
// 
{股利較前期成長X%/X元}
SetTotalBar(6);
input: _p1(1);
input: _p2(10);  { 0=成長, >0= 成長_p1% <= 成長(-p1)}

if _p2 = 0 then 
        Begin
                switch(_p1) begin
                        case 0:
                if GetField("股利合計") < GetField("股利合計")[1] then ret=1;
                        case 1:
                                if GetField("現金股利") < GetField("現金股利")[1] then ret=1;
                        case 2:
                                if GetField("股票股利") < GetField("股票股利")[1] then ret=1;
                end;
        end;
        
if _p2  > 0 then 
        Begin
                switch(_p1) begin
                        case 0:
                                if RateOfChange(GetField("股利合計"), 1) <= _p2*-1 then ret=1;
                        case 1:
                                if RateOfChange(GetField("現金股利"), 1) <= _p2*-1 then ret=1;
                        case 2:
                                if RateOfChange(GetField("股票股利"), 1) <= _p2*-1 then ret=1;
                end;
        end;
        
if _p2  < 0 then 
        Begin
                switch(_p1) begin
                        case 0:
                                 if GetField("股利合計")[1] - GetField("股利合計") >= absvalue(_p2) then ret=1;
                        case 1:
                                 if GetField("股利合計")[1] - GetField("股利合計") >= absvalue(_p2) then ret=1;
                        case 2:
                                 if GetField("股利合計")[1] - GetField("股利合計") >= absvalue(_p2) then ret=1;
                end;
        end;
        
outputField1(GetField("股利合計"));
outputField2(GetField("股利合計")[1]);