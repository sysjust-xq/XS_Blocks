{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數Aroon指標大於X
// 顯示名稱: 櫃買指數Aroon指標大於70
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:_p1(15);//, "計算週期"
Var:_Target(70);
variable: aroon_up(0), aroon_down(0), aroon_oscillator(0); 
settotalBar(15);
aroon_up = (_p1-nthhighestbar(1,GetField("最高價"),_p1))/_p1*100; 
aroon_down = (_p1-nthlowestbar(1,GetField("最低價"),_p1))/_p1*100; 
aroon_oscillator=aroon_up-aroon_down; 
ret = aroon_oscillator>0 and aroon_up>=_Target;