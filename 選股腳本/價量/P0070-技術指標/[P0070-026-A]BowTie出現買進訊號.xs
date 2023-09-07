{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: BowTie出現買進訊號
// 顯示名稱: Bow Tie出現買進訊號
// 執行頻率: 日
// 
// Bow Tie交易法則說的是，當均線黃金交叉時不是最佳的進場點，
// 真正的進場點是在股價拉回後又再往上的那一瞬間
// 
settotalBar(22);
if barslast(average(close,5) crosses over average(close,20))<=5
and trueall(close[1]<close[2],3)
and close crosses over close[1]*1.02
then ret=1;