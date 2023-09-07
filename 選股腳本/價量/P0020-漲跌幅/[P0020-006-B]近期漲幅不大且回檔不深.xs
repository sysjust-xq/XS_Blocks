{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近期漲幅不大且回檔不深
// 顯示名稱: 近期漲幅不大且回檔不深
// 執行頻率: 日
// 
// 
Input:oph(4,"開高最大幅度");
Input:sp(1.5,"回檔最大幅度");
settotalBar(3);                                                                                                                                                                                 
If C<=C[1]*(1+oph/100) and L>O*(1-sp/100) and C[1]<C[3]*1.1 then ret = 1;