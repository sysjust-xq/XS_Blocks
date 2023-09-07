{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 平台整理後突破
// 顯示名稱: 平台整理後突破
// 執行頻率: 日(逐筆洗價)
// 
// 
var:Period(20),ratio(10),ratio1(5),h1(0),h2(0),L1(0),L2(0); 
settotalBar(30);
h1=nthhighest(1,high[1],period);
h2=nthhighest(4,high[1],period);
l1=nthlowest(1,low[1],period);
l2=nthlowest(4,low[1],period);
ret        = (h1-l1)/l1<=ratio/100
and (h1-h2)/h2<=ratio1/100
and (l2-l1)/l1<=ratio1/100
and close crosses over h1
and close[period+30]*1.1<h1;