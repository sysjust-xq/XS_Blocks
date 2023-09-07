{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 外盤量布林值暴衝
// 顯示名稱: 外盤量布林值暴衝
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:_p1(20);
Var:_p2(60);
Var:bv(0),bva(0),up1(0),down1(0),mid1(0),bbandwidth(0);
settotalBar(maxlist(20,60)+3);
if volume<>0 then bv=GetField("外盤量")/volume*100;
bva=average(bv,3);
up1 = bollingerband(bva, _p1, 1);
down1 = bollingerband(bva, _p1, -1 );
mid1 = (up1 + down1) / 2;
if mid1 <> 0 then bbandwidth = 100 * (up1 - down1) / mid1;
ret = bva crosses over up1 and bbandwidth >20 and average(volume,_p2)>500;