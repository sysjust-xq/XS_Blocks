{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 長期整理後量縮開始漲
// 顯示名稱: 長期整理後量縮開始漲
// 執行頻率: 日
// 
// 
settotalbar(50);
variable:i(0);
value1=H+L;
value2=(H*H+L*L);
if i<40 then i+=1
else begin
	value3-=value1[40];
	value4-=value2[40];
end;
value3+=value1;//sum
value4+=value2;//sum x^2
value5=value3/(i+i);//avg
value6=squareroot(value4/(i+i)-square(value5));
value7=value6/value5;
//這邊其實是計算高低價的變異係數
value8=average(V,10);
condition1=value8<value8[1];
//平均量下跌
value9=countif(condition1,40);
//均量下跌的次數
condition2 = value7<0.03 and value9>25 and V>value8*1.8 and C>O;
//高低價差不大也沒什麼動且均量經常下跌且突然間量變大的紅K
if condition2 then ret=1;