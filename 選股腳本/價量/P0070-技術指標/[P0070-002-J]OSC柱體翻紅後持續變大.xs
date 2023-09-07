{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: OSC柱體翻紅後持續變大
// 顯示名稱: OSC柱體翻紅後持續變大
// 執行頻率: 日
// 
// 
Var:V_MACD(0),V_DIF(0),V_OSC(0);              
Var:V_RSV(0),V_KDK(0),V_KDD(0);                                            
SetTotalBar((maxlist(12,26) +9) * 4);      
macd(C,12,26,9,V_MACD,V_DIF,V_OSC);             
Stochastic(9,3,3,V_RSV,V_KDK,V_KDD);
If 
V_OSC[2] Cross Over 0 and
V_OSC[1] > V_OSC[2] and
V_OSC > V_OSC[1] then ret = 1;