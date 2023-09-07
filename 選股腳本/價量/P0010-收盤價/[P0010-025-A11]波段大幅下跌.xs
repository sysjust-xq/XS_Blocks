{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 波段大幅下跌
// 顯示名稱: 波段大幅下跌
// 執行頻率: 日
// 
// 
input:_p1(28.30,"N%");
settotalBar(32);
ret = close*(1+_p1*0.01)<close[30];