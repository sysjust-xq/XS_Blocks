{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 5日DMI進場
// 顯示名稱: 5日DMI進場
// 執行頻率: 日
// 
// 
Input:Length(5);
Var:v_pdi(0),v_ndi(0),v_adx(0),v_adr(0);  
settotalbar(maxlist(Length,6) * 13 + 8);
DirectionMovement(Length,v_pdi,v_ndi,v_adx);           
If v_pdi Cross Over v_ndi and v_pdi>v_pdi[1] then ret = 1;