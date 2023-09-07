{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 整理後創新高
// 顯示名稱: 整理後創新高
// 執行頻率: 日
// 
// 
settotalBar(3);
if lowest(low,90)=low[89]
//波段低點跟前一日一樣，代表未再創新低
and  highest(high[1],90)<=lowest(low,90)*(1+20/100)
//波段高點跟波段低點之間沒有隔太遠
and close crosses over highest(close[1],90)
//股價突破波段的高點
then ret=1;