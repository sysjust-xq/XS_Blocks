{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 預收款項一年以來增加額度佔股本比大於X%
// 顯示名稱: 預收款項一年以來增加額度佔股本比 > [20]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 5,10,20,30,50
// 
input:_p1(20);
settotalBar(3);
value1 = (GetField("預收款項", "Q")-GetField("預收款項", "Q")[4])/getfield("股本(億)", "D");
If value1 >_p1 then ret = 1;
outputField1(value1);