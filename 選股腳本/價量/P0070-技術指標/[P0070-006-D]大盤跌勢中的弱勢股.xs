{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 大盤跌勢中的弱勢股
// 顯示名稱: 大盤跌勢中的弱勢股
// 執行頻率: 日
// 
// 
settotalBar(10);
Var:BiasLen(8),TSEBias(0),StockBias(0);     
TSEBias=(GetSymbolField("TSE.TW","收盤價","D")-average(GetSymbolField("TSE.TW","收盤價","D"),BiasLen))/average(GetSymbolField("TSE.TW","收盤價","D"),BiasLen);
StockBias=(C-average(C,BiasLen))/average(C,BiasLen); 
Ret=TSEBias<-0.05 and StockBias<=TSEBias;//大盤Bias為負+個股Bias<大盤Bias