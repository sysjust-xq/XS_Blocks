{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 企業價值營收比大於等於X％
// 顯示名稱: 企業價值營收比 >= [100]％
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 100,150,200,250,300,500
// 
input:_p1(100); 
SetTotalBar(3); 
if (GetField("企業價值","Q")/summation(GetField("營業收入淨額","Q"),4))*100 > 0 and (GetField("企業價值","Q")/summation(GetField("營業收入淨額","Q"),4))*100 >= _p1 then ret=1; 
OutputField1((GetField("企業價值","Q")/summation(GetField("營業收入淨額","Q"),4))*100,"企業價值營收比 ");