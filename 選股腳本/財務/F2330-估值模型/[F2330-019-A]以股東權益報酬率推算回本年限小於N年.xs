{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 以股東權益報酬率推算回本年限小於N年
// 顯示名稱: 以股東權益報酬率推算回本年限 < [5]年
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,3.5,5
// 
settotalBar(3);
input:_p1(5);
if GetField("股東權益報酬率","Y")>0 and GetField("股價淨值比","D")/(GetField("股東權益報酬率","Y")/100)<_p1
and GetField("股東權益報酬率","Y")<70 and GetField("股價淨值比","D")/(GetField("股東權益報酬率","Y")/100)>0 then ret=1;
outputfield(1,GetField("股東權益報酬率","Y"),0,"股東權益報酬率");
outputfield(2,GetField("股價淨值比","D"),1,"股價淨值比");
outputfield(3,GetField("股價淨值比","D")/(GetField("股東權益報酬率","Y")/100),1,"回本年限");