{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: DKX多空線賣出訊號
// 顯示名稱: DKX多空線賣出訊號
// 執行頻率: 日(逐筆洗價)
// 
// 
variable:MID(0),midsum(0),DKX(0),DKXMA(0),length(10),r1(0);
settotalBar(22);
MID=(close*3+open+high+low)/6;
midsum=0;
for r1=0 to 19 begin
        midsum=(20-r1)*mid[r1]+midsum;
end;
DKX=midsum/210;
dkxma=average(dkx,10);
ret = close crosses below dkxma;