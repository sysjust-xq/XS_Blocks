{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 淨流動資產市值比大於1
// 顯示名稱: 淨流動資產市值比 > 1
// 執行頻率: 日
// 
// 
var:ratio(1);//淨流動資產市值比下限
settotalBar(2);
value4=(getField("流動資產", "Q")-getField("負債總額", "Q")*0.01)/(getField("總市值(億)", "D")*100);
ret = value4 > ratio;