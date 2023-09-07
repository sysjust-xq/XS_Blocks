{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: GVI指數(成長價值指標)低檔回升
// 顯示名稱: GVI指數(成長價值指標)低檔回升
// 執行頻率: 日
// 
// 
var:GVI(0);
SetTotalBar(3);
if 1/GetField("股價淨值比","D")*(1+GetField("股東權益報酬率","Q"))*(1+GetField("股東權益報酬率","Q"))*(1+GetField("股東權益報酬率","Q"))*
(1+GetField("股東權益報酬率","Q"))*(1+GetField("股東權益報酬率","Q")) cross over 1.1  then ret=1;