{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤逢低承接的力道大增
// 顯示名稱: 大盤逢低承接的力道大增
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:_p1(5);
Var:_p2(20);
Var:_Side(1);//黃金交叉=1、死亡交叉=-1
settotalBar(22);

if truerange<>0 then
        if close<=open then 
                value1=(close-low)/truerange*100
        else
                value1=(open-low)/truerange*100;
value4=average(value1,_p1)-average(value2,_p2); 
value5=bollingerband(value4, _p2, 2);

condition1 = _Side * (value4 - value5) > 0;
condition2 = condition1 <> condition1[1];
if condition1 and condition2 then ret = 1;