{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日來第X根長紅棒
// 顯示名稱: 近[5]日來第[2]根長紅棒
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20
// _p2參數: 
// _p2數值: 1,2,3,5,7,10
// 
input:_p1(5);
input:_p2(2);
settotalBar(_p1+2);
variable: la(_p1-1); //日數與參數調整
variable: o1(0);　　o1=0; //每根K要歸0
variable: i(0); //迴圈用數
for i = 0 to la begin  
     if close[i]>=close[i+1] *1.045
         then
     o1+=1;　　     
end;
if  o1 >= _p2 
then ret=1;