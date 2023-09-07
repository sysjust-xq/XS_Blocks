{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 下降旗型突破
// 顯示名稱: 下降旗型突破
// 執行頻率: 日(逐筆洗價)
// 
// 
condition1=false;
condition2=false;
Var:period(40);
//整理的區間
variable:h1(0),h1b(0),h2(0),h2b(0),h3(0),h3b(0);
variable:l1(0),l1b(0),l2(0),l2b(0),l3(0),l3b(0);
settotalBar(40);
h1=highest(high[1],period);
//到前一根high為止的波段最高點
h1b=highestbar(high[1],period);
//最高點所在的bar
h2=swinghigh(high[1],period,2,2,2);
//找出波段第二高點
h2b=swinghighbar(high[1],period,2,2,2);
//第二高點所在的bar
h3=swinghigh(high[1],period,2,2,3);
h3b=swinghighbar(high[1],period,2,2,3);

l1=lowest(low,period);
//最低點
l1b=lowestbar(low,period);
//最低點是距今幾艮
l2=swinglow(low,period,2,2,2);
l2b=swinglowbar(low,period,2,2,2);
l3=swinglow(low,period,2,2,3);
l3b=swinglowbar(low,period,2,2,3);

value99 = average(close[period],20);
if h2<>-1 and h2b<>-1 and h3<>-1 and h3b<>-1
and l2<>-1 and l2b<>-1 and l3<>-1 and l3b<>-1
then begin
        if h1 >=value99*1.07//旗型最高價>=旗型初始日前的20MA*1.07
        and h1b>l3b
        and l3b>h2b
        and h2b>l2b
        and h3b>l1b
        then condition1=true;
        value3=maxlist(angle(date[h1b],date[h2b]),angle(date[h2b],date[h3b]),angle(date[l3b],date[l2b]),angle(date[l2b],date[l1b]));
        value4=minlist(angle(date[h1b],date[h2b]),angle(date[h2b],date[h3b]),angle(date[l3b],date[l2b]),angle(date[l2b],date[l1b]));
        value5=value3-value4;
        if absvalue(value5)<=5
        then condition2=true;
                value6=angleprice(h1b,value3);
        if condition1 and condition2
        and close crosses over value6
        then ret=1;
end;