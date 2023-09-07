{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 預估本益比(以營收成長率估算)大於等於N倍
// 顯示名稱: 預估本益比(以營收成長率估算) >= [10]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,6,7,8,9,10
// 
settotalBar(3);
input:g1(0,"毛利率增長率%");
input:g2(0,"營業費用率增長率%");
input:g3(10,"營收增長率%");
input:_p1(10);
value1=GetField("營業毛利率","Q");
value2=GetField("營業費用率","Q");
value3=GetField("月營收","M");//億
value4=(GetField("月營收","M")*12)*(1+g3/100);//預估年營收=月營收x12x成長率
value5=GetField("營業毛利率","Q")*(1+g1/100);//預估毛利率
value6=GetField("營業費用率","Q")*(1+g2/100);//預估營業費用率
value7=value4*(value5-value6)/100;//預估營業利益
value8=GetField("最新股本");//億
if value8<>0
then value9=value7/GetField("最新股本")*10;
if value9<>0
then value6=close/value9;//預估本益比
if value6 >=_p1 and value9>0 then ret=1;