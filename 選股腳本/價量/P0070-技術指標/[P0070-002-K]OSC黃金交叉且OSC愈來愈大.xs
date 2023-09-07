{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: OSC黃金交叉且OSC愈來愈大
// 顯示名稱: OSC黃金交叉且OSC愈來愈大
// 執行頻率: 日
// 
// 
Input:FastLength(12),SlowLength(26),MACDLength(9); 
Var:difValue(0),macdValue(0),oscValue(0); 
SetTotalBar((maxlist(FastLength,SlowLength) +MACDLength) * 4);  
MACD(weightedclose(), FastLength, SlowLength, MACDLength, difValue, macdValue, oscValue);   
Condition2=oscValue>0 and oscValue[1]<0 and oscValue[1]>oscValue[2] and oscValue[0]>-oscValue[1];//2. MACD黃金交叉且OSC愈來愈大 
IF Condition2 Then Ret=1;