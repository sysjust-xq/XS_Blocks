{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 每位員工營收大於N萬元
// 顯示名稱: 每位員工營收 > [1000]萬元
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 100,500,1000,2000,3000,5000
// 
settotalBar(3);
input:_p1(1000);
if (getField("營業收入淨額", "Q")+getField("營業收入淨額", "Q")[1]+getField("營業收入淨額", "Q")[2]+getField("營業收入淨額", "Q")[3])/GetField("員工人數","Q")>(_p1*0.01) then ret=1;
outputfield(1,(getField("營業收入淨額", "Q")+getField("營業收入淨額", "Q")[1]+getField("營業收入淨額", "Q")[2]+getField("營業收入淨額", "Q")[3])/GetField("員工人數","Q"),1,"每人營收(單位:百萬元)");
outputfield(2,getField("營業收入淨額", "Q")+getField("營業收入淨額", "Q")[1]+getField("營業收入淨額", "Q")[2]+getField("營業收入淨額", "Q")[3],0,"最近四季營收總和(單位:百萬元)");
outputfield(3,GetField("員工人數","Q"),0,"員工人數");