{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: ADX趨勢成形
// 顯示名稱: ADX趨勢成形
// 執行頻率: 日
// 
// 
Input:DMI_Len(21),Threshold(25);      
Var:DMI_pDI(0),DMI_nDI(0),DMI_ADX(0);        
SetTotalBar(DMI_Len * 4);
DirectionMovement(DMI_Len,DMI_pDI,DMI_nDI,DMI_ADX);                                                                                                                                                                                                               
If DMI_ADX Cross Over Threshold and DMI_pDI>DMI_nDI then ret = 1;