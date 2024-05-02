{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 投信積極買超股
// 顯示名稱: 投信積極買超股
// 執行頻率: 日
// 
// 
settotalBar(3);                                                                     
Input:p1(3);                                                                  
If GetField("投信買賣超")>8*Highest(absvalue(GetField("投信買賣超")[1]),p1) then ret = 1;