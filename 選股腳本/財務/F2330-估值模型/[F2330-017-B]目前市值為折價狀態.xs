{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 目前市值為折價狀態
// 顯示名稱: 目前市值為折價狀態
// 執行頻率: 日
// 
// 
//市值折價
Var:PriceDiscount(0);
settotalBar(2);
If GetField("普通股股本","Q")<>0 Then    
        PriceDiscount=((GetField("流動資產","Q")-GetField("負債總額","Q"))/100-GetField("總市值(億)","D"))/GetField("普通股股本","Q")
else
        PriceDiscount=0;
Ret=PriceDiscount>0;