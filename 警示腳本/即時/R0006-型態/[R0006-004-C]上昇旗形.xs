{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 上昇旗形
// 顯示名稱: 上昇旗形
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:period(20);//計算區間
value2=nthhighest(1,high[1],period);//最高價
value3=nthhighest(2,high[1],period);//第二高價
value4=nthhighest(3,high[1],period);//第三高價
value5=nthhighestbar(1,high[1],period);//最高價距今幾根bar
value6=nthhighestbar(2,high[1],period);//第二高價距今幾根bar
value7=nthhighestbar(3,high[1],period);//第三高價距今幾根bar
settotalBar(22);
ret = value6-value5>3 
and value7-value6>3
//三個高點沒有連在一起，且是愈來愈高
and maxlist(value2,value3,value4)
<minlist(value2,value3,value4)*1.05
//三個高點相差不到5%
and close crosses over value2;
//創新高