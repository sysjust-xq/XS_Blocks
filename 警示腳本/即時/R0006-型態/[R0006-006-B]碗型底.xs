{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 碗型底
// 顯示名稱: 碗型底
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:t2(60),t1(1);
settotalBar(100);
value1=(H+L+O+C)/4;
value2=square(H)+square(L)+square(O)+square(C);
value14+=value2;
if value2[t2]<>0 then value14-=value2[t2];
value15+=value1;
if value1[t2]<>0 then value15-=value1[t2];
value16=(value14-t2*4*square(value15/t2))/(t2*4);
value17=mtm(t2/2);
value18=wma(value17,round(t2*0.2,0));
value19=wma(value16,round(t2*0.2,0));
condition1=value19<value19[1] and value18>value18[1];
if value18 crosses under 0 then condition2=true;
if trueall(value19>value19[1] and value18<value18[1],t2*0.1) then condition4=true;
if (condition1 or condition3) and condition2 and condition4 then begin
	condition2=false;
	condition4=false;
	ret=1;
end;