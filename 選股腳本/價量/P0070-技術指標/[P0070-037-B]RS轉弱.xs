{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: RS轉弱
// 顯示名稱: RS轉弱
// 執行頻率: 日
// 
// 
var:length(10),sumUp(0), sumDown(0), up(0), down(0),RS(0); 
setbackBar(50);
if CurrentBar = 1 then begin 
	sumUp = Average(maxlist(close - close[1], 0), length); 
	sumDown = Average(maxlist(close[1] - close, 0), length); 
end else begin 
	up = maxlist(close - close[1], 0); 
	down = maxlist(close[1] - close, 0);  
	sumUp = sumUp[1] + (up - sumUp[1]) / length; 
	sumDown = sumDown[1] + (down - sumDown[1]) / length;
end; 
if sumdown<>0 then rs=sumup/sumdown; 
ret = rs crosses below 4;