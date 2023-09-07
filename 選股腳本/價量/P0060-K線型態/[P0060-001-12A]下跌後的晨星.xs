{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 下跌後的晨星
// 顯示名稱: 下跌後的晨星
// 執行頻率: 日
// 
// 
var:BiasLen(15);
Var:TSEBias(0),OTCBias(0),StockBias(0);
settotalBar(15+2);
// 晨星定義
// 往前二根收黑K且黑K需要大於平均實體K棒1.2倍
Condition21=O[2]-C[2]>Average(absvalue(C-O),10)*1.2;
// 前一根的實體必須是往前二根實體的0.5倍以下
Condition22=absvalue(C[1]-O[1])<absvalue(O[2]-C[2])*0.5;
// 當根K棒收紅K紅需大於均實體棒1.3倍
Condition23=C-O>Average(absvalue(C-O),10)*1.3;
// 這三根K棒的高低點位置
Condition24=L[1]<L[2] and L>L[1] and H>H[1];
// 計算
TSEBias=(GetSymbolField("TSE.TW","收盤價","D")-average(GetSymbolField("TSE.TW","收盤價","D"),BiasLen))/average(GetSymbolField("TSE.TW","收盤價","D"),BiasLen);
OTCBias=(GetSymbolField("OTC.TW","收盤價","D")-average(GetSymbolField("OTC.TW","收盤價","D"),BiasLen))/average(GetSymbolField("OTC.TW","收盤價","D"),BiasLen);
StockBias=(C-average(C,BiasLen))/average(C,BiasLen);
// 區間大盤發生下跌
Condition10=TSEBias<-0.01 and OTCBias <-0.01;
Condition2=Trueany(Condition10,8);
// 上下引線不長
ConditIon3=C*1.015>=H and L[1]*1.02>C[1] ;                                 
// K線組合滿足晨星
Condition4=Condition21 and Condition22 and Condition23 and Condition24;
// 個股條件
ret=Condition2 and Condition3 and Condition4;