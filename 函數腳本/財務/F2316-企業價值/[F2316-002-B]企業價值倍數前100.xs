{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 企業價值倍數前100
// 顯示名稱: 企業價值倍數前100
// 執行頻率: 日
// 
// 
variable: pricingm1(0);
settotalBar(2);
if GetField("稅前息前折舊前淨利","Q")>0 then begin
        pricingm1=(GetField("總市值","D")*100+GetField("負債總額","Q")-GetField("現金及約當現金","Q")-GetField("短期投資","Q"))/summation(GetField("稅前息前折舊前淨利","Q"),4);
        ret=pricingm1;
end else return;