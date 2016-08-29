--[[
杀大米
]]

job={}
job.time={}
job.time.b=os.time()
job.time.e=os.time()
job.time["refresh"]=94
job.name=nil
job.prepare=test
job.target='任务目标'
job.where='未知地点'
job.room='未知地点'
job.last='还没开始'
job.exp=0
job.pot=0
job.guard={}
job.party='未检测'
job.zuhe={}
job.killer={}
job.list={}
job.skillslist='独孤九剑|玄阴剑法'
job.skills='XXXXX'

sxjob={}
--边防官兵|何太冲
sxjob.cancel='凌震天|黄令天|洪哮天|黑衣帮众|灰衣帮众|大衙役|张巡捕|空空儿|托钵僧|蒙面人|赵爵爷|李捕头|中年乞丐|孙掌柜|黑衣大盗|静风师太|樊一翁|慧真尊者|玄惭大师|护法使者|宗赞王子|出尘子|西华子|采花子|俞莲舟|张松溪|丁勉|神秘镖师|大癫大师|夏雪宜|土匪|马贼|殷无禄|殷无寿|范遥|杨逍|门主|雷字门教众|风字门教众|天字门教众|地字门教众|锐金旗教众|洪水旗教众|烈火旗教众|巨木旗教众|厚土旗教众|值勤兵|养蚕婆婆|五毒教女弟子'
sxjob.killer1='杀手壹'
sxjob.killer2='杀手贰'
sxjob.sx2=0

ssjobCancel='玉虚散人|陆冠英|浪荡公子|李员外|郑镖头|心观大师'
gaibangCancel='黄蓉|杨逍|钟万仇|史镖头|任盈盈|薛慕华|凌震天|黄令天|张浩天|洪啸天|丁勉|静风师太|陆大有|高升泰|西华子|看守|尼摩星|看窑弟子|赵敏|出尘子|吕文德|侯君集|忽必烈|摘星子|飘然子|黯然子|狮吼子|阿紫|马掌柜|飞天子|心观大师'
sldsmCancel='黄蓉|杨逍|史镖头|钟万仇|任盈盈|薛慕华|凌震天|黄令天|张浩天|洪啸天|丁勉|静风师太|陆大有|高升泰|马光佐|西华子|执勤兵|玉玑子|玉磬子|玉音子|梁子翁|吕文德|达尔巴|看守|尼摩星|看窑弟子|赵敏|出尘子|侯君集|忽必烈|摘星子|飘然子|黯然子|狮吼子|阿紫|马掌柜|飞天子|心观大师'

tongji={}

loseTj={}
loseTj.succ=0
loseTj.fail=0

sx2joblevel='微不足道'
sx2joblevel1='微不足道|马马虎虎'
sx2joblevel2='微不足道|马马虎虎|小有所成|融会贯通'
sx2joblevel3='微不足道|马马虎虎|小有所成|融会贯通|颇为了得|极其厉害'
sx2joblevel4='微不足道|马马虎虎|小有所成|融会贯通|颇为了得|极其厉害|已入化境'

jobLevel = {
   ["wdlvl"]    = 1000,
   ["sxlvl"]    = 1000,
   ["wudang"]   = 10,
   ["songxin"]  = 10,
   ["已入化境"] = 7,
   ["极其厉害"] = 6,
   ["颇为了得"] = 5,
   ["马马虎虎"] = 4,
   ["融会贯通"] = 3,
   ["普普通通"] = 2,
   ["微不足道"] = 1,
}

NpcIgnores = {
["凌震天"]     = true,
["黄令天"]     = true,
["洪哮天"]     = true,
["大衙役"]     = true,
["静风师太"]     = true,
["张巡捕"]     = true,
["樊一翁"]     = true,
["慧真尊者"]     = true,
["空空儿"]     = true,
["护法使者"]     = true,
["范遥"]   = true,
["杨逍"]   = true,
["托钵僧"]   = true,
["宗赞王子"]   = true,
["边防官兵"]     = true,
["出尘子"]     = true,
["西华子"]     = true,
["俞莲舟"]     = true,
["张松溪"]     = true,
["采花子"]     = true,
["黑衣大盗"] = true,
["锐金旗教众"] = true,
["洪水旗教众"] = true,
["烈火旗教众"] = true,
["巨木旗教众"] = true,
["厚土旗教众"] = true,
["黑衣帮众"]   = true,
["殷无寿"] = true,
["丁勉"] = true,
["殷无禄"] = true,
["玄惭大师"] = true,
["门主"] = true,
["神秘镖师"] = true,
["大癫大师"] = true,
["李捕头"] = true,
["夏雪宜"] = true,
["赵爵爷"] = true,
["中年乞丐"] = true,
["孙掌柜"] = true,
["土匪"] = true,
["马贼"] = true,
["雷字门教众"] = true,
["风字门教众"] = true,
["天字门教众"] = true,
["地字门教众"] = true,
["值勤兵"] = true,
["五毒教女弟子"] = true,
["灰衣帮众"] = true,
["养蚕婆婆"] = true,
["蒙面人"] = true,
["飘然子"] = true,
}

skillIgnores = {
    ["独孤九剑"] = true,
    ["玄阴剑法"] = true,
--    ["化骨绵掌"] = true,
--    ["慈航鞭"] = true,
--    ["全真剑法"] = true,
--    ["嵩山剑法"] = true,
--    ["大嵩阳手"] = true,
--    ["抽髓掌"] = true,
    ["天山杖法"] = true,
    ["打狗棒法"] = true,
--    ["辟邪剑法"] = true,
--    ["三阴蜈蚣爪"] = true,
--    ["大嵩阳神掌"] = true,
--    ["慕容刀法"] = true,
--    ["慕容剑法"] = true,
}

AddrIgnores = {
        ["桃花岛"] = true,
	["萧府"] = true,
        ["摩天崖"] = true,
        ["武当后山"] = true,
        ["桃源县"] = true,
        ["梅庄"] = true,
--	["神龙岛"] = true,
--      ["绝情谷"] = true,
--	["燕子坞"] = true,
--	["姑苏慕容"] = true,
--	["曼佗罗山庄"] = true,
}

local Yiliaddr ={
	["伊犁城客栈"] = true,
	["伊犁城客栈二楼"] = true,
	["伊犁城铁铺"] = true,
	["伊犁城商铺"] = true,
	["伊犁城城中心"] = true,
	["伊犁城巴依家院"] = true,
}

local Shopaddr ={
	["扬州城珠宝店"] = true,
	["扬州城瘦西湖雅楼"] = true,
}

WhereIgnores = {
    ["全真教药剂室"] = true,
    ["嵩山少林戒律院"] = true,
--    ["嵩山少林罗汉堂"] = true,
--    ["长安城了望台"] = true,
    ["峨嵋山小竹林"] = true,
    ["峨嵋山洗象池边"] = true,
    ["峨嵋山万佛顶"] = true,
    ["峨嵋山冷杉林"] = true,
    ["昆仑山云杉林"] = true,
    ["昆仑山葱岭谷"] = true,
    ["明教天字门"] = true,
    ["明教地字门"] = true,
    ["明教风字门"] = true,
    ["明教雷字门"] = true,
    ["明教紫杉林"] = true,
    ["明教树林"] = true,
    ["明教龙王殿"] = true,
    ["武当后山猢狲愁"] = true,
    ["武当山后山小院"] = true,
    ["武当山院门"] = true,
    ["武当山小径"] = true,
    ["昆仑山可可西里山"] = true,
    ["福州城山路"] = true,
    ["绝情谷大石屋"] = true,
    ["嵩山少林藏经阁二楼"] = true,
    ["铁掌山书房"] = true,
}

dangerousNpc = {
["獒犬"]     = true,
["藏獒"]     = true,
["疯狗"]     = true,
["头狼"]     = true,
["野狼"]     = true,
["毒蛇"]     = true,
["马贼"]     = true,
["老虎"]     = true,
["玉蜂"]     = true,
["菜花蛇"]   = true,
["竹叶青"]   = true,
["梅超风"]   = true,
["雪豹"]     = true,
["野猪"]     = true,
["怪蟒"]     = true,
["巨蟒"]     = true,
["毒蟒"]     = true,
["恶犬"]     = true,
["蜈蚣"]     = true,
["折冲将军"] = true,
["平寇将军"] = true,
["征东将军"] = true,
["车骑将军"] = true,
["慧真尊者"] = true,
["杨逍"]     = true,
["黑色毒蛇"] = true,
["厚土旗教众"] = true,
["巨木旗教众"] = true,
["锐金旗教众"] = true,
["烈火旗教众"] = true,
["洪水旗教众"] = true,
["黑衣帮众"] = true,
["灰衣帮众"] = true,
}
 
prepare_trigger=function()
    DeleteTriggerGroup("prepare_neili")
    create_trigger_t('prepare_neili1',"^(> )*(你将北冥真气在体内运行十二周天|你感到自己和天地融为一体，全身清爽如浴春风|过了片刻，你感觉自己已经将玄天无极神功|你将寒冰真气按周天之势搬运了一周|你只觉真力运转顺畅，周身气力充沛|你将纯阳神通功运行完毕|你只觉神元归一，全身精力弥漫|你将内息走了个一个周天|你将内息游走全身，但觉全身舒畅|你将真气逼入体内，将全身聚集的蓝色气息|你将紫气在体内运行了一个周天|你运功完毕，站了起来|你一个周天行将下来，精神抖擞的站了起来|你分开双手，黑气慢慢沉下|你将内息走满一个周天，只感到全身通泰|你真气在体内运行了一个周天，冷热真气收于丹田|你真气在体内运行了一个周天，缓缓收气于丹田|你双眼微闭，缓缓将天地精华之气吸入体内|你慢慢收气，归入丹田，睁开眼睛|你将内息又运了一个小周天，缓缓导入丹田|你感觉毒素越转越快，就快要脱离你的控制了！|你将周身内息贯通经脉，缓缓睁开眼睛，站了起来|你呼翕九阳，抱一含元，缓缓睁开双眼|你吸气入丹田，真气运转渐缓，慢慢收功|你将真气在体内沿脉络运行了一圈，缓缓纳入丹田|你将内息在体内运行十二周天，返回丹田|你将内息走了个小周天，流回丹田，收功站了起来|过了片刻，你已与这大自然融合在一起，精神抖擞的站了起)",'','prepare_neili_b')
    create_trigger_t('prepare_neili2',"^(> )*(你盘膝而坐，双目紧闭，深深吸一口气|你收敛心神闭目打坐，手搭气诀，调匀呼吸|你运起玄天无极神功，气聚丹田|你手捏剑诀，将寒冰真气|你盘膝而坐，运起八荒六合唯我独尊功|你运起纯阳神通功，片刻之间|你抉弃杂念盘膝坐定，手捏气诀|你盘膝坐下，默运天魔大法|你凝神静气，盘坐下来|你随意坐下，双手平放在双膝，默念口诀|你手捏绣花针，盘膝坐下，默运葵花神功|你坐下来运气用功，一股内息开始在体内流动|你慢慢盘膝而坐，双手摆于胸前|你五心向天，排除一切杂念，内息顺经脉缓缓流动|你盘膝坐下，双手合十置于头顶，潜运内力|你屏息静气，坐了下来，左手搭在右手之上|你盘膝坐下，垂目合什，默运枯荣禅功|你盘膝坐下，闭目合什，运起乾天一阳神功|你盘膝坐下，暗运内力，试图采取天地之精华|你轻轻的吸一口气，闭上眼睛，运起玉女心经|你盘腿坐下，双目微闭，双手掌心相向成虚握太极|你气运丹田，将体内毒素慢慢逼出，控制着它环绕你缓缓飘动|你盘膝而坐，双手垂于胸前成火焰状，深吸口气|你盘膝而坐，运使九阳，气向下沉|你随意坐下，双手平放在双膝，默念口诀|你随意一站，双手缓缓抬起，深吸一口气|你盘膝而坐，双目紧闭，深深吸一口气引入丹田|你席地而坐，五心向天，脸上红光时隐时现|你暗运临济十二庄，气聚丹田)",'','prepare_neili_t')
    create_trigger_t('prepare_neili3',"^(> )*卧室不能(吐纳|打坐)，会影响别人休息。",'','prepare_neili_w')
    create_trigger_t('prepare_neili4',"^(> )*(你正要有所动作|你无法静下心来修炼|你还是专心拱猪吧)",'','prepare_neili_w')
    create_trigger_t('prepare_neili5',"^(> )*这里不准战斗，也不准(吐纳|打坐)。",'','prepare_neili_w')
    create_trigger_t('prepare_neili6',"^(> )*这里可不是让你提高(内力|精力)的地方。",'','prepare_neili_w')
    create_trigger_t('prepare_neili7',"^(> )*你吐纳完毕，睁开双眼，站了起来。",'','prepare_neili_b')
    create_trigger_t('prepare_neili8',"^(> )*你闭上眼睛开始吐纳。",'','prepare_neili_t')
    create_trigger_t('prepare_neili9',"^(> )*你现在手脚戴着镣铐，不能做出正确的姿势来打坐",'','prepare_neili_liaokao')
    create_trigger_t('prepare_neili10',"^(> )* (你将北冥真气在体内运行十二周天|你感到自己和天地融为一体，全身清爽如浴春风|过了片刻，你感觉自己已经将玄天无极神功|你将寒冰真气按周天之势搬运了一周|你只觉真力运转顺畅，周身气力充沛|你将纯阳神通功运行完毕|你只觉神元归一，全身精力弥漫|你将内息走了个一个周天|你将内息游走全身，但觉全身舒畅|你将真气逼入体内，将全身聚集的蓝色气息|你将紫气在体内运行了一个周天|你运功完毕，站了起来|你一个周天行将下来，精神抖擞的站了起来|你分开双手，黑气慢慢沉下|你将内息走满一个周天，只感到全身通泰|你真气在体内运行了一个周天，冷热真气收于丹田|你真气在体内运行了一个周天，缓缓收气于丹田|你双眼微闭，缓缓将天地精华之气吸入体内|你慢慢收气，归入丹田，睁开眼睛|你将内息又运了一个小周天，缓缓导入丹田|你感觉毒素越转越快，就快要脱离你的控制了！|你将周身内息贯通经脉，缓缓睁开眼睛，站了起来|你呼翕九阳，抱一含元，缓缓睁开双眼|你吸气入丹田，真气运转渐缓，慢慢收功|你将真气在体内沿脉络运行了一圈，缓缓纳入丹田|你将内息在体内运行十二周天，返回丹田|你将内息走了个小周天，流回丹田，收功站了起来|过了片刻，你已与这大自然融合在一起，精神抖擞的站了起)",'','prepare_neili_b')

    SetTriggerOption("prepare_neili1","group","prepare_neili")
    SetTriggerOption("prepare_neili2","group","prepare_neili")
    SetTriggerOption("prepare_neili3","group","prepare_neili")
    SetTriggerOption("prepare_neili4","group","prepare_neili")
    SetTriggerOption("prepare_neili5","group","prepare_neili")
    SetTriggerOption("prepare_neili6","group","prepare_neili")
    SetTriggerOption("prepare_neili7","group","prepare_neili")
    SetTriggerOption("prepare_neili8","group","prepare_neili")
    SetTriggerOption("prepare_neili9","group","prepare_neili")
    SetTriggerOption("prepare_neili10","group","prepare_neili")
    EnableTriggerGroup("prepare_neili",false)
end
--^(> |)
fight_trigger=function()
    DeleteTriggerGroup("fight")
    create_trigger_t('fight1',"^>*\\s*\\( (\\D*)(已经伤痕累累，正在勉力支撑着不倒下去|受了相当重的伤，只怕会有生命危险|已经一副头重脚轻的模样，正在勉力支撑着不倒下去|气息粗重，动作开始散乱，看来所受的伤着实不轻|已经一副头重脚轻的模样，正在勉力支撑着不倒下去|似乎十分疲惫，看来需要好好休息了|看起来已经力不从心了|气喘嘘嘘，看起来状况并不太好|动作似乎开始有点不太灵光，但是仍然有条不紊|看起来可能受了点轻伤|看起来可能有些累了|受了几处伤，不过似乎并不碍事|受伤不轻，看起来状况并不太好|似乎受了点轻伤，不过光从外表看不大出来|似乎有些疲惫，但是仍然十分有活力|已经陷入半昏迷状态，随时都可能摔倒晕去|受伤过重，已经奄奄一息，命在旦夕了|受伤过重，已经有如风中残烛，随时都可能断气)。 \\)",'','fight_check')
    create_trigger_t('fight2',"^(身体更新完毕。|你「啪」的一声倒在地上，挣扎着抽动了几下就死了。)",'','fightDie')
    create_trigger_t('fight3',"^(> )*(\\D*)(只觉全身一麻|突然一颤，脸上瞬间冒出许多冷汗|目前正自顾不暇|左蹿右跳，始终逃不出棒影|长长地舒了一口气。|深深吸了几口气，脸色看起来好多了|的身子突然晃了两晃，牙关格格地响了起来)",'','fightXiqi')
    create_trigger_t('fight4',"^(> )*看起来(\\D*)想杀死你！$",'','fightConsider')
    create_trigger_t('fight5',"^(你)(的体力快消耗完了|现在太累了|现在真气太弱)",'','fight_check')
    create_trigger_t('fight6','^(> )*你把 "action" 设定为 "pfmhuaxue" 成功完成。$','','performhuaxue')
    create_trigger_t('fight7',"^(\\D*)眼花缭乱，被攻了个措手不及！",'','performMie')
    create_trigger_t('fight8',"^(> )*太极者，无极而生；动之则分，静之则合！你立如秤准，活如车轮，运起\\D*带动\\D*的(\\D*)一送，让他马步不稳，全力都打向空处",'','fightLiuhe')
    create_trigger_t('fight9',"^(> )*你(缓缓收回内力，眼中的红光|现在无法收功|好象虚脱了一样，突然垮了下来|心神一松，再也支持不)",'','yunWudiDone')
    create_trigger_t('fight10',"^(> )*你(大声叫道：“洪教主神通广大，我教战无不胜|发疯般的叫道：“洪教主神通护佑)",'','yunWudi')
    create_trigger_t('fight11',"^(> )*结果(\\D*)(气血一滞，已被定在当堂|顿时手忙脚乱，施展出浑身解数|顿时面色苍白，感觉浑身内息)",'','fightXiqi')
    create_trigger_t('fight12',"^(> )*(你的内力太少|你现在内力太弱|你的内力不够|你的真气不够|你现在内力不够|你内力太弱|你的内力太弱|你现在真气不|你现在真气太弱|你的内力即将用尽|你目前内力太少|你内力现在不|你目前的内力太少)",'','fightDrug')
    create_trigger_t('fight13',"^(> )*如果你要和(\\D*)\\((\\w*)\\)性命相搏，请你也对这个人下一次 kill 指令。",'','fightPk')
    create_trigger_t('fight14',"^(> )*你的体力快消耗完了",'','fightsafe_yq')
--    create_trigger_t('fight15',"^(> )*身体更新完毕。$",'','fightDie')
    create_trigger_t('fight16',"^一股暖流发自丹田流向全身，慢慢地你又恢复了知觉……",'','faint_check')
    create_trigger_t('fight17',"^(> )*你(手握武器，如何使得|必须先放下|必须使用剑|拿着武器怎么能|必须空手|手里没有|手里无|手上无)",'','weapon_unwield')
    create_trigger_t('fight18',"^(> )*(大阴阳手绝技只能空手使用|先放下手中的武器)",'','weapon_unwield')
    create_trigger_t('fight19',"^(> )*你吃下一颗大还丹，觉得丹田处有暖流涌上，顿时伤势痊愈气血充盈。",'','back_to_track')
--    create_trigger_t('fight20',"^(> )*你(必须拿着|使用的兵刃不对|使用的兵刃不正确|手里没有鞭，无法使用|使用的武器不对|手里没有|手里无|手上无|手中无|不够狠毒|掏了掏背囊，发现里面的暗器已经不够)",'','unarmed_Pfm')

    SetTriggerOption("fight1","group","fight")
    SetTriggerOption("fight2","group","fight")
    SetTriggerOption("fight3","group","fight")
    SetTriggerOption("fight4","group","fight")
    SetTriggerOption("fight5","group","fight")
    SetTriggerOption("fight6","group","fight")
    SetTriggerOption("fight7","group","fight")
    SetTriggerOption("fight8","group","fight")
    SetTriggerOption("fight9","group","fight")
    SetTriggerOption("fight10","group","fight")
    SetTriggerOption("fight11","group","fight")
    SetTriggerOption("fight12","group","fight")
    SetTriggerOption("fight13","group","fight")
    SetTriggerOption("fight14","group","fight")
--    SetTriggerOption("fight15","group","fight")
    SetTriggerOption("fight16","group","fight")
    SetTriggerOption("fight17","group","fight")
    SetTriggerOption("fight18","group","fight")
    SetTriggerOption("fight19","group","fight")
--    SetTriggerOption("fight20","group","fight")
    job_exp_trigger()
end

function unarmed_Pfm()
    exe('pfmunarmed')
end

function yunWudi()
    flag.wudi=1
end
function yunWudiDone()
    flag.wudi=0
end

function fightDrug()
    if isInBags(drug.neili) then
       exe('eat '.. drug.neili)
    end
    if (Bag["大还丹"] or Bag["大还丹(盒)"]) then
       exe('fu dan')
    end
end
function fightPk(n,l,w)
    local l_name = w[2]
	local l_id = string.lower(w[3])
	messageShow('遭遇'..l_name..':'..l_id..'发起的PK!','red','white')
	if job.name ~= "hubiao" then
	    dis_all()
	    exe('follow '.. l_id)
	    wipe(l_id,check_heal)
	end
end

function fightsafe_yq()    
    exe('yun jingli')
    exe('yun qi')
    exe('set wimpycmd yun jingli\\pfmpfm\\hp;set wimpy 100')
end

function fightLiuhe(n,l,w)
    local l_force=w[2]
    if string.len(l_force)<6 then return end
    if string.find("化功大法|归元吐纳法|毒龙大法",w[2]) then
       exe('set 六合劲 螺旋')
    end
    if string.find("混天气功|龙象般若功|蛤蟆功",w[2]) then
       exe('set 六合劲 钻翻')
    end
    if string.find("乾天一阳功|易筋经|枯荣禅功",w[2]) then
       exe('set 六合劲 软手')
    end
    if string.find("神元功|紫霞功|圣火神功",w[2]) then
       exe('set 六合劲 开合')
    end
    if string.find("玉女心经|神照经",w[2]) then
       exe('set 六合劲 静恒')
    end
    if string.find("临济十二庄|寒冰真气|玄天无极功|先天功|碧海潮生功",w[2]) then
       exe('set 六合劲 虚灵')
    end
end

function fightConsider(n,l,w)
    --if not (job.killer and job.killer[w[2]]) and not (road.wipe_who and road.wipe_who==w[2]) then
    --  exe(perform.huaxue)
    --end
end
function fightXiqi(n,l,w)
    do return end
    if not perform.xiqi then return end

    local l_jiali=0
    if job.killer and job.killer[w[2]] then
       for p in pairs(skillEnable) do
           if skills[p] and skillEnable[p]=="force" and skills["force"] then
	      l_jiali=math.modf(skills[p].lvl+skills["force"].lvl/2)/2
	      l_jiali=math.modf(l_jiali)
	      break
	   end
       end
       if l_jiali>200 then l_jiali=200 end
       if skills["yinyun-ziqi"] and skills["yinyun-ziqi"].lvl<300 then
       else
          exe('jiali '..l_jiali)
       end

       fightHpCheck()

       if type(job.killer[w[2]])=="string" then
          exe(perform.xiqi..' '..job.killer[w[2]])
       else
          exe(perform.xiqi)
       end
       if skills["linji-zhuang"] and skills["linji-zhuang"].lvl>149 then
       elseif skills["yinyun-ziqi"] and skills["yinyun-ziqi"].lvl<300 then
       elseif perform.skill and perform.skill=="huagu-mianzhang" then
	     exe('jiali 50')
       else
             exe('jiali 1')
       end
    end
end

function performMie(n,l,w)
    do return end
    if not perform.xiqi then return end
    if job.killer and job.killer[w[1]] then
       return performBusy(w[1],2)
    end
end
function performBusy(p_id,p_sec)
    if not p_id or type(p_id)~="string" then return end
    tmp.pfmid=p_id
    if p_sec and type(p_sec)=="number" then
       create_timer_s('performbusy',p_sec,'performAction')
    else
       return performAction()
    end
end
function performAction()
       local l_jiali
       if tmp.pfmid==nil then return end
       if not job.killer[tmp.pfmid] then
          tmp.pfmid=nil
	  return
       end
       for p in pairs(skills) do
           if skillEnable[p] and skillEnable[p]=="force" and skills["force"] then
	      l_jiali=math.modf(skills[p].lvl+skills["force"].lvl/2)/2
	      l_jiali=math.modf(l_jiali)
	      break
	   end
       end
       if l_jiali>200 then l_jiali=200 end
       if skills["yinyun-ziqi"] and skills["yinyun-ziqi"].lvl<300 then
       else
          exe('jiali '..l_jiali)
       end

       fightHpCheck()

       exe(perform.xiqi..' '.. job.killer[tmp.pfmid])
       tmp.pfmid=nil
       if skills["linji-zhuang"] and skills["linji-zhuang"].lvl>149 and string.find(perform.huaxue,'yun riyue') then
       elseif skills["yinyun-ziqi"] and skills["yinyun-ziqi"].lvl<300 then
       elseif perform.skill and perform.skill=="huagu-mianzhang" then
	     exe('jiali 50')
       else
             exe('jiali 1')
       end
end

function fightDie()
    death_Log()
    dis_all()
    flag.wxjz=0
    create_triggerex('die',"^(> )*城隍庙 - $",'','main')
end
--城隍庙 - east、northwest、up

--[[
function fight_check(n,l,w,styles)
    if w[1]=='你' then
       exe('hp')
       checkWait(fightHpCheck,0.2)
    elseif job.name=="sldsm" and job.type and job.type=="zh" and w[1]==job.target then
       return sldsmZh(n,l,w,styles)
    end
end
function fightHpCheck()
   if score.party and score.party=="神龙教" and hp.qixue_per<50 then
       exe('yun wudi '.. score.id)
   end
   if score.party and score.party=="天龙寺" and hp.qixue_per<75 then
       exe('yun liao '.. score.id)
   end
	if (hp.qixue_per<60 or hp.jingxue_per<70) and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
            golden_finger()
--	    exe('fu dan')
    end
	if (hp.qixue / (hp.qixue_max / hp.qixue_per ) < 50) and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
            golden_finger()
--	    exe('fu dan')
    end
	if (hp.jingxue / (hp.jingxue_max / hp.jingxue_per ) < 50) and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
            golden_finger()
--	    exe('fu dan')
    end
	if hp.neili<hp.neili_max*0.3 and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
            golden_finger()
--	    exe('fu dan')
    end
    if hp.qixue<hp.qixue_max*0.8 then
      exe('yun qi')
    end
    if hp.qixue_per<=50 then
       safe_is_all()
    end
    if hp.jingxue<hp.jingxue_max*0.5 then
       exe('yun jing')
    end
    if hp.neili<hp.neili_max*0.5 and Bag["川贝内息丸"] then
       exe('eat '.. drug.neili)
    end
    if hp.jingli<hp.jingli_max*0.5 or hp.jingli<600 then
       exe('yun jingli')
    end
end
]]

function fight_check(n,l,w,styles)
    if w[1]=='你' then
       exe('hp')
       return checkAW(fightHpCheck)
    elseif job.name=="sldsm" and job.type and job.type=="zh" and w[1]==job.target then
       return sldsmZh(n,l,w,styles)
    end
end
function fightHpCheck()
    --if score.party and score.party=="峨嵋派" and hp.qixue_per<75 then
    --   exe('yun yinyang')
    --end
    --if score.party and score.party=="峨嵋派" and hp.qixue_per<40 then
    --   exe('yield yes;fu '..drug.heal..';yield no')
    --end
	
	local l_flag = false
	
    if score.party and score.party=="神龙教" and hp.qixue_per<50 then
       exe('yun wudi '.. score.id)
    end
	if (hp.qixue_per<50 or hp.jingxue_per<80) and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
	    l_flag = true
            golden_finger()
--	    exe('fu dan')
    end
--[[
	if (hp.qixue / (hp.qixue_max / hp.qixue_per ) < 35) and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
	    l_flag = true
            golden_finger()
--	    exe('fu dan')
    end
	if (hp.jingxue / (hp.jingxue_max / hp.jingxue_per ) < 25) and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
	    l_flag = true
            golden_finger()
--	    exe('fu dan')
    end
]]
	if (hp.neili<hp.neili_max*0.3 or hp.neili < 800) and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
	    l_flag = true
            golden_finger()
--	    exe('fu dan')
    end
    if hp.qixue<hp.qixue_max*0.7 then
	   l_flag = true
       exe('yun qi')
    end
    if hp.qixue_per<=40 then
--       l_flag = true
       safe_is_all()
    end
    if hp.jingxue<hp.jingxue_max*0.5 then
	   l_flag = true
       exe('yun jing')
    end
	if hp.neili<hp.neili_max*0.5 and Bag["川贝内息丸"] then
	   l_flag = true
       exe('eat '.. drug.neili)
    end
--    if hp.jingli<hp.jingli_max*0.5 or hp.jingli<600 then
    if hp.jingli<hp.jingli_max*0.5 then
	   l_flag = true
       exe('yun jingli')
    end
	if l_flag then
	   exe('hp')
       return checkAW(fightHpCheck)
	end
end
function safe_is_all()
--           dis_all()
	   locate()
           exe('set wimpy 100;set wimpycmd fu dan\\hp\\halt\\'..locl.dir)
--           log_catch(WorldName()..'战斗失利',1800)
           check_halt(check_heal)
end

function golden_finger()
   if Bag["大还丹"] or Bag["大还丹(盒)"] then
       exe('set wimpy 100;set wimpycmd fu dan\\hp')
   else
       exe('yun qi')
   end
end

function back_to_track()
    exe('set wimpycmd pfmpfm\\hp;set wimpy 100')
    checkBags()
end

faintFunc = faintFunc or {}
function faint_check()
    fightHpCheck()
	job.killer = {}
	tmp = {}
	faintFunc = faintFunc or {}
	for k,v in pairs(faintFunc) do
	    if job.name == k then
		   return _G[v]()
		end
	end
    return check_heal()
end

--[[
function fight_zhaoshi_check(n,l,w)
    local l_npc

    if job.name ~= 'huashan' and job.name ~= 'xueshan' then
       EnableTrigger("fight17",false)
       return false
    end
    if job.target=='任务目标' then 
       EnableTrigger("fight17",false)
       return false
    end

    if string.len(w[1]) > 8 then
       l_npc = w[1]
    else
       return false
    end

    if string.find(l_npc,job.target) then
       l_npc=del_string(l_npc,job.target)
       skills_zhaoshi(l_npc)
    end
end
--]]

function killPfm(id,p_cmd)
    local l_cmd="kill"
    if p_cmd and type(p_cmd)=="string" then l_cmd=p_cmd end
    if id then
       exe(l_cmd ..' '..id)
    end
    tmp.pfm=100
    tmp.busytest=0
    if job.name=="songxin" or job.name=="huashan" then
	exe('set wimpycmd pfm\\hp;set wimpy 100')
    else
       	exe('set wimpycmd pfmpfm\\hp;set wimpy 100')
    end
--[[
    create_timer_s('perform',3.2,'pfmhuaxue')
    if job.name=="songxin" or job.name=="zhuoshe" or (job.name=="gblu" and score.party=="丐帮") then
       check_bei(performMain)
    else
       performMain()
    end
]]
end
function killPfm2(id,p_cmd)
    local l_cmd="kill"
    if p_cmd and type(p_cmd)=="string" then l_cmd=p_cmd end
    if id then
       exe(l_cmd ..' '..id)
    end
    tmp.pfm=100
    tmp.busytest=0
       	exe('set wimpycmd pfmqing\\hp;set wimpy 100')
end
function wipepfm(id,p_cmd)
    local l_cmd="kill"
    if p_cmd and type(p_cmd)=="string" then l_cmd=p_cmd end
    if id then
       exe(l_cmd ..' '..id)
    end
    tmp.pfm=100
    tmp.busytest=0
	exe('set wimpycmd pfm\\hp;set wimpy 100')
end

function performMain()
    if GetVariable("performmain") then
       perform.main=GetVariable("performmain")
    end
   
    local l_pfm=perform.main
    local l_jiali
    if job.name=='gaibang' and perform.skill and perform.skill=="taiji-quan" then
       l_pfm=perform.xiqi
    end
	
    for p in pairs(skillEnable) do
           if skills[p] and skillEnable[p]=="force" and skills["force"] then
	      l_jiali=math.modf(skills[p].lvl+skills["force"].lvl/2)/2
	      l_jiali=math.modf(l_jiali)
	      break
           end
    end
    if l_jiali>200 then l_jiali=200 end
    if skills["linji-zhuang"] and skills["linji-zhuang"].lvl>149 and string.find(perform.huaxue,'yun riyue') then
       exe('jiali '..l_jiali)
    else
       if skills["yinyun-ziqi"] then
          exe('jiali 0')
       else
          exe('jiali 1')
       end
    end
    if job.name=="gblu" and road.wipe_id=="shiwei" and score.party=="丐帮" then
       l_pfm=string.gsub(l_pfm,"perform stick.zhuan","perform stick.chuo shiwei")
    end
    if job.name=="gblu" and road.wipe_id=="wu shi" and score.party=="丐帮" then
       l_pfm=string.gsub(l_pfm,"perform stick.chuo","perform stick.chuo wu shi")
    end
    if job.name=="gblu" and road.wipe_id=="wu shi" and score.party=="峨嵋派" then
       l_pfm=string.gsub(l_pfm,"perform stick.mie","perform stick.mie wu shi")
    end
    if job.name=="zhuoshe" and score.party=="丐帮" then
       l_pfm=string.gsub(l_pfm,"perform stick.chuo","perform stick.zhuan")
    end
    if score.party=="神龙教" and flag.wudi and flag.wudi==0 then
       l_pfm = "yun wudi ".. score.id ..';'..l_pfm
    end
    exe(l_pfm)
end

function pfmhuaxue()
    if not tmp.pfmid then
       DeleteTimer("performbusy")
    end
    if tmp.busytest then 
       tmp.busytest = tmp.busytest + 1 
    else
       tmp.busytest = 1
    end
    if tmp.busytest < 3 then
       exe('alias action pfmhuaxue')
    end
end

function performhuaxue()
    tmp.pfm = tmp.pfm - 1
    if tmp.pfm<1 then
       DeleteTimer("perform")
       return
    end
    tmp.busytest = 0
    local l_pfm=perform.huaxue
	if not perform.huaxue then return end
    fightHpCheck()
    if job.name=="gblu" and road.wipe_id=="shiwei" and score.party=="丐帮" then
       if tmp.faint and tmp.faint>0 then
          l_pfm=string.gsub(l_pfm,"perform stick.zhuan","perform stick.zhuan shiwei "..tmp.faint+1)
       else
          l_pfm=string.gsub(l_pfm,"perform stick.zhuan","perform stick.zhuan shiwei")
       end
    end
    if job.name=="gblu" and road.wipe_id=="wu shi" then
       if tmp.faint and tmp.faint>0 then
          l_pfm=string.gsub(l_pfm,"perform stick.chan","perform stick.chan wu shi "..tmp.faint+1)
	  l_pfm=string.gsub(l_pfm,"perform stick.mie","perform stick.mie wu shi "..tmp.faint+1)
       else
          l_pfm=string.gsub(l_pfm,"perform stick.chan","perform stick.chan wu shi")
	  l_pfm=string.gsub(l_pfm,"perform stick.mie","perform stick.mie wu shi")
       end
    end
    if job.name=="zhuoshe" and score.party=="丐帮" then
       l_pfm=string.gsub(l_pfm,"perform stick.chan","perform stick.zhuan")
    end
    if job.name=="songxin" then
       if job.killer[sxjob.killer1]=="faint" and type(job.killer[sxjob.killer2])=="string" then
          l_pfm=string.gsub(l_pfm,"perform stick.zhuan","perform stick.zhuan "..job.killer[sxjob.killer2])
       elseif job.killer[sxjob.killer2]=="faint" and type(job.killer[sxjob.killer1])=="string" then
          l_pfm=string.gsub(l_pfm,"perform stick.zhuan","perform stick.zhuan "..job.killer[sxjob.killer1])
       end
    end
    if skills["linji-zhuang"] and skills["linji-zhuang"].lvl>150 and hp.qixue_per<70 then
       l_pfm='yun yinyang;'..l_pfm
    end
    if score.party=="神龙教" and (hp.qixue_per<40 or (flag.wudi and flag.wudi==0)) then
       l_pfm = "yun wudi ".. score.id ..';'..l_pfm
    end
    exe(l_pfm)
    if score.party=="神龙教" and job.type and job.type=="zh" and job.name=="sldsm" and job.id then
       exe('zhaohun '..job.id..';no')
    end
end

fight_prepare=function()
   local l_pfm
   weapon_unwield()
   weapon_wield()
   exe('remove biao;jiali 1;yield no')
--[[
   if perform and perform.skill and skillEnable[perform.skill] and string.find('strike|hand|cuff|finger|leg|claw',skillEnable[perform.skill]) then
      exe('bei none')
   end
   if perform and perform.skill and skillEnable[perform.skill] then
      exe('jifa '.. skillEnable[perform.skill] ..' '.. perform.skill)
	  if score.party=="少林派" and skills["banruo-zhang"] and skills["banruo-zhang"].lvl>350 then
	     exe('jifa parry banruo-zhang')
	  else
         exe('jifa parry '.. perform.skill)
	  end
   end
]]
   beiUnarmed()
   l_pfm = perform.main
   if perform and perform.skill and perform.main then
      create_alias('pfmset','pfmset','alias pfmpfm '.. l_pfm)
      exe('pfmset')
   end
   exe('set wimpy 100;yield no')
   exe('set wimpycmd pfmpfm\\hp')
   if score.party=="神龙教" and flag.wudi and flag.wudi==0 then
      l_pfm = "yun wudi ".. score.id
	  exe(l_pfm)
   end
   if score.party=="桃花岛" then
      l_pfm = "perform dodge.wuzhuan ".. score.id
	  exe(l_pfm)
   end
   
   if skills["suibo-zhuliu"] and not skills["lingbo-weibu"] and skills["suibo-zhuliu"].lvl>250 then
      exe('enable dodge suibo-zhuliu;perform dodge.wuzhuan '.. score.id)
   end 
   
   if skills["tiyunzong"] and not skills["lingbo-weibu"] and skills["tiyunzong"].lvl>250 then
      exe('enable dodge tiyunzong;perform dodge.zong '.. score.id)
   end 
   
   if skills["shuishangpiao"] and not skills["lingbo-weibu"] and skills["shuishangpiao"].lvl>250 then
      exe('enable dodge shuishangpiao;perform dodge.piao '.. score.id)
   end 
   
   if skills["bihai-chaosheng"] and perform.force and perform.force=="bihai-chaosheng" then
      exe('yun qimen')
   end
   if skills["yijin-jing"] and perform.force and perform.force=="yijin-jing" and quests["yjj"] and quests["yjj"].auto and quests["yjj"].auto==2 then
      exe('yun powerup')
   end
   if skills["lingbo-weibu"] then
      exe('enable dodge lingbo-weibu;perform dodge.luoshen '.. score.id)
   end
      if skills["xiantian-gong"] and perform.force and perform.force=="xiantian-gong" then
      exe('yun wuqi')
   end
      if skills["tianmo-gong"] and perform.force and perform.force=="tianmo-gong" then
      exe('yun tianmo')
   end
   if skills["huagong-dafa"] and perform.force and perform.force=="huagong-dafa" then
      exe('yun huadu')
   end
   if skills["longxiang-boruo"] and perform.force and perform.force=="longxiang-boruo" then
      exe('yun shield')
   end
   if skills["shenzhao-jing"] and perform.force and perform.force=="shenzhao-jing" then
    exe('yun shenzhao')
   end
   if skills["yunu-xinjing"] and perform.force and perform.force=="yunu-xinjing" then
      exe('yun xinjing')
   end 
   if skills["hanbing-zhenqi"] and perform.force and perform.force=="hanbing-zhenqi" then
      exe('yun huti')
   end 
   if skills["bahuang-gong"] and perform.force and perform.force=="bahuang-gong" then
      exe('yun duzun')
      exe('yun bahuang')
   end 
   if skills["beiming-shengong"] and perform.force and perform.force=="beiming-shengong" then
      exe('yun beiming')
   end
   if skills["jiuyang-shengong"] and perform.force and perform.force=="jiuyang-shengong" then
      exe('yun jiuyang')
   end
end

prepare_lianxi=function(func)
   prepare_trigger()
   EnableTriggerGroup("prepare_neili",true)
   flag.prepare=1
   if func~=nil then
      job.prepare=func
   else
      job.prepare=test   
   end
   condition={}
   exe('cond')
   return check_busy(prepareLianxi)
end

function prepareLianxi()
--   if (not condition.busy or condition.busy == 0) and job.prepare~=duHhe_start and job.prepare~=duCjiang_start then
   if job.prepare~=duHhe_start and job.prepare~=duCjiang_start then
      return prepare_neili(job.prepare)
   end
   flag.jixu=1
   if hp.neili_max>hp.neili_lim-10 then
      exe('set 积蓄')
   elseif job.prepare and (job.prepare==test or job.prepare==duHhe_start or job.prepare==duCjiang_start) then
      exe('set 积蓄')
   else
      flag.jixu=0
      exe('unset 积蓄')
   end

   if job.zuhe["gblu"] and not locl.id["铜钱"] and hp.exp<2000000 then exe('drop 1 coin') end
   prepare_neili_a()
end

prepare_lianxiz=function(func)
   prepare_trigger()
   EnableTriggerGroup("prepare_neili",true)
   flag.prepare=1
   if func~=nil then
      job.prepare=func
   else
      job.prepare=test   
   end
   condition={}
   exe('cond')
   return check_busy(prepareLianxiz)
end

function prepareLianxiz()
   if (not condition.busy or condition.busy == 0) and job.prepare~=duHhe_start and job.prepare~=duCjiang_start then
      return prepare_neili(job.prepare)
   end
   flag.jixu=1
   if hp.neili_max>hp.neili_lim-10 then
      exe('set 积蓄')
   elseif job.prepare and (job.prepare==test or job.prepare==duHhe_start or job.prepare==duCjiang_start) then
      exe('set 积蓄')
   else
      flag.jixu=0
      exe('unset 积蓄')
   end

   if job.zuhe["gblu"] and not locl.id["铜钱"] and hp.exp<2000000 then exe('drop 1 coin') end
   prepare_neili_a()
end

prepare_lianxix=function(func)
   prepare_trigger()
   EnableTriggerGroup("prepare_neili",true)
   flag.prepare=1
   if func~=nil then
      job.prepare=func
   else
      job.prepare=test
   end
   condition={}
   exe('cond')
   return check_busy(prepareLianxix)
end

function prepareLianxix()
   if (not condition.xueshan or condition.xueshan == 0) and job.prepare~=duHhe_start and job.prepare~=duCjiang_start then
      return prepare_neili(job.prepare)
   end
   flag.jixu=1
   if hp.neili_max>hp.neili_lim-10 then
      exe('set 积蓄')
   elseif job.prepare and (job.prepare==test or job.prepare==duHhe_start or job.prepare==duCjiang_start) then
      exe('set 积蓄')
   else
      flag.jixu=0
      exe('unset 积蓄')
   end
   prepare_neili_a()
end

prepare_neili=function(func,p_cmd)

   local l_db
   if func~=nil then
      job.prepare=func
   else
      job.prepare=test   
   end

   tmp.db=p_cmd
   l_db=6/5
   --if score.party and score.party=='峨嵋派' then
   --   l_db=5/4
   --end
   --if perform.skill and perform.skill=="jieshou-jiushi" then
   --   l_db=7/4
   --end
   if tmp.db and type(tmp.db)=="number" and tmp.db<2 then
      l_db=tmp.db
   end

   if hp.neili>hp.neili_max*l_db and job.prepare~=test and job.prepare~=fight_prepare then
      return check_bei(job.prepare)
   end
   
   prepare_trigger()
   EnableTriggerGroup("prepare_neili",true)
   flag.jixu=1
   exe('set 积蓄')
   flag.prepare=0
   exe('yun jing;yun jingli;hp')
   --if p_cmd==nil and score.party and score.party=='峨嵋派' and hp.neili_max<hp.neili_lim and hp.neili<hp.neili_max*l_db-600 then
   --   tmp.prepare=job.prepare
   --   go(prepare_neili_at,"峨嵋山","牛心石")
   --else
      if job.zuhe["gblu"] and not locl.id["铜钱"] then exe('drop 1 coin') end
      if p_cmd==nil and score.party and score.party=='丐帮' and hp.neili<hp.neili_max*3/4 then
         exe('sleep')
         check_bei(prepare_neili_a,1)
      else
         prepare_neili_a()
      end
   --end
end

prepare_neili_at=function()
   if tmp.prepare then job.prepare=tmp.prepare end 
   prepare_trigger()

   if job.zuhe["gblu"] and not locl.id["铜钱"] then exe('drop 1 coin') end

   EnableTriggerGroup("prepare_neili",true)
   create_timer_s('neili',3,'prepare_neili_idle')
end

prepare_neili_a=function()
   condition.busy=0
   prepare_neili_idle()
--   if hp.qixue_per<50 and isInBags(drug.heal) then
--      exe('fu dan')
--   end
   if hp.qixue_per<50 and (Bag["大还丹"] or Bag["大还丹(盒)"]) then
       exe('fu dan')
   end
   create_timer_s('neili',3,'prepare_neili_idle')
end

prepare_neili_b=function()
   exe('yun qi;hp')
   check_bei(prepare_neili_c)
end

prepare_neili_c=function()
   local l_db=6/5
   --if score.party and score.party=='峨嵋派' then
   --   l_db=5/4
   --end
   --if perform.skill and perform.skill=="jieshou-jiushi" then
   --   l_db=7/4
   --end
   if tmp.db and type(tmp.db)=="number" and tmp.db<2 then
      l_db=tmp.db
   end
   
   --if job.zuhe["wudang"] then l_db = 1 end 

   if not flag.prepare or type(flag.prepare)~='number' then flag.prepare=0 end
   if condition.busy and condition.busy>20 and job.prepare and job.prepare~=test and flag.prepare>0 then flag.prepare=4 end
   if condition.busy and condition.busy==0 and job.prepare and job.prepare~=test and flag.prepare>0 then flag.prepare=flag.prepare+5 end
   if job.prepare==duHhe_start or job.prepare==duCjiang_start then flag.prepare=0 end
   if flag.prepare>4 then flag.prepare=0 end
   if hp.neili>hp.neili_max*l_db and flag.prepare==0 then
      EnableTriggerGroup("prepare_neili",false)
      DeleteTriggerGroup("prepare_neili")
      DeleteTimer('neili')
      exe('yun jing;yun qi;yun jingli')
      check_bei(job.prepare)
   else
      prepare_neili_a()
   end
end

prepare_neili_w=function()
  if job.name and job.name == "hubiao" then
      prepare_neili_stop()
      return check_bei(job.prepare)
   end
   locate()
   check_bei(prepare_neili_g)
end

prepare_neili_g=function()
   exe(locl.dir)
end

prepare_neili_t=function()
   DeleteTimer('neili')
   tmp.i=1
end

prepare_neili_idle=function()
   local l_cnt=0
   local l_db=6/5

   for p in pairs(skills) do
       if skillEnable[p] and skillEnable[p]=="force" then
          tmp.fskill=p
	  break
       end
   end
   if perform.force then
      tmp.fskill=perform.force
   end
   
   if ((hp.neili_max>hp.neili_lim-20 and score.party and score.party=="峨嵋派") or hp.neili_max>=hp.neili_lim-5 or flag.jixu==1 or skills[tmp.fskill].full==0) and hp.neili>hp.neili_max*l_db then
      if hp.neili>hp.neili_max*7/4 then
         l_cnt=l_cnt + math.modf((hp.neili-hp.neili_max*7/4)/10)
      end
      l_cnt=l_cnt + math.modf(hp.neili_max/300)
      if l_cnt<1 then l_cnt=1 end
      lianxi(l_cnt)
   end
   if score.gold and score.gold>1000 and hp.neili<hp.neili_max then
      exe('eat '.. drug.neili)
   end
   exe('yun jingli;yun jing;yun qi')
   if hp.jingli_max<hp.jingli_lim-500 and flag.lianxi==1 and hp.neili>hp.neili_max*l_db and ((hp.neili_max>hp.neili_lim-20 and score.party and score.party=="峨嵋派") or hp.neili_max>=hp.neili_lim-5 or flag.jixu==1) then
      exe('unset 积蓄')
      exe('tuna '..hp.jingxue/2)
   else
      --if score.party and score.party=="峨嵋派" and locl.room=="牛心石" then
      --   exe('lianneili '..hp.dazuo)
      --end
      exe('dazuo '..hp.dazuo)
   end
   exe('cond')
end

prepare_neili_stop=function()
   DeleteTimer('neili')
   DeleteTimer('bei')
   EnableTriggerGroup("prepare_neili",false)
   DeleteTriggerGroup("prepare_neili")
   beihook=test
   busyhook=test
   EnableTriggerGroup("check_bei",false)
   EnableTriggerGroup("check_busy",false)
   exe('halt')
end
prepare_neili_liaokao=function()
    dis_all()
    return tiaoshui()
end

function job.find()
    if job.name==nil then return 0 end
end
function job.flag()
    flag.find=0
    flag.wait=0
end

function job_exp_trigger()
    DeleteTriggerGroup("job_exp")
    create_trigger_t('job_exp1',"^(> )*(\\D*)点潜能!$",'','jobExppot')
    create_trigger_t('job_exp2',"^(> )*(\\D*)点经验!$",'','jobExpexp')
    create_trigger_t('job_exp3','^(> )*你静下心来，反复回想刚才的任务过程，不禁豁然开朗。。你额外地得到了(\\D*)点经验！','','jobExpExtra')
    create_trigger_t('job_exp4',"^>*\\s*你觉得脑中豁然开朗，增加了(\\D*)点潜能和(\\D*)点经验！",'','job_exp_gb')
    create_trigger_t('job_exp5',"^(> )*恭喜你！你成功的完成了(\\D*)任务！你被奖励了",'','jobExp')
    create_trigger_t('job_exp6',"^>*\\s*好，任务完成了，你得到了(\\D*)点实战经验，(\\D*)点潜能和\\D*点正神。$",'','job_exp_gblu')
    create_trigger_t('job_exp7',"^>*\\s*你被奖励了(\\d*)点经验，(\\d*)点潜能，\\d*点负神！$",'','job_exp_shenlong')
--    create_trigger_t('job_exp8','^(> )*你被奖励了(\\D*)点经验，(\\D*)点潜能，(\\D*)两黄金','','hubiaoFinish')
    create_triggerex_lvl('job_exp9',"^(> )*【队伍】(\\D*)\\((\\D*)\\)：gblu start",'','gbluTeamStart',95)
    create_trigger_t('job_exp10',"^>*\\s*你被奖励了(\\d*)点经验，(\\d*)点潜能，\\d*点负神！$",'','job_exp_xingxiu')
    create_trigger_t('job_exp11',"^(> )*你被奖励了：(\\D*)点实战经验，(\\D*)点潜能，(\\D*)两白银，(\\D*)点神。$",'','job_exp_xuncheng')
    create_trigger_t('job_exp12',"^(> )*恭喜你任务顺利完成，你获得了(\\D*)经验，(\\D*)点潜能的奖励。$",'','job_exp_tdh')
    create_trigger_t('job_exp13',"^(> )*糟了！(\\D*)死亡，任务失败！",'','jobtdhfail')
--    create_trigger_t('job_exp14',"^(> )*(你擅离职守，任务失败。|你速度太慢，西夏武士已过颂摩崖，任务失败。)",'','job_gblu_fail')
    create_trigger_t('job_exp15',"^>*\\s*你获得了(\\d*)点经验，(\\d*)点潜能，你共为(\\d*)铲除了(\\d*)个恶贼。$",'','job_exp_dummy')

    SetTriggerOption("job_exp1","group","job_exp")
    SetTriggerOption("job_exp2","group","job_exp")
    SetTriggerOption("job_exp3","group","job_exp")
    SetTriggerOption("job_exp4","group","job_exp")
    SetTriggerOption("job_exp5","group","job_exp") 
    SetTriggerOption("job_exp6","group","job_exp")
    SetTriggerOption("job_exp7","group","job_exp")
--    SetTriggerOption("job_exp8","group","job_exp")
    SetTriggerOption("job_exp9","group","job_exp")
    SetTriggerOption("job_exp10","group","job_exp")
    SetTriggerOption("job_exp11","group","job_exp")
    SetTriggerOption("job_exp12","group","job_exp")
    SetTriggerOption("job_exp13","group","job_exp")
--    SetTriggerOption("job_exp14","group","job_exp")
    SetTriggerOption("job_exp15","group","job_exp")
    EnableTrigger("job_exp1",false)
    EnableTrigger("job_exp2",false)
end
function jobExp(n,l,w)
    EnableTrigger("job_exp1",true)
    EnableTrigger("job_exp2",true)
    hp.exp_name=tostring(w[2])
end
function jobExpexp(n,l,w)
    hp.exp_exp=tostring(w[2])
end
function jobExppot(n,l,w)
    EnableTrigger("job_exp1",false)
	EnableTrigger("job_exp2",false)
	hp.exp_pot=tostring(w[2])
    print('*******************')
    print('exp: '..hp.exp_exp)
    print('pot: '..hp.exp_pot)
    print('*******************')
	if not isNil(hp.exp_name) and not isNil(hp.exp_exp) and not isNil(hp.exp_pot) then
	   return messageShow(hp.exp_name ..'任务奖励：经验:【'.. hp.exp_exp ..'】点，，潜能:【'.. hp.exp_pot ..'】点！','darkorange')
	end

	hp.exp_name=nil
	hp.exp_exp=nil
	hp.exp_pot=nil
end

function jobExpExtra(n,l,w)
    messageShow('额外任务奖励：经验:【'..w[2]..'】点！','darkorange')
end

function job_exp_xuncheng(n,l,w)
    print('*******************')
    print('exp: '..w[2])
    print('pot: '..w[3])
    print('*******************')
    messageShow('巡城任务奖励：经验:【'..w[2]..'】点，潜能:【'..w[3]..'】点！')
end
function job_exp_tdh(n,l,w)
    messageShow('天地会任务奖励：经验:【'..w[2]..'】点，潜能:【'..w[3]..'】点！')
    dis_all()
    return tdh_finish()
end
function job_exp_dummy(n,l,w)
    messageShow('大米任务奖励：经验:【'..w[1]..'】点，潜能:【'..w[2]..'】点！')
end
function job_exp_clb(n,l,w)
    messageShow('武当任务奖励：经验:【'..w[1]..'】点，潜能:【'..w[2]..'】点！')
end
function job_exp_huashan(n,l,w)
    messageShow('华山任务奖励：经验:【'..w[1]..'】点，潜能:【'..w[2]..'】点！')
end
function job_exp_shenlong(n,l,w)
    messageShow('神龙任务奖励：经验:【'..w[1]..'】点，潜能:【'..w[2]..'】点！')
end
function job_exp_gb(n,l,w)
    if job.name=="gaibang" then
       messageShow('丐帮任务奖励：经验:【'..w[2]..'】点，潜能:【'..w[1]..'】点！')
    end
    if job.name=="songshan" then
       messageShow('嵩山任务奖励：经验:【'..w[2]..'】点，潜能:【'..w[1]..'】点！')
    end
    if job.name=="xingxiu" then
       messageShow('星宿任务奖励：经验:【'..w[2]..'】点，潜能:【'..w[1]..'】点！')
    end
end
function job_exp_zs(n,l,w)
    messageShow('捉蛇任务奖励：经验:【'..w[1]..'】点，潜能:【'..w[2]..'】点！')
end
function job_exp_gblu(n,l,w)
    messageShow('报效国家奖励：经验:【'..w[1]..'】点，潜能:【'..w[2]..'】点！')
    if hp.exp>2000000 then
       return gbluFinish()
    end
end
function job_exp_tongji(p_cmd)
    tongji = tongji or {}
    if tongji.exp==nil then 
       tongji.exp=hp.exp
       tongji.time=os.time()
       tongji.hour=math.modf(os.time()/900)
       messageShow('任务奖励统计：统计开始','red')
       return
    end

    if not tongji.time or not tongji.hour then 
       tongji.exp=nil
       return
    end
    if math.modf(os.time()/900)<=tongji.hour and not p_cmd then return end

    tongji.hour=math.modf(os.time()/900)

    local l_exp=hp.exp
    local l_time=os.time()-tongji.time
    local l_hour=math.modf(l_time/3600)
    local l_min=math.modf((l_time-l_hour*3600)/60)
    local l_sec=l_time-l_hour*3600-l_min*60
    local l_exp=hp.exp-tongji.exp
    local l_avg=math.modf(l_exp*3600/l_time)
	
	job.expAvg = l_avg

	if flag.log and flag.log=="yes" then
       messageShow('任务奖励统计：共运行【'.. l_hour ..'小时'.. l_min .. '分' .. l_sec ..'秒' ..'】，获得经验【'..l_exp..'】点，平均每小时【'..l_avg..'】点！','red')
    else
	   ColourNote ("white","blue",'任务奖励统计：共运行【'.. l_hour ..'小时'.. l_min .. '分' .. l_sec ..'秒' ..'】，获得经验【'..l_exp..'】点，平均每小时【'..l_avg..'】点！')    
	end
end
function jobExpTongji()
    return job_exp_tongji(1)
end

function jobtdhfail()
  messageShow('天地会任务：接头人死亡，任务失败！')
  tdh_triggerDel()
  return check_heal()
end

JobTriggerDel = JobTriggerDel or {}

function jobTriggerDel()
    local delList = {
	    ["huashan_triggerDel"] = true,
		["songxin_triggerDel"] = true,
		["gaibangTriggerDel"] = true,
		["zhuosheTriggerDel"] = true,
		["clbTriggerDel"] = true,
		["gbluTriggerDel"] = true,
		["sldsmTriggerDel"] = true,
		["tmonkTriggerDel"] = true,
		["husongTriggerDel"] = true,
		["wudangTriggerDel"] = true,
		["xingxiuTriggerDel"] = true,
		["xueshan_triggerDel"] = true,
		["tdh_triggerDel"] = true,
	}
    
	for p in pairs(delList) do
	    if _G[p] then
		   _G[p]()
		end
	end
	
	JobTriggerDel = JobTriggerDel or {}
	for p,q in pairs(JobTriggerDel) do
	    _G[q]()
	end
end

job.list["huashan"] ="华山惩恶扬善"
function huashan()
    if hp.shen<0 then
	   return turnShen('+')
	end
    huashan_trigger()
    job.name='huashan'
    job.time.b=os.time()
    job.target='任务目标'
    return prepare_lianxi(huashan_start)
end
jobFindAgain = jobFindAgain or {}
jobFindAgain["huashan"] = "huashanFindAgain"
jobFindFail = jobFindFail or {}
jobFindFail["huashan"] = "huashanFindFail"
function huashanFindAgain()
    EnableTriggerGroup("huashan_find",false)
    return go(find,dest.area,dest.room)
end
function huashanFindFail()
    EnableTriggerGroup("huashan_find",false)
    return go(huashan_shibai,'华山','正气堂')
end
function huashan_start()
    DeleteTriggerGroup("huashan_fight")
    DeleteTriggerGroup("huashan_cut")
    DeleteTriggerGroup("huashan_yls")
    DeleteTriggerGroup("huashan_yls_ask")
    DeleteTriggerGroup("huashan_over")
    DeleteTriggerGroup("huashan_find")
    return go(job_huashan,'华山','正气堂')
end
function job_huashan()
    EnableTriggerGroup("huashan_ask",true)
    --fight_prepare()
    exe('ask yue buqun about job')
    return messageShow('华山任务：开始任务。')
end
function huashan_trigger()
    DeleteTriggerGroup("huashan_find")
    DeleteTriggerGroup("huashan_ask")
    create_trigger_t('huashan_ask1',"^(> )*你向岳不群打听有关『job』的消息。$",'','huashan_ask')
    create_trigger_t('huashan_ask2',"^(> )*这里没有这个人。$",'','huashan_nobody')
    SetTriggerOption("huashan_ask1","group","huashan_ask")
    SetTriggerOption("huashan_ask2","group","huashan_ask")
    EnableTriggerGroup("huashan_ask",false)
    DeleteTriggerGroup("huashan_accept")
    create_trigger_t('huashan_accept1',"^(> )*岳不群说道：「你不能光说呀，倒是做出点成绩给我看看！",'','huashan_shibai')
    create_trigger_t('huashan_accept2',"^(> )*岳不群说道：「你现在正忙着做其他任务呢！",'','huashan_busy')
    create_trigger_t('huashan_accept3',"^(> )*岳不群说道：「现在没有听说有恶人为害百姓",'','huashan_fangqi')
    create_trigger_t('huashan_accept4',"^(> )*岳不群给了你一块令牌。$",'','huashan_npc')
	create_trigger_t('huashan_accept5',"^(> )*岳不群对你说道：你还是先去思过崖面壁思过去吧。",'','huashanjjQuest')
    SetTriggerOption("huashan_accept1","group","huashan_accept")
    SetTriggerOption("huashan_accept2","group","huashan_accept")
    SetTriggerOption("huashan_accept3","group","huashan_accept")
	SetTriggerOption("huashan_accept4","group","huashan_accept")
	SetTriggerOption("huashan_accept5","group","huashan_accept")
    EnableTriggerGroup("huashan_accept",false)
    DeleteTriggerGroup("huashan_npc")
    create_trigger_t('huashan_npc1',"^(> )*(冷不防|突然|猛地|忽然|冷不丁)从树林\\D*你的令牌，向(\\D*)(处|方向)\\D*逃去。$",'','huashan_where')
    create_trigger_t('huashan_npc2',"^(> )*你一把抓向蒙面人试图抢回令牌，但被蒙面人敏捷得躲了过去，你顺手扯下蒙面人的面罩，发现原来是曾经名震江湖的(\\D*)。",'','huashan_find')
    create_trigger_t('huashan_npc3','^(> )*你把 "hsjob" 设定为 "闲逛中" 成功完成。','','huashan_npc_goon')
    SetTriggerOption("huashan_npc1","group","huashan_npc")
    SetTriggerOption("huashan_npc2","group","huashan_npc")
    SetTriggerOption("huashan_npc3","group","huashan_npc")
    EnableTriggerGroup("huashan_npc",false)
	DeleteTriggerGroup("huashanQuest")
    create_trigger_t('huashanQuest1',"^(> )*岳不群说道：「".. score.name .."，听说魔教教主被关在杭州西湖湖底，你去把他杀了",'','huashanQuest')
	create_trigger_t('huashanQuest2',"^(> )*岳不群说道：「".. score.name .."你杀了不少恶人，未免杀气过重不如上思过崖面壁忏悔吧",'','huashanDgjj')
	SetTriggerOption("huashanQuest1","group","huashanQuest")
	SetTriggerOption("huashanQuest2","group","huashanQuest")
	EnableTriggerGroup("huashanQuest",false)
end
function huashan_triggerDel()
    DeleteTriggerGroup("huashan_find")
    DeleteTriggerGroup("huashan_ask")
    DeleteTriggerGroup("huashan_accept")
    DeleteTriggerGroup("huashan_npc")
    DeleteTriggerGroup("huashan_fight")
    DeleteTriggerGroup("huashan_cut")
    DeleteTriggerGroup("huashan_yls")
    DeleteTriggerGroup("huashan_yls_ask")
    DeleteTriggerGroup("huashan_over")
    DeleteTriggerGroup("huashanQuest")
end
function huashan_ask()
    EnableTriggerGroup("huashan_ask",false)
    EnableTriggerGroup("huashan_accept",true)
end
function huashan_nobody()
    EnableTriggerGroup("huashan_ask",false)
    return huashan_start()
end
function huashan_shibai()
    EnableTriggerGroup("huashan_accept",false)
    return check_busy(huashan_shibai_b)
end
function huashan_shibai_b()
    Execute('ask yue buqun about 失败')
    messageShow('华山任务：任务失败。')
    return check_job()
end
function huashan_fangqi()
    job.last="huashan"
    return check_heal()
end
function huashan_busy()
    EnableTriggerGroup("huashan_accept",false)
    return check_bei(huashan_busy_dazuo)
end
function huashan_busy_dazuo()
    exe('#3s')
    return prepare_lianxi(check_heal)
end
function huashan_npc()
    EnableTriggerGroup("huashan_accept",false)
    job.last="huashan"
    return check_bei(huashan_npc_go)
end
function huashan_npc_go()
    go(huashan_npc_get,'华山','山脚下')
end
function huashan_npc_get()
    locate()
    if locl.room=="山脚下" then
        EnableTriggerGroup("huashan_npc",true)
        exe('s')
        return check_bei(huashan_npc_goon)
    else
        return check_bei(huashan_npc_go)
    end
end
function huashan_npc_goon()
    exe('n;e;e')
    locate()
    return check_busy(huashan_ssl,1)
end
function huashan_ssl()
    if locl.room=="石屋" then
       return check_bei(huashan_npc_ssl)
    elseif locl.room=="玉泉院" then
	   exe('s;s')
       return check_bei(huashan_npc_goon)
	else
	   return check_bei(huashan_npc_goon)
    end
--[[
    if locl.room=="石屋" or locl.room=="玉泉院" then
       return check_bei(huashan_npc_ssl)
    else
       return check_bei(huashan_npc_goon)
    end
]]
end
function huashan_npc_ssl()
    return exe('w;s;s;alias hsjob 闲逛中')    
end
huashan_where=function(n,l,w)
    job.room=tostring(w[3])
end
huashan_find=function(n,l,w)
    local flag_huashan=0
    dis_all()
    job.target=tostring(w[2])
    job.killer={}
    job.killer[job.target]=true
    DeleteTriggerGroup("huashan_find")
    create_trigger_t('huashan_find1','^( )*'..job.target..'\\((\\D*)\\)','','huashan_fight')
    SetTriggerOption("huashan_find1","group","huashan_find")
    job.flag()
    dest.room=job.room
    dest.area="华山"
    if not path_cal() then
       dest.area="华山村"
    end
       messageShow(dest.area,dest.room)
    flag.times=1
	messageShow('华山任务：追杀【'..job.room..'】的【'..job.target..'】。')
    fight_prepare()
    return go(find,dest.area,dest.room)
end
huashan_fight=function(n,l,w)
    flag.find=1
    job.id=string.lower(w[2])
    exe('follow '..job.id)
    job.killer[job.target]=job.id
--  exe('kill '..job.id)
--  exe('pfmpfm')
    killPfm(job.id)
    dis_all()
    DeleteTriggerGroup("huashan_fight")
    create_trigger_t('huashan_fight1','^(> )*'..job.target..'「啪」的一声倒在地上','','huashan_cut')
    create_trigger_t('huashan_fight2','^(> )*'..job.target..'神志迷糊，脚下一个不稳，倒在地上昏了过去。','unset wimpy;kill '..job.id,'')
    create_trigger_t('huashan_fight3','^(> )*'..job.target..'身子动了动，口中呻吟了几声，清醒过来。','','set wimpy 100;kill '..job.id,'')
    SetTriggerOption("huashan_fight1","group","huashan_fight") 
    SetTriggerOption("huashan_fight2","group","huashan_fight") 
    SetTriggerOption("huashan_fight3","group","huashan_fight") 
end
huashan_cut=function()
    EnableTriggerGroup("huashan_fight",false)
    EnableTriggerGroup("huashan_find",false)
    DeleteTriggerGroup("huashan_cut")
    create_trigger_t('huashan_cut1','^(> )*只听“咔”的一声，你将(\\D*)的首级斩了下来，提在手中。','','huashan_cut_con')
    create_trigger_t('huashan_cut2','^(> )*(乱切别人杀的人干嘛啊|你手上这件兵器无锋无刃|你得用件锋利的器具才能切下这尸体)','','huashan_cut_weapon')
    SetTriggerOption("huashan_cut1","group","huashan_cut") 
    SetTriggerOption("huashan_cut2","group","huashan_cut")
	job.killer={}
	messageShow('华山任务：搞定蒙面人：【'..job.target..'】。')
    return check_bei(huashan_cut_act)
end
huashan_cut_act=function()
    DeleteTimer('perform')
    weapon_unwield()
    weaponWieldCut()
    for i=1,2 do
       exe('get ling pai from corpse '..i)
       exe('get gold from corpse '..i)
       exe('qie corpse '..i)
    end
end
huashan_cut_weapon=function()
    return check_bei(huashan_cut_act,1)
end
huashan_cut_con=function(n,l,w)
    if job.target~=tostring(w[2]) then
       exe('drop head')
       return check_bei(huashan_cut_act)
    else
       EnableTriggerGroup("huashan_cut",false)
       return go(huashan_yls,'华山','祭坛')
    end
end
huashan_yls=function()
    DeleteTriggerGroup("huashan_yls")
    create_trigger_t('huashan_yls1','^(> )*(这里没有这个人。|你身上没有这样东西。|这人好象不是你杀的吧？|你的令牌呢|你还没有去找恶贼，怎么就来祭坛了？)','','huashan_yls_fail')
    create_trigger_t('huashan_yls2','^(> )*岳灵珊在你的令牌上写下了一个 (一|二) 字。','','huashan_yls_ask')
	create_trigger_t('huashan_yls3','^(> )*这好象不是你领的令牌吧？','','huashan_yls_lingpai')
    SetTriggerOption("huashan_yls1","group","huashan_yls")
    SetTriggerOption("huashan_yls2","group","huashan_yls")
	SetTriggerOption("huashan_yls3","group","huashan_yls")
    return exe('give head to yue lingshan;hp')
end
huashan_yls_fail=function()
    EnableTriggerGroup("huashan_yls",false)
	if locl.room~="祭坛" then
	   return go(huashan_yls,'华山','祭坛')
	end
    exe('out;w;s;se;su;su;s')
    return check_bei(huashan_shibai_b)
end
huashan_yls_lingpai=function()
    EnableTriggerGroup("huashan_yls",false)
    exe('drop ling pai')
    return check_bei(huashan_yls)
end
huashan_yls_ask=function(n,l,w)
    EnableTriggerGroup("huashan_yls",false)    
    DeleteTriggerGroup("huashan_yls_ask")
    create_trigger_t('huashan_yls_ask1','^(> )*你向岳灵珊打听有关『力不从心』的消息。','','huashan_yls_back')
    SetTriggerOption("huashan_yls_ask1","group","huashan_yls_ask")
    EnableTriggerGroup("huashan_yls_ask",false)
    if w[2]=='二' then
       return huashan_yls_back()
    else
       if hp.exp>2000000 then
           return check_bei(huashan_yls_lbcx)
       else
           job.name='huashan2'
           return check_bei(huashan_heal)
       end
    end
end
huashan_heal=function()
    fight_prepare()
    return check_bei(huashan_neili)
end
huashan_neili=function()
    return prepare_neili(huashan_npc)
end
huashan_yls_lbcx=function()
    EnableTriggerGroup("huashan_yls_ask",true)
    weapon_unwield()
    return exe('drop head;askk yue lingshan about 力不从心')
end
huashan_yls_back=function()
    EnableTriggerGroup("huashan_yls_ask",false)
    EnableTriggerGroup("huashanQuest",true)
    DeleteTriggerGroup("huashan_over")
    create_trigger_t('huashan_over1','^(> )*你给岳不群一块令牌。','','huashan_finish')
    create_trigger_t('huashan_over2','^(> )*这里没有这个人。','','')
    SetTriggerOption("huashan_over1","group","huashan_over")
    SetTriggerOption("huashan_over2","group","huashan_over")
    return go(huashan_over,'华山','正气堂')
end
huashan_over=function()
    weapon_unwield()
    EnableTriggerGroup("huashanQuest",true)
    return exe('give ling pai to yue buqun')
end
huashan_finish=function()
        EnableTriggerGroup("huashan_over",false)
	EnableTriggerGroup("huashanQuest",true)
	exe('drop ling pai')
        messageShow('华山任务：完成任务。')
	return check_bei(check_heal)
end
function huashanQuest()
	SetVariable("timexxdf",os.date())
end
function huashanDgjj()
	SetVariable("timedgjj",os.date())
end
function huashanjjQuest()
    EnableTriggerGroup("huashan_accept",false)
    SetVariable("timedgjj",os.date())
    job.zuhe["huashan"] = nil
    return check_heal()
end

function clbTrigger()
    DeleteTriggerGroup("clbAsk")
    create_trigger_t('clbAsk1',"^(> )*你向贝海石打听有关",'','clbAsk')
    create_trigger_t('clbAsk2',"^(> )*这里没有这个人。$",'','clbNobody')
    SetTriggerOption("clbAsk1","group","clbAsk")
    SetTriggerOption("clbAsk2","group","clbAsk")
    EnableTriggerGroup("clbAsk",false)
    DeleteTriggerGroup("clbAccept")
    create_trigger_t('clbAccept1',"^(> )*贝海石在你的耳边悄声说道：我接到飞鸽传书，(龙灵堂|狮威堂|熊敏堂|虎猛堂|豹捷堂)属下帮众(\\D*)在(\\D*)处遇到袭击",'','clbConsider')
    create_trigger_t('clbAccept2',"^(> )*贝海石说道：「(你不是已经知道了|啊……，对不起|你不是已经进展|我不是告诉你了吗)",'','clbFangqi')
    create_trigger_t('clbAccept3',"^(> )*贝海石说道：「你刚做完长乐帮任务",'','clbFail')
    create_trigger_t('clbAccept4',"^(> )*贝海石说道：「(我帮现在比较空闲|现在我这里没有给你的任务|暂时没有任务需要做)",'','clbBusy')
    create_trigger_t('clbAccept5',"^(> )*贝海石说道：「你刚做完(惩恶扬善|大理送信)任务",'','clbBusy')
    create_trigger_t('clbAccept6',"^(> )*贝海石说道：「现在暂时没有适合你的工作",'','clbBusy')
    create_trigger_t('clbAccept7',"^(> )*贝海石说道：「暂时没有任务需要做，你过一会儿再来吧",'','clbBusy')
    create_trigger_t('clbAccept8',"^(> )*贝海石说道：「既然你无法完成",'','clbFail')
    create_trigger_t('clbAccept9',"^(> )*贝海石说道：「你根本就没有领任务",'','clbFail')
    SetTriggerOption("clbAccept1","group","clbAccept")
    SetTriggerOption("clbAccept2","group","clbAccept")
    SetTriggerOption("clbAccept3","group","clbAccept")
    SetTriggerOption("clbAccept4","group","clbAccept")
    SetTriggerOption("clbAccept5","group","clbAccept")
    SetTriggerOption("clbAccept6","group","clbAccept")
    SetTriggerOption("clbAccept7","group","clbAccept")
    SetTriggerOption("clbAccept8","group","clbAccept")
    SetTriggerOption("clbAccept9","group","clbAccept")
    EnableTriggerGroup("clbAccept",false)
    DeleteTriggerGroup("clbChakan")
    create_trigger_t('clbChakan1','^(> )*你仔细地查看','','clbBack')
    create_trigger_t('clbChakan2','^(> )*(\\D*)「啪」的一声倒在地上','','clbDie')
    create_trigger_t('clbChakan3','^(> )*你把 "action" 设定为 "chakan" 成功完成。$','','clbCkBack')
    SetTriggerOption("clbChakan1","group","clbChakan")
    SetTriggerOption("clbChakan2","group","clbChakan")
    SetTriggerOption("clbChakan3","group","clbChakan")
    EnableTriggerGroup("clbChakan",false)
    DeleteTriggerGroup("clbFinish")
    create_trigger_t('clbFinish1','^(> )*贝海石说道：「(你根本就没有领任务|既然已经知道了是|哎，可惜不能手刃此奸贼|做的好！这些金子)','','clbFinish')
    create_trigger_t('clbFinish2',"^(> )*贝海石说道：「你真的完成任务了",'','clbFangqi')
    SetTriggerOption("clbFinish1","group","clbFinish")
    SetTriggerOption("clbFinish2","group","clbFinish")
    EnableTriggerGroup("clbFinish",false)
end
function clbTriggerDel()
    DeleteTriggerGroup("clbAsk")
    DeleteTriggerGroup("clbAccept")
    DeleteTriggerGroup("clbChakan")
    DeleteTriggerGroup("clbFinish")
    DeleteTriggerGroup("clbFind")
end
function clbNobody()
    EnableTriggerGroup("clbAsk",false)
    return clb()
end
job.list["clb"] = "长乐帮任务"
function clb()
    clbTrigger()
    job.name='clb'
    job.time.b=os.time()
    messageShow('长乐帮任务：任务开始。')
    return clbGo()
end
jobFindAgain = jobFindAgain or {}
jobFindAgain["clb"] = "clbFindAgain"
jobFindFail = jobFindFail or {}
jobFindFail["clb"] = "clbFindFail"
function clbFindAgain()
    EnableTriggerGroup("clbFind",false)
    return go(clbFindAct,dest.area,dest.room)
end
function clbFindFail()
    EnableTriggerGroup("clbFind",false)
    return go(clbFangqi,"长乐帮","小厅")
end
function clbGo()
    return go(clbStart,"长乐帮","小厅")
end
function clbStart()
    EnableTriggerGroup("clbAsk",true)
    exe('ask bei haishi about job')
end
function clbAsk()
    EnableTriggerGroup("clbAsk",false)
    EnableTriggerGroup("clbAccept",true)
end
function clbBusy()
    EnableTriggerGroup("clbAccept",false)
    return check_bei(clbBusyDazuo)
end
function clbBusyDazuo()
    exe('e')
    return prepare_lianxiz(clbGo)
end
function clbFail()
    EnableTriggerGroup("clbAccept",false)
    job.last='clb'
	--return getGold()
    return check_heal()
end
function clbConsider(n,l,w)
    EnableTriggerGroup("clbAccept",false)
    job.last='clb'
    job.target=Trim(w[3])
    job.killer={}
    job.killer[job.target]=true
    job.where=Trim(w[4])
    job.where=addrTrim(job.where)

--    if (job.where=="星宿海星宿海" or job.where=="星宿海石道" or job.where=="星宿海海边荒路" or job.where=="星宿海厨房" or job.where=="星宿海日月洞口" or job.where=="星宿海小路" or job.where=="星宿海日月洞" or job.where=="星宿海山前荒地" or job.where=="星宿海山壁" or job.where=="星宿海虫谷入口" or job.where=="星宿海山石" or job.where=="星宿海药庐" or job.where=="星宿海虫谷入口" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞" or job.where=="星宿海山洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="铁掌山第二指节" and hp.exp<2000000 and score.party~="铁掌帮" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if score.master~="蓝凤凰" and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    if job.where~="前方高能通行禁止" or job.where~="力不从心通行禁止" then
    print('**********************************************')
    print(job.area)
    print(job.room)
    print(job.target)
    print('**********************************************')
    end

    if job.area=="黑木崖" then
       if score.party~="日月神教" and (hp.exp<2000000 or hp.neili_max<4000) then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(clbFangqi)
	elseif score.party=="日月神教" and hp.neili_max<4000 then
	   messageShowDebug('【'..job.where..'】')
	   return check_bei(clbFangqi)
       end
    end
    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" and score.party~="神龙教" then
       messageShowDebug('【'..job.where..'】')
       messageShow('长乐帮任务：地点【'..job.where..'】晕船，任务放弃。')
       return check_bei(clbFangqi)
    end
    if job.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       messageShowDebug('【'..job.where..'】')
       messageShow('长乐帮任务：地点【'..job.where..'】迷宫，任务放弃。')
       return check_bei(clbFangqi)
    end
    if (score.party~="姑苏慕容" or score.party~="普通百姓") and (job.area=="姑苏慕容" or job.area=="燕子坞" or job.area=="曼佗罗山庄") then
       messageShowDebug('【'..job.where..'】')
       messageShow('长乐帮任务：地点【'..job.where..'】太远，任务放弃。')
       return check_bei(clbFangqi)
    end
    if job.area=="绝情谷" and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       messageShow('长乐帮任务：地点【'..job.where..'】门卫，任务放弃。')
       return check_bei(clbFangqi)
    end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('长乐帮任务：伊犁暮色已沉，任务放弃。')
           return check_bei(clbFangqi)
       end
    end
	
    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('长乐帮任务：酒楼商铺已关门，任务放弃。')
           return check_bei(clbFangqi)
       end
    end

    if WhereIgnores[job.where] or AddrIgnores[dest.area] or not job.room or not path_cal() then
       messageShowDebug('【'..job.where..'】')
       messageShow('长乐帮任务：地点【'..job.where..'】不可到达，任务放弃。')
       return check_bei(clbFangqi)
    end
    job.name='clb'
    messageShow('长乐帮任务：开始前往【'..job.where..'】！')
    return check_bei(clbFind)
end
function clbFangqiGo()
    go(clbFangqi,'长乐帮','小厅')
end
function clbFangqi()
    EnableTriggerGroup("clbAsk",true)
    EnableTriggerGroup("clbAccept",false)
    EnableTriggerGroup("clbFinish",false)
    check_bei(clbFangqiAsk)
end
function clbFangqiAsk()
    exe('ask bei haishi about 放弃')
end
function clbFind()
    DeleteTriggerGroup("clbFind")
    create_trigger_t('clbFind1','^(> )*\\D*'..job.target..'\\((\\D*)\\)','','clbTarget')
	create_trigger_t('clbFind2','^(> )*\\D*'..job.target..'的尸体\\((\\D*)\\)','','clbTarget')
    SetTriggerOption("clbFind1","group","clbFind")
	SetTriggerOption("clbFind2","group","clbFind")
	EnableTriggerGroup("clbFind",false)
    flag.times=1
	flag.clbdie=nil
    return go(clbFindAct,job.area,job.room)    
end
function clbFindAct()
    EnableTriggerGroup("clbFind",true)
    DeleteTimer("clb")
    job.flag()
    exe('look')
	messageShow('长乐帮任务：开始寻找【'..dest.area .. dest.room ..'】的'..'【'.. job.target ..'】！')
    return find()
end
function clbTarget()
    EnableTriggerGroup("clbFind",false)
    dis_all()
    EnableTriggerGroup("clbChakan",true)
	locate()	
	return check_busy(clbLocate)
end
function clbLocate()
    if locl.id[job.target] then
	   return checkWait(clbTarget,1)
	elseif locl.id[job.target ..'的尸体'] then
	   return check_halt(clbChakan)
	else
	   return clbFind()
	end
end
function clbDie(n,l,w)
    if job.target==tostring(w[2]) then
	   flag.clbdie=true
       --return check_bei(clbChakan)
	end
end
function clbChakan()
    exe('yield yes')
    exe('halt')
    for i=1,3 do
	    exe('get cu bu from corpse '.. i)
	end
	exe('chakan cu bu')
	exe('chakan corpse')
	exe('get corpse 2;drop corpse')
	--exe('chakan cu bu')
	exe('chakan corpse')
	exe('get corpse 3;drop corpse')
	--exe('chakan cu bu')
	exe('chakan corpse')
	exe('yield no')
	exe('alias action chakan')
end
function clbCkBack()
    EnableTriggerGroup("clbChakan",false)
    return check_bei(clbCkSec,1)
end
function clbCkSec()
    clbChakan()
	return clbBack()
end
function clbBack()
    EnableTriggerGroup("clbChakan",false)
    return go(clbFinishWait,'长乐帮','小厅')
end
function clbFinishWait()
	if locl.id["贝海石"] then
	   EnableTriggerGroup("clbFinish",true)
	   exe('ask bei haishi about 完成')
	else
	   return go(clbFinishWait,'长乐帮','小厅')
	end
end
function clbFinish()
    EnableTriggerGroup("clbFinish",false)
	messageShow('长乐帮任务：任务结束。')
    return check_bei(check_heal)
end

function songxin_trigger()
    DeleteTriggerGroup("songxin_find")
    DeleteTriggerGroup("songxin_ask")
    create_trigger_t('songxin_ask1',"^>*\\s*你向褚万里打听",'','songxin_ask')
    create_trigger_t('songxin_ask2',"^>*\\s*这里没有这个人。$",'','songxin_nobody')
    SetTriggerOption("songxin_ask1","group","songxin_ask")
    SetTriggerOption("songxin_ask2","group","songxin_ask")
    EnableTriggerGroup("songxin_ask",false)
    DeleteTriggerGroup("songxin_accept")
    create_trigger_t('songxin_accept1',"^>*\\s*褚万里\\D*说道：「\\D*，你不是本王府随从，此话从何说起？",'','songxin_join')
    create_trigger_t('songxin_accept2',"^>*\\s*褚万里\\D*说道：「(你先去休息一会吧！|现在暂时没有给你的任务，)",'','songxin_busy')
    create_trigger_t('songxin_accept3',"^>*\\s*褚万里\\D*说道：「既然\\D*做不了，也就罢了。",'','songxin_fangqi_heal')
    create_trigger_t('songxin_accept4',"^>*\\s*褚万里\\D*说道：「你不是已经领了送信的任务吗？还不快去做。",'','songxin_fangqi')
    create_trigger_t('songxin_accept5',"^>*\\s*褚万里\\D*说道：「你刚做完大理送信任务，还是去休息一会吧。",'','songxin_rest')
    create_trigger_t('songxin_accept6',"^>*\\s*褚万里\\D*说道：「\\D*你并没有领了送信的任务，说什么放弃啊？」",'','songxin_busy')
    create_trigger_t('songxin_accept7',"^>*\\s*褚万里交给你一封密函。",'','songxin_xin')
    SetTriggerOption("songxin_accept1","group","songxin_accept")
    SetTriggerOption("songxin_accept2","group","songxin_accept")
    SetTriggerOption("songxin_accept3","group","songxin_accept")
    SetTriggerOption("songxin_accept4","group","songxin_accept")
    SetTriggerOption("songxin_accept5","group","songxin_accept")
    SetTriggerOption("songxin_accept6","group","songxin_accept")
    SetTriggerOption("songxin_accept7","group","songxin_accept")
    EnableTriggerGroup("songxin_accept",false)
    DeleteTriggerGroup("songxin_letter")
    create_trigger_t('songxin_letter1',"^>*\\s*「(\\D*) (\\D*)」 亲启。",'','songxin_consider')
    SetTriggerOption("songxin_letter1","group","songxin_letter")
    EnableTriggerGroup("songxin_letter",false)
    DeleteTriggerGroup("songxin_killer")
    create_trigger_t('songxin_killer1',"^>*\\s*你隐约感觉到有人围了过来。",'','songxin_killer')
    create_trigger_t('songxin_killer2',"^>*\\s*(\\D*)说道：「小子，乖乖把密函交出来吧！！！」",'','songxin_killer_1')
    create_trigger_t('songxin_killer3',"^>*\\s*糟糕，又冲上来了个人！",'','songxin_killer_2')
    create_trigger_t('songxin_killer4',"^>*\\s*(\\D*)说道：「师兄，点子硬得很，我来帮你！！！」",'','songxin_killer_3')
    SetTriggerOption("songxin_killer1","group","songxin_killer")
    SetTriggerOption("songxin_killer2","group","songxin_killer")
    SetTriggerOption("songxin_killer3","group","songxin_killer")
    SetTriggerOption("songxin_killer4","group","songxin_killer")
    EnableTriggerGroup("songxin_killer",false)
    DeleteTriggerGroup("songxin2_check")
    create_trigger_t('songxin2_check1',"(> )*\\D*在你的耳边悄声说道：你赶紧把它送到「(\\D*)」的「(\\D*)」手上。",'','songxin2_target')
    create_trigger_t('songxin2_check2',"(> )*\\D*在你的耳边悄声说道：可能有个武功和你相比(\\D*)的家伙要来抢你",'','songxin2_level')
    create_trigger_t('songxin2_check3','^>*\\s*你把 "action" 设定为 "sx_back" 成功完成。','','songxin2_consider')
    SetTriggerOption("songxin2_check1","group","songxin2_check")
    SetTriggerOption("songxin2_check2","group","songxin2_check")
    SetTriggerOption("songxin2_check3","group","songxin2_check")
    EnableTriggerGroup("songxin2_check",false)
    DeleteTriggerGroup("songxin2_killer")
    create_trigger_t('songxin2_killer1',"^>*\\s*你定睛一看，原来是(\\D*)，而且此人\\D*，似乎用的是(\\D*)的(\\D*)！",'','songxin2_check')
    SetTriggerOption("songxin2_killer1","group","songxin2_killer")
    EnableTriggerGroup("songxin2_killer",false)
end
function songxin_triggerDel()
    DeleteTriggerGroup("songxin_find")
    DeleteTriggerGroup("songxin_ask")
    DeleteTriggerGroup("songxin_accept")
    DeleteTriggerGroup("songxin_letter")
    DeleteTriggerGroup("songxin_killer")
    DeleteTriggerGroup("songxin2_check")
    DeleteTriggerGroup("songxin2_killer")
    DeleteTriggerGroup("songxin_fight")
end
job.list["songxin"] = "大理送信"
job.list["songxin2"] = "大理送信2"
function songxin()
    songxin_trigger()
    job.name='songxin'
    job.time.b=os.time()
	if jobLevel and jobLevel["sxlvl"] and jobLevel["sxlvl"] < hp.pot_max - 95 then
	   jobLevel["songxin"] = 10
	   jobLevel["sxlvl"] = hp.pot_max - 100
	end
    return prepare_lianxi(songxin_start)
end

jobFindAgain = jobFindAgain or {}
jobFindAgain["songxin"] = "songxinFindAgain"
jobFindAgain["songxin2"] = "songxinFindAgain"
jobFindFail = jobFindFail or {}
jobFindFail["songxin"] = "songxinFindFail"
jobFindFail["songxin2"] = "songxinFindFail"
faintFunc = faintFunc or {}
faintFunc["songxin"] = "songxinFaint"
faintFunc["songxin2"] = "songxinFaint"

function songxinFindAgain()
    EnableTriggerGroup("songxin_find",false)
    return go(songxin_find_go,dest.area,dest.room)
end
function songxinFaint()
    jobLevel = jobLevel or {}
	if job.level and jobLevel[job.level] and jobLevel["songxin"] and jobLevel["songxin"]>jobLevel[job.level] then
	   jobLevel["songxin"] = jobLevel[job.level]
	   if jobLevel["songxin"] and jobLevel["songxin"] < 5 then
	      jobLevel["songxin"] = 5
	   end
	   jobLevel["sxlvl"] = hp.pot_max - 100
	end
    return songxin_fangqi_go()
end
function songxinFindFail()
    EnableTriggerGroup("songxin_find",false)
    messageShowDebug('寻找失败：【'..job.where..'】')
    return go(songxin_fangqi,'大理城','驿站')
end
function songxin_start()
    return go(job_songxin,'大理城','驿站')
end
function job_songxin()
    DeleteTriggerGroup("check_job")
    EnableTriggerGroup("songxin_ask",true)
    exe('ask zhu wanli about job')
    messageShow('送信任务：任务开始。')
end
function songxin_ask()
    EnableTriggerGroup("songxin_ask",false)
    EnableTriggerGroup("songxin_accept",true)
end
function songxin_nobody()
    EnableTriggerGroup("songxin_ask",false)
    songxin_start()
end
function songxin_join()
    EnableTriggerGroup("songxin_accept",false)
    check_bei(songxin_join_go)
end
function songxin_join_go()
    exe('w;s;e;e;n;n;n;e;s;askk fu about join')
    check_bei(songxin_huanggong_ask)
end
function songxin_huanggong_ask()
    exe('n;w;#3s;#4w;#3n;w;askk gao shengtai about 入皇宫')
    check_bei(songxin_start)
end
function songxin_busy()
    EnableTriggerGroup("songxin_accept",false)
    check_bei(songxin_busy_dazuo)
end
function songxin_busy_dazuo()
    exe('w;w')
    prepare_lianxiz(songxin_start)
end
function songxin_fangqi()
    EnableTriggerGroup("songxin_accept",false)
    check_bei(songxin_fangqi_ask)
end
function songxin_fangqi_ask()
    EnableTriggerGroup("songxin_ask",true)
    exe('ask zhu wanli about 放弃')
end
function songxin_fangqi_heal()
    EnableTriggerGroup("songxin_accept",false)
    return check_bei(job_songxin)
end
function songxin_rest()
    EnableTriggerGroup("songxin_accept",false)
    job.last="songxin"
    check_bei(check_heal)
end
function songxin_xin()
    EnableTriggerGroup("songxin_accept",false)
    EnableTriggerGroup("songxin_letter",true)
    job.last="songxin"
    exe('look letter')
end
function songxin_consider(n,l,w)
    EnableTriggerGroup("songxin_letter",false)
    job.where=tostring(w[1])
    job.target=tostring(w[2])
    if NpcIgnores[job.target] then
       messageShow('送信任务：目标【'..job.target..'】不可送达，任务放弃。')
       return check_bei(songxin_fangqi)
    end
--[[
    if string.find(job.target,"边防官兵") then
       messageShow('送信任务：目标【'..job.target..'】行踪飘忽，任务放弃。')
       return check_bei(songxin_fangqi)
    end

    if string.find(sxjob.cancel,job.target) then
       messageShow('送信任务：目标【'..job.target..'】不可送达，任务放弃。')
       return check_bei(songxin_fangqi)
    end
]]
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if score.master~="蓝凤凰" and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    if job.where~="前方高能通行禁止" or job.where~="力不从心通行禁止" then
    print('**********************************************')
    print(job.area)
    print(job.room)
    print(job.target)
    print('**********************************************')
    end

    if job.area=="黑木崖" then
       if score.party~="日月神教" and (hp.exp<2000000 or hp.neili_max<4000) then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(songxin_fangqi)
	elseif score.party=="日月神教" and hp.neili_max<4000 then
	   messageShowDebug('【'..job.where..'】')
	   return check_bei(songxin_fangqi)
       end
    end
    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" and score.party~="神龙教" then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务：地点【'..job.where..'】晕船，任务放弃。')
       return check_bei(songxin_fangqi)
    end
    if job.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务：地点【'..job.where..'】迷宫，任务放弃。')
       return check_bei(songxin_fangqi)
    end
    if (score.party~="姑苏慕容" or score.party~="普通百姓") and (job.area=="姑苏慕容" or job.area=="燕子坞" or job.area=="曼佗罗山庄") then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务：地点【'..job.where..'】太远，任务放弃。')
       return check_bei(songxin_fangqi)
    end
    if job.area=="绝情谷" and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务：地点【'..job.where..'】门卫，任务放弃。')
       return check_bei(songxin_fangqi)
    end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('送信任务：暮色已沉，任务放弃。')
           return check_bei(songxin_fangqi)
--[[
       else
           messageShow('送信：【'..job.target..'】，直送。')
           return go(songxin_find_go,job.area,job.room)
]]
       end
    end

    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('送信任务：酒楼商铺已关门，任务放弃。')
           return check_bei(songxin_fangqi)
       end
    end

    if WhereIgnores[job.where] or AddrIgnores[dest.area] or not job.room or not path_cal() then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务：地点【'..job.where..'】不可到达，任务放弃。')
       return check_bei(songxin_fangqi)
    end

        job.name='songxin'
	job.killer={}
        job.level=0
	messageShow('送信任务：目标【'..job.target..'】，开始前往【'..job.where..'】。')
        return check_bei(songxin_find)
end
function songxin_find()
    DeleteTriggerGroup("songxin_find")
    create_trigger_t('songxin_find1','^>*\\s*\\D*'..job.target..'\\((\\D*)\\)','','songxin_send')
    create_trigger_t('songxin_find2','^>*\\s*你要送给谁','','songxin_goon')
    create_trigger_t('songxin_find3','^>*\\s*\\D*道：(这封信不是给我的，|你看清楚，)','','songxin_add')
    create_trigger_t('songxin_find4','^>*\\s*这封信不是送给这个人的。','','songxin_add')
    create_trigger_t('songxin_find5','^>*\\s*你擦了一把额头的汗，从怀中掏出信交给','','songxin_finish')
    SetTriggerOption("songxin_find1","group","songxin_find")
    SetTriggerOption("songxin_find2","group","songxin_find")
    SetTriggerOption("songxin_find3","group","songxin_find")
    SetTriggerOption("songxin_find4","group","songxin_find")
    SetTriggerOption("songxin_find5","group","songxin_find")
    EnableTriggerGroup("songxin_find",false)
    EnableTrigger("songxin_killer1",true)
    job.flag()
    flag.times=1
    fight_prepare()

	if job.area and (job.area=="姑苏慕容" or job.area=="燕子坞" or job.area=="曼佗罗山庄") then
	   return go(prepare_neili,"姑苏慕容","码头")
	elseif job.area and job.area=="神龙岛" and score.party~="神龙教" then
	   return go(prepare_neili,"神龙岛","海滩")
	else
	   return go(prepare_neili,job.area,job.room)
    end
end
function songxin_find_go()
    EnableTriggerGroup("songxin_find",true)
    job.flag()
    exe('look')
    messageShow('送信任务：开始寻找【'..dest.area .. dest.room ..'】的【'.. job.target ..'】。')
    return find()
end
function songxin_send(n,l,w)
    EnableTrigger("songxin_find1",false)
    if flag.wait==0 then
       flag.wait=1
       sxjob.cnt=1
       sxjob.id=string.lower(w[1])
       exe('hp;follow '..sxjob.id)
       checkBags()
       return checkWait(songxin_check,1)
       --return check_halt(songxin_send_act)
    end
end
function songxin_check()
    if Bag["信件"] then
       return check_halt(songxin_send_act)
    else
       return check_heal()
    end
end
function songxin_send_act()
    exe('halt;songxin '..sxjob.id)
    tmp.cnt = 0
    EnableTrigger("hp12",true)
    create_timer_s('songxin',1,'songxin_act_set')
end
function songxin_act_set()
    EnableTrigger("hp12",false)
    if tmp.cnt then
	   tmp.cnt = tmp.cnt + 1
    end
    if not tmp.cnt or tmp.cnt > 50 then
       return check_heal()
    end
    exe('halt;songxin '..sxjob.id..' '..sxjob.cnt)
end
function songxin_add()
    sxjob.cnt=sxjob.cnt + 1
    exe('halt;songxin '..sxjob.id..' '..sxjob.cnt)
    tmp.cnt = 0
	EnableTrigger("hp12",true)
    create_timer_s('songxin',1,'songxin_act_set')
end
function songxin_goon()
    EnableTrigger("songxin_find1",true)
    flag.wait=0
    DeleteTimer('songxin')
    return walk_wait()
    --thread_resume(lookfor)
end
function songxin_finish()
    dis_all()
    flag.find=1
    flag.times=1 
    locate()
    sxjob.sx2=0
    messageShow('送信任务：任务完成！')
    EnableTriggerGroup("songxin2_check",true)
	return check_bei(songxin_back,1)
end
function songxin_back()
    condition = {}
    exe('cond')
    exe('follow none;hp;alias action sx_back')
end
function songxin_killer()
    flag.find=1
    dis_all()
    exe('halt')
    EnableTrigger("songxin_killer2",true)    
end
function songxin_killer_1(n,l,w)
    EnableTrigger("songxin_killer2",false)
    EnableTrigger("songxin_killer3",true)
    sxjob.killer1=tostring(w[1])
    sxjob.killer2='杀手贰'
    sxjob.letter=0
    sxjob.id1='killer1'
    sxjob.id2='killer2'
    job.killer[sxjob.killer1]=true
    DeleteTriggerGroup("songxin_fight")
    create_trigger_t('songxin_fight1','^>*\\s*\\D*'..sxjob.killer1..'\\((\\D*)\\)','','songxin_kill_1')
    create_trigger_t('songxin_fight2','^>*\\s*(\\D*)「啪」的一声倒在地上','','songxin_kill_die')
    create_trigger_t('songxin_fight3','^>*\\s*(\\D*)神志迷糊，脚下一个不稳，倒在地上昏了过去。','','songxin_kill_faint')
    create_trigger_t('songxin_fight4','^  (\\D*)封信件','','songxin_letter')
    create_trigger_t('songxin_fight5','^>*\\s*你想攻击谁？','','songxin_kill_over')
    create_trigger_t('songxin_fight6','^>*\\s*你把 "action" 设定为 "check_letter" 成功完成。','','songxin_kill_check')
    create_trigger_t('songxin_fight7','^(> )*(\\D*)道：你躲得过初一躲不过十五，我们还会来的！','','songxin_kill_fail')
--	create_trigger_t('songxin_fight8','^>*\\s*(\\D*)已经无法战斗了。','','songxin_kill_todie')
    SetTriggerOption("songxin_fight1","group","songxin_fight") 
    SetTriggerOption("songxin_fight2","group","songxin_fight")
    SetTriggerOption("songxin_fight3","group","songxin_fight")
    SetTriggerOption("songxin_fight4","group","songxin_fight")
    SetTriggerOption("songxin_fight5","group","songxin_fight")
    SetTriggerOption("songxin_fight6","group","songxin_fight")
    SetTriggerOption("songxin_fight7","group","songxin_fight")
--    SetTriggerOption("songxin_fight8","group","songxin_fight")
    exe('look')
    exe('set wimpycmd pfmpfm\\hp;set wimpy 100')
    messageShow('送信任务：开始解决杀手壹：'..sxjob.killer1)
end
function songxin_letter(n,l,w)
    if tostring(w[1])=='一' or tostring(w[1])=='二' then
       sxjob.letter=1
    end
	--if tostring(w[1])=='二' then
    --   dis_all()
	--   return husongQuit()
    --end
end
function songxin_killer_2()
    EnableTrigger("songxin_killer3",false)
    EnableTrigger("songxin_killer4",true)
end
function songxin_killer_3(n,l,w)
    EnableTrigger("songxin_killer4",false)
    sxjob.killer2=tostring(w[1])
    job.killer[sxjob.killer2]=true
    create_trigger_t('songxin_fight7','^>*\\s*\\D*'..sxjob.killer2..'\\((\\D*)\\)','','songxin_kill_2')
    SetTriggerOption("songxin_fight7","group","songxin_fight")
    exe('look')
    messageShow('送信任务：开始解决杀手贰：'..sxjob.killer2)
end
function songxin_kill_1(n,l,w)
    sxjob.id1=string.lower(w[1])
	job.killer[sxjob.killer1]=sxjob.id1
    --exe('kill '..sxjob.id1)
	killPfm(sxjob.id1)
end
function songxin_kill_2(n,l,w)
    sxjob.id2=string.lower(w[1])
	job.killer[sxjob.killer2]=sxjob.id2
    --exe('kill '..sxjob.id2)
	killPfm(sxjob.id2)
end
function songxin_kill_faint(n,l,w)
    if w[1]==sxjob.killer1 then
       exe('fight '..sxjob.id1)
    end
    if w[1]==sxjob.killer2 then
       exe('fight '..sxjob.id2)
    end    
end
function songxin_kill_die(n,l,w)
    if w[1]==sxjob.killer1 then
       --exe('fight '..sxjob.id2)
       messageShow('送信任务：搞定杀手壹：'..sxjob.killer1)
	   --return songxinWaitKill2()
	   wait.make(function() 
          wait.time(2)
          exe('fight '.. sxjob.id2)
       end)
    end
    if w[1]==sxjob.killer2 then
       --exe('fight '..sxjob.id1)
       messageShow('送信任务：搞定杀手贰：'..sxjob.killer2)
	   --return songxinWaitKill1()
	   wait.make(function() 
          wait.time(2)
          exe('fight '.. sxjob.id1)
       end)
    end    
end
--[[
function songxin_kill_todie(n,l,w)
    if w[1]==sxjob.killer1 then
       exe('kill '..sxjob.id1)
    end
    if w[1]==sxjob.killer2 then
       exe('kill '..sxjob.id2)
    end    
end
]]
function songxin_kill_over()
    EnableTriggerGroup("songxin_killer",false)
	job.killer={}
    return check_bei(songxin_kill_get)
end
function songxin_kill_get()
    for i=1,3 do
       exe('get letter from corpse '..i)
	   if score.gold<5000 then
	      exe('get silver from corpse '..i)
	   end
    end
    weapon_unwield()
    exe('i;alias action check_letter')
end
function songxin_kill_check()
    EnableTriggerGroup("songxin_fight",false)
    if sxjob.letter==1 then
       if locl.room==job.room and locl.area==job.area then
          return songxin_find_go()
       else
          return go(songxin_find_go,job.area,job.room)
       end
    else
       return go(songxin_fangqi,'大理城','驿站')
    end
end
function songxin_kill_fail(n,l,w)
    if w[2]==sxjob.killer1 or w[2]==sxjob.killer2 then
       EnableTriggerGroup("songxin_fight",false)
	   job.killer={}
       checkBags()
       return check_halt(songxin_kill_letter)
    end
end
function songxin_kill_letter()
    if Bag["信件"] then
       return go(songxin_find_go,job.area,job.room)
    else
       return go(songxin_fangqi,'大理城','驿站')
    end
end
function songxin2_target(n,l,w)
    sxjob.killer1='杀手壹'
    sxjob.killer2='杀手贰'
    sxjob.letter=0
    sxjob.id1='killer1'
    sxjob.id2='killer2'
    sxjob.sx2=1
    job.target=tostring(w[3])
    job.where=tostring(w[2])
    create_trigger_t('songxin_find1','^>*\\s*\\D*'..job.target..'\\((\\D*)\\)','','songxin_send')
    SetTriggerOption("songxin_find1","group","songxin_find")
    EnableTriggerGroup("songxin_find",false)
end
function songxin2_level(n,l,w)
    job.level=tostring(w[2])
end
function songxin2_consider()
    EnableTriggerGroup("songxin2_check",false)
    --do return songxin2_refuse() end
    if not flag.sx2 then return songxin2_refuse() end
    if job.level==0 then return songxin2_refuse() end
    if job.zuhe["hubiao"] and (not condition.hubiao or condition.hubiao==0) then
       return songxin2_refuse()
    end

   if GetVariable("sx2joblevel") then
      sx2joblevel=GetVariable("sx2joblevel")
   else
      sx2joblevel='微不足道|马马虎虎|小有所成|融会贯通|颇为了得|极其厉害|已入化境'
      --微不足道|马马虎虎|小有所成|融会贯通|颇为了得|极其厉害|已入化境
   end

--[[
    if job.level and jobLevel[job.level] and jobLevel["songxin"] and jobLevel[job.level] >= jobLevel["songxin"] then
       messageShow('送信任务二：'.. job.target ..'的武功是【'.. job.level ..'】不可力敌，任务放弃。')
       return songxin2_refuse()
    end
]]

    if not string.find(sx2joblevel,job.level) and sxjob.sx2==1 then
       messageShow('送信任务二：【'..job.level..'】的殺手太强，放弃。')
       return songxin2_refuse()
    end

    if NpcIgnores[job.target] or sxjob.sx2==0 then
       if sxjob.sx2==1 then
          messageShow('送信任务二：目标【'..job.target..'】行踪飘忽，任务放弃。')
       end
       return check_bei(songxin2_refuse)
    end

--[[
    if string.find(job.target,"边防官兵") or sxjob.sx2==0 then
       if sxjob.sx2==1 then
          messageShow('送信任务二：目标【'..job.target..'】行踪飘忽，任务放弃。')
       end
       return check_bei(songxin2_refuse)
    end

    if string.find(sxjob.cancel,job.target) or sxjob.sx2==0 then 
       if sxjob.sx2==1 then
          messageShow('送信任务二：目标【'..job.target..'】不可送达，任务拒绝。')
       end
       return check_bei(songxin2_refuse)
    end
]]
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if score.master~="蓝凤凰" and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    if job.where~="前方高能通行禁止" or job.where~="力不从心通行禁止" then
    print('****************************************************************')
    print(job.area)
    print(job.room)
    print(job.target)
    print(job.level)
    print(sx2joblevel)
    print('****************************************************************')
    end

    if job.area=="黑木崖" then
       if score.party~="日月神教" and (hp.exp<2000000 or hp.neili_max<4000) then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(songxin2_refuse)
	elseif score.party=="日月神教" and hp.neili_max<4000 then
	   messageShowDebug('【'..job.where..'】')
	   return check_bei(songxin2_refuse)
       end
    end
    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" and score.party~="神龙教" then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务二：地点【'..job.where..'】晕船，任务拒绝。')
       return songxin2_refuse()
    end
    if job.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务二：地点【'..job.where..'】迷宫，任务拒绝。')
       return songxin2_refuse()
    end
--    if (score.party~="姑苏慕容" or score.party~="普通百姓") and (job.area=="姑苏慕容" or job.area=="燕子坞" or job.area=="曼佗罗山庄") then
    if (score.party~="姑苏慕容" or score.party~="普通百姓") and job.area=="曼佗罗山庄" then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务二：地点【'..job.where..'】太远，任务拒绝。')
       return songxin2_refuse()
    end
    if job.area=="绝情谷" and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务二：地点【'..job.where..'】门卫，任务拒绝。')
       return songxin2_refuse()
    end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('送信任务二：伊犁暮色已沉，任务放弃。')
           return songxin2_refuse()
       end
    end
	
    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('送信任务二：酒楼商铺已关门，任务放弃。')
           return songxin2_refuse()
       end
    end

    if WhereIgnores[job.where] or AddrIgnores[dest.area] or not job.room or not path_cal() then
       messageShowDebug('【'..job.where..'】')
       messageShow('送信任务二：地点【'..job.where..'】不可到达，任务拒绝。')
       return songxin2_refuse()
    end

    job.name='songxin2'
    messageShow('送信任务二：目标是【'..job.where..'】的【'..job.target..'】，杀手武功等级【'..job.level..'】。')
    return songxin2_wait()
end
function songxin2_refuse()
       songxin_triggerDel()
       exe('no')
	   if GetVariable("flagliandu") then
	      exe('get corpse')
          return check_busy(xx_Liandu)
	   else
          return go(check_heal,'柳宗镇','药房')
	   end
end
function songxin2_wait()
    EnableTriggerGroup("songxin2_killer",true)
    return prepare_neili(fight_prepare)
end
function songxin2_check(n,l,w)
    EnableTriggerGroup("songxin2_killer",false)
    sxjob.killer1=tostring(w[1])
    job.skills=tostring(w[3])
    prepare_neili_stop()
	job.killer[sxjob.killer1]=true
    if skillIgnores[job.skills] then
       messageShow('送信任务：杀手武功是【'..w[2]..'】的【'..job.skills..'】不可力敌，任务放弃。')
	   return songxin2_fangqi()
    else
       messageShow('送信任务：杀手武功是【'..w[2]..'】的【'..job.skills..'】，开始解决！')
       return songxin2_kill()
    end
end
function songxin2_fangqi()
    dis_all()
    exe('set wimpycmd halt\\'..locl.dir)
    return check_bei(songxin_fangqi_go)
end
faintFunc = faintFunc or {}
faintFunc["songxin"] = "songxin_fangqi_go"
faintFunc["songxin2"] = "songxin_fangqi_go"
function songxin_fangqi_go()
    dis_all()
    return go(songxin_fangqi,'大理城','驿站')
end
function songxin2_kill()
    DeleteTriggerGroup("songxin_fight")
    create_trigger_t('songxin_fight1','^>*\\s*\\D*'..sxjob.killer1..'\\((\\D*)\\)','','songxin_kill_1')
    create_trigger_t('songxin_fight2','^>*\\s*(\\D*)「啪」的一声倒在地上','','songxin_kill_die')
    create_trigger_t('songxin_fight3','^>*\\s*(\\D*)神志迷糊，脚下一个不稳，倒在地上昏了过去。','','songxin_kill_faint')
    create_trigger_t('songxin_fight4','^  (\\D*)封信件','','songxin_letter')
    create_trigger_t('songxin_fight5','^>*\\s*你想攻击谁？','','songxin_kill_over')
    create_trigger_t('songxin_fight6','^>*\\s*你把 "action" 设定为 "check_letter" 成功完成。','','songxin_kill_check')
    SetTriggerOption("songxin_fight1","group","songxin_fight") 
    SetTriggerOption("songxin_fight2","group","songxin_fight")
    SetTriggerOption("songxin_fight3","group","songxin_fight")
    SetTriggerOption("songxin_fight4","group","songxin_fight")
    SetTriggerOption("songxin_fight5","group","songxin_fight")
    SetTriggerOption("songxin_fight6","group","songxin_fight")
    exe('look')
	exe('set wimpycmd pfmpfm\\hp;set wimpy 100')
end

function xueshan_trigger()
    DeleteTriggerGroup("xueshan_find")
    DeleteTriggerGroup("xueshan_ask")
    create_trigger_t('xueshan_ask1',"^(> )*你向宝象打听有关",'','xueshan_ask')
    create_trigger_t('xueshan_ask2',"^(> )*这里没有这个人。$",'','xueshan_nobody')
    create_trigger_t('xueshan_ask3',"^(> )*您先歇口气再说话吧。",'','xueshan_fangqi_ask')
    SetTriggerOption("xueshan_ask1","group","xueshan_ask")
    SetTriggerOption("xueshan_ask2","group","xueshan_ask")
    SetTriggerOption("xueshan_ask3","group","xueshan_ask")
    EnableTriggerGroup("xueshan_ask",false)
    DeleteTriggerGroup("xueshan_accept")
    create_trigger_t('xueshan_accept1',"^(> )*宝象说道：「这么简单的任务你怎么可以放弃呢！快去干！」",'','xueshan_shibai')
    create_trigger_t('xueshan_accept2',"^(> )*宝象说道：「这个任务是比较困难，你完不成也不能全怪你。」",'','xueshan_fangqi_heal')
    create_trigger_t('xueshan_accept3',"^(> )*宝象说道：「我不是叫你",'','xueshan_finish')
    create_trigger_t('xueshan_accept4',"^(> )*宝象说道：「身体是革命的本钱啊，同志！你还是先歇息一会儿吧。」",'','xueshan_busy')
    create_trigger_t('xueshan_accept5',"^(> )*宝象说道：「你要累死你老祖爷爷啊！一边呆着去！」",'','xueshan_rest')
    create_trigger_t('xueshan_accept6',"^(> )*宝象在你的耳边悄声说道：听说最近(\\D*)附近来了个漂亮的小妞，你去给我弄来。",'','xueshan_consider')
    create_trigger_t('xueshan_accept7',"^(> )*宝象说道：「你根本就没任务",'','xueshan_busy')
    create_trigger_t('xueshan_accept8',"^(> )*宝象说道：「拜托，有点专业精神好不好？",'','xueshan_shibai')
    create_trigger_t('xueshan_accept9',"^(> )*宝象开始考虑是否要杀了你。",'','xueshan_busy')
    create_trigger_t('xueshan_accept10',"^(> )*宝象说道：「你好好反省一下去",'','xueshan_busyx')
	create_trigger_t('xueshan_accept11',"^(> )*宝象说道：「我看你不够心狠手辣，爷爷我不喜欢。",'','xueshan_Shen')

    SetTriggerOption("xueshan_accept1","group","xueshan_accept")
    SetTriggerOption("xueshan_accept2","group","xueshan_accept")
    SetTriggerOption("xueshan_accept3","group","xueshan_accept")
    SetTriggerOption("xueshan_accept4","group","xueshan_accept")
    SetTriggerOption("xueshan_accept5","group","xueshan_accept")
    SetTriggerOption("xueshan_accept6","group","xueshan_accept")
    SetTriggerOption("xueshan_accept7","group","xueshan_accept")
    SetTriggerOption("xueshan_accept8","group","xueshan_accept")
    SetTriggerOption("xueshan_accept9","group","xueshan_accept")
    SetTriggerOption("xueshan_accept10","group","xueshan_accept")
    SetTriggerOption("xueshan_accept11","group","xueshan_accept")

    EnableTriggerGroup("xueshan_accept",false)
    DeleteTriggerGroup("xueshan_kill")
    create_trigger_t('xueshan_kill1',"^(> )*你对着(\\D*)(一声奸笑|嘿嘿一笑|说道|猛吼|大喝|吼道|喝道|啐了一口)",'','xueshan_kill_who')
    create_trigger_t('xueshan_kill2','^(> )*(\\D*)说道：「光天化日也敢抢劫！」','','xueshan_kill_judge')
	create_trigger_t('xueshan_kill3','^(> )*你把 "action" 设定为 "fight" 成功完成。','','xueshan_fight_judge')
    create_trigger_t('xueshan_kill4','^(> )*这里没有这个人。','','xueshan_kill_nobody')
    create_trigger_t('xueshan_kill5','^(> )*(这里不准战斗。|你正要有所动作)','','xueshan_kill_nofight')
	create_trigger_t('xueshan_kill6','^(> )*看起来(\\D*)并不想跟你较量。','','xueshan_fight_unaccept')
	create_trigger_t('xueshan_kill7','^(> )*(\\D*)身子动了动，口中呻吟了几声，清醒过来。','','xueshan_faint')
    SetTriggerOption("xueshan_kill1","group","xueshan_kill")
    SetTriggerOption("xueshan_kill2","group","xueshan_kill")
    SetTriggerOption("xueshan_kill3","group","xueshan_kill")
    SetTriggerOption("xueshan_kill4","group","xueshan_kill")
    SetTriggerOption("xueshan_kill5","group","xueshan_kill")
    SetTriggerOption("xueshan_kill6","group","xueshan_kill")
    SetTriggerOption("xueshan_kill7","group","xueshan_kill")
    EnableTriggerGroup("xueshan_kill",false)
    DeleteTriggerGroup("xueshan_guard")
    create_trigger_t('xueshan_guard1',"^(> )*(京城|扬州|江南|江北|西南|中原|西北|河南|河北|东北)(镖头|大侠|捕头|护院|保镖) \\D*\\((\\D*)\\)",'','xueshan_guard_check')
    create_trigger_t('xueshan_guard2','^(> )*你把 "action" 设定为 "check_guard" 成功完成。','','xueshan_guard_look')
    SetTriggerOption("xueshan_guard1","group","xueshan_guard")
    SetTriggerOption("xueshan_guard2","group","xueshan_guard")
    EnableTriggerGroup("xueshan_guard",false)
    DeleteTriggerGroup("xueshan_judge")
    create_trigger_t('xueshan_judge1',"^(> )*这位高手似乎来自(\\D*)。",'','xueshan_judge_party')
    create_trigger_t('xueshan_judge2',"^最近治安不太好，这个保镖是特别从京城请来的，据说还曾经是大内高手呢！",'','xueshan_judge_super')
    create_trigger_t('xueshan_judge3',"^  □(竹棒|长剑|长鞭|一块铁令|钢刀|箫)\\(",'','xueshan_judge_weapon')
    create_trigger_t('xueshan_judge4','^(> )*你把 "action" 设定为 "judge_guard" 成功完成。','','xueshan_judge')
    SetTriggerOption("xueshan_judge1","group","xueshan_judge")
    SetTriggerOption("xueshan_judge2","group","xueshan_judge")
    SetTriggerOption("xueshan_judge3","group","xueshan_judge")
    SetTriggerOption("xueshan_judge4","group","xueshan_judge")
    EnableTriggerGroup("xueshan_judge",false)
    DeleteTriggerGroup("xueshan_f_ask")
    create_trigger_t('xueshan_f_ask1',"^(> )*你向宝象打听有关",'','xueshan_f_ask')
    create_trigger_t('xueshan_f_ask2',"^(> )*这里没有这个人。$",'','xueshan_f_nobody')
    SetTriggerOption("xueshan_f_ask1","group","xueshan_f_ask")
    SetTriggerOption("xueshan_f_ask2","group","xueshan_f_ask")
    EnableTriggerGroup("xueshan_f_ask",false)
    DeleteTriggerGroup("xueshan_finish")
    create_trigger_t('xueshan_finish1',"^(> )*宝象说道：「不错不错，今天又有事情干了",'','xueshan_over')
    create_trigger_t('xueshan_finish2',"^(> )*宝象说道：「你什么意思？」",'','xueshan_over')
    create_trigger_t('xueshan_finish3',"^(> )*宝象说道：「你小子没完成，就想到老祖爷爷",'','xueshan_fangqi')
    SetTriggerOption("xueshan_finish1","group","xueshan_finish")
    SetTriggerOption("xueshan_finish2","group","xueshan_finish")
    SetTriggerOption("xueshan_finish3","group","xueshan_finish")
    EnableTriggerGroup("xueshan_finish",false)
    DeleteTriggerGroup("xueshan_fight")
    create_trigger_t('xueshan_fight1','^(> )*(\\D*)「啪」的一声倒在地上，挣扎着抽动了几下就死了。','','xueshan_sa')
    create_trigger_t('xueshan_fight2','^(> )*(\\D*)神志迷糊，脚下一个不稳，倒在地上昏了过去。','','xueshan_faint')
    create_trigger_t('xueshan_fight3',"^(> )*(\\D*)(哈哈大笑，说道|双手一拱，笑着说道|胜了这招，向后跃开|向后一纵，说道|向后一纵，躬身做揖|向后退了几步，说道|脸色微变，说道：佩服，佩服)",'','xueshan_fight_over')
    create_trigger_t('xueshan_fight4','^(> )*(\\D*)已经无法战斗了。','','xueshan_faint')
    SetTriggerOption("xueshan_fight1","group","xueshan_fight")
    SetTriggerOption("xueshan_fight2","group","xueshan_fight")
    SetTriggerOption("xueshan_fight3","group","xueshan_fight")
    SetTriggerOption("xueshan_fight4","group","xueshan_fight")

    EnableTriggerGroup("xueshan_fight",false)
    DeleteTriggerGroup("xueshan_sa")
    create_trigger_t('xueshan_sa1','^(> )*你嘿嘿阴笑了几声','','xueshan_finish')
    create_trigger_t('xueshan_sa2','^(> )*你要撒谁？','','xueshan_finish_error')
    SetTriggerOption("xueshan_sa1","group","xueshan_sa") 
    SetTriggerOption("xueshan_sa2","group","xueshan_sa")
    EnableTriggerGroup("xueshan_sa",false)
end
function xueshan_triggerDel()
    DeleteTriggerGroup("xueshan_find")
    DeleteTriggerGroup("xueshan_ask")
    DeleteTriggerGroup("xueshan_accept")
    DeleteTriggerGroup("xueshan_kill")
    DeleteTriggerGroup("xueshan_guard")
    DeleteTriggerGroup("xueshan_judge")
    DeleteTriggerGroup("xueshan_f_ask")
    DeleteTriggerGroup("xueshan_finish")
    DeleteTriggerGroup("xueshan_fight")
    DeleteTriggerGroup("xueshan_sa")
end
job.list["xueshan"] = "雪山抢美女"
function xueshan_Shen()
--    return turnShen('-')
	   if score.party and score.party=="星宿派" then
	      return turnShen('-')
	   else
	      return check_Xqw(xueshan)
	   end
end
function xueshan()
--[[
    if hp.shen>=0 then
	return turnShen('-')
    end
]]
    if hp.shen>=0 then
	   if score.party and score.party=="星宿派" then
	      return turnShen('-')
	   else
	      return check_Xqw(xueshan)
	   end
	end

    xueshan_trigger()
    job.name='xueshan'
    job.time.b=os.time()
    job.flag()
    flag.xueshan=1
    job.target='任务目标'
    return prepare_lianxi(xueshan_start)
end
jobFindAgain = jobFindAgain or {}
jobFindAgain["xueshan"] = "xueshanFindAgain"
jobFindFail = jobFindFail or {}
jobFindFail["xueshan"] = "xueshanFindFail"
function xueshanFindAgain()
    EnableTriggerGroup("xueshan_find",false)
    return go(xueshan_find_act,dest.area,dest.room)
end
function xueshanFindFail()
    messageShowDebug('寻找失败：【'..job.where..'】')
    EnableTriggerGroup("xueshan_find",false)
    return check_bei(xueshan_fangqi_go)
end
function xueshan_start()
    return go(job_xueshan,'大雪山','入幽口')
end
function job_xueshan()
    DeleteTriggerGroup("check_job")
    EnableTriggerGroup("xueshan_ask",true)
    exe('cond')
    exe('ask bao xiang about job')
--    messageShow('雪山任务：任务开始。')
end
function xueshan_ask()
    EnableTriggerGroup("xueshan_ask",false)
    EnableTriggerGroup("xueshan_accept",true)
end
function xueshan_nobody()
    EnableTriggerGroup("xueshan_ask",false)
    xueshan_start()
end
function xueshan_busy()
    EnableTriggerGroup("xueshan_accept",false)

    if (condition.xueshan and condition.xueshan>15) or (condition.busy and condition.busy>15) then
       return check_halt(xueshan_busy_dazuox,2)
    else
       wait.make(function()
           wait.time(4)
	    job_xueshan()
       end)
    end

end
function xueshan_busyx()
    EnableTriggerGroup("xueshan_accept",false)
    prepare_neili_stop()
    exe('cond')
    return check_halt(xueshan_busy_dazuox,2)
end
function xueshan_busy_dazuox()
    if score.party and (score.party=="大轮寺" or score.party=="星宿派" or score.party=="神龙教") then
       exe('eu;ed;se;e;s')
    else
       exe('eu;ed;se;e;n')
    end
    if not condition.busy or condition.busy == 0 then
        if not condition.xueshan or condition.xueshan == 0 then
	     exe('yun qi;dazuo '..hp.dazuo)
             return check_busy(xueshan_start,2)
        else
             return prepare_lianxix(xueshan_start,1)
        end
    else
             return prepare_lianxi(xueshan_start,1)
        end
end
function xueshan_busy_dazuo()
    prepare_neili(xueshan_start,1)
end
faintFunc = faintFunc or {}
faintFunc["xueshan"] = "xueshan_fangqi_go"
function xueshan_fangqi_go()
    go(xueshan_fangqi,'大雪山','入幽口')
end
function xueshan_fangqi()
    EnableTriggerGroup("xueshan_finish",false)
    EnableTriggerGroup("xueshan_accept",false)
    check_bei(xueshan_fangqi_ask)
end
function xueshan_fangqi_ask()
    EnableTriggerGroup("xueshan_ask",true)
    fight_prepare()
	wait.make(function() 
          wait.time(2)
          exe('ask bao xiang about 放弃')
       end)
end
function xueshan_shibai()
    EnableTriggerGroup("xueshan_accept",false)
    check_bei(xueshan_shibai_ask)
end
function xueshan_shibai_ask()
    EnableTriggerGroup("xueshan_ask",true)
	wait.make(function() 
          wait.time(2)
          exe('ask bao xiang about 失败')
       end)
end
function xueshan_fangqi_heal()
    EnableTriggerGroup("xueshan_accept",false)
--    return xueshan()
    wait.make(function()
         wait.time(4)
	    xueshan()
    end)
end
function xueshan_rest()
    flag.idle = 0
    EnableTriggerGroup("xueshan_accept",false)
    job.last = "xueshan"
    return check_heal()
end
function xueshan_finish()
    EnableTriggerGroup("xueshan_accept",false)
    EnableTriggerGroup("xueshan_sa",false)
	for i=1,3 do
        exe('get gold from corpse '.. i)
        exe('get silver from corpse '.. i)
    end
    if GetVariable("flagliandu") then
	   exe('get corpse')
	end
    flag.times=1
    go(xueshan_finish_ask,'大雪山','入幽口')
end
function xueshan_finish_error()
    EnableTriggerGroup("xueshan_sa",false)
    xueshan_fangqi_go()
    messageShow('雪山任务：杀完保镖找不到美女了，任务放弃。')
end
function xueshan_finish_ask()
    EnableTriggerGroup("xueshan_accept",false)
    EnableTriggerGroup("xueshan_f_ask",true)
    exe('ask bao xiang about finish')
end
function xueshan_f_ask()
    EnableTriggerGroup("xueshan_f_ask",false)
    EnableTriggerGroup("xueshan_finish",true)
end
function xueshan_f_nobody()
    EnableTriggerGroup("xueshan_f_ask",false)
    xueshan_finish()
end
function xueshan_over()
    EnableTriggerGroup("xueshan_finish",false)
    messageShow('雪山任务：任务完成！')
	if GetVariable("flagliandu") then
       return check_busy(xx_Liandu)
	else
       return check_bei(check_heal)
	end
end
function xueshan_consider(n,l,w)
    EnableTriggerGroup("xueshan_accept",false)
    job.where=tostring(w[2])
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if score.master~="蓝凤凰" and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    if job.where~="前方高能通行禁止" or job.where~="力不从心通行禁止" then
    print('**********************************************')
    print(job.area)
    print(job.room)
    print('**********************************************')
    end

    if job.area=="黑木崖" then
       if score.party~="日月神教" and (hp.exp<2000000 or hp.neili_max<4000) then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(xueshan_fangqi)
	elseif score.party=="日月神教" and hp.neili_max<4000 then
	   messageShowDebug('【'..job.where..'】')
	   return check_bei(xueshan_fangqi)
       end
    end
    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" and score.party~="神龙教" then
       check_bei(xueshan_fangqi)
       messageShowDebug('【'..job.where..'】')
       messageShow('雪山任务：地点【'..job.where..'】晕船，任务放弃。')
       return
    end
    if job.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       check_bei(xueshan_fangqi)
       messageShowDebug('【'..job.where..'】')
       messageShow('雪山任务：地点【'..job.where..'】迷宫，任务放弃。')
       return
    end
--    if (score.party~="姑苏慕容" or score.party~="普通百姓") and (job.area=="姑苏慕容" or job.area=="燕子坞" or job.area=="曼佗罗山庄") then
    if (score.party~="姑苏慕容" or score.party~="普通百姓") and job.area=="曼佗罗山庄" then
       check_bei(xueshan_fangqi)
       messageShowDebug('【'..job.where..'】')
       messageShow('雪山任务：地点【'..job.where..'】太远，任务放弃。')
       return
    end
    if job.area=="绝情谷" and hp.exp<1500000 then
       check_bei(xueshan_fangqi)
       messageShowDebug('【'..job.where..'】')
       messageShow('雪山任务：地点【'..job.where..'】门卫，任务放弃。')
       return
    end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('雪山任务：伊犁暮色已沉，任务放弃。')
           return check_bei(xueshan_fangqi)
       end
    end
	
    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('雪山任务：酒楼商铺已关门，任务放弃。')
           return check_bei(xueshan_fangqi)
       end
    end
	
    if WhereIgnores[job.where] or AddrIgnores[dest.area] or not job.room or not path_cal() then
       check_bei(xueshan_fangqi)
       messageShowDebug('【'..job.where..'】')
       messageShow('雪山任务：地点【'..job.where..'】不可到达，任务放弃。')
       return
    end
    job.last="xueshan"
    job.name="xueshan"
    messageShow('雪山任务：任务开始。')
    check_bei(xueshan_find)
    messageShow('雪山任务：前往【'..job.where..'】，寻找美女！')
end
function xueshan_find()
    DeleteTriggerGroup("xueshan_find")
    create_trigger_t('xueshan_find1','^\\s*\\D*(格格|公主|小姐|姑娘|夫人|郡主)\\(Beauty\\)','','xueshan_look')
    create_trigger_t('xueshan_find2','^(> )*你要看什么？','','xueshan_goon')
    create_trigger_t('xueshan_find3','^看来就是血刀老祖要求(\\D*)\\(\\D*\\)强抢的美女。','','xueshan_add')
    create_trigger_t('xueshan_find4','^(> )*这里没有 beauty','','xueshan_goon')
    create_trigger_t('xueshan_find5','^(> )*你决定跟随\\D*一起行动。','','xueshan_guard')
    create_trigger_t('xueshan_find6','^(> )*你已经这样做了。','','xueshan_guard')
    SetTriggerOption("xueshan_find1","group","xueshan_find")
    SetTriggerOption("xueshan_find2","group","xueshan_find")
    SetTriggerOption("xueshan_find3","group","xueshan_find")
    SetTriggerOption("xueshan_find4","group","xueshan_find")
    SetTriggerOption("xueshan_find5","group","xueshan_find")
    SetTriggerOption("xueshan_find6","group","xueshan_find")
    EnableTriggerGroup("xueshan_find",false)
    flag.times=1
    exe('set wimpycmd pfmpfm\\hp;set wimpy 100')
    check_bei(xueshan_find_go)
end
function xueshan_find_go()
    go(xueshan_find_act,job.area,job.room)
end
function xueshan_find_act()
    EnableTriggerGroup("xueshan_find",true)
    job.flag()
    exe('look')
	messageShow('雪山任务：开始寻找【'..dest.area .. dest.room ..'】的美女！')
    return find()
end
function xueshan_look()
    EnableTrigger("xueshan_find1",false)
    if flag.wait==0 then
       flag.wait=1
       job.cnt=1
       exe('hp;look beauty')
    end
end
function xueshan_add(n,l,w)
    if w[1]==score.name then
       exe('follow beauty '.. job.cnt)
    else
       job.cnt=job.cnt + 1
       exe('look beauty '.. job.cnt)
    end
end
function xueshan_goon()
    EnableTrigger("xueshan_find1",true)
    flag.wait=0
    flag.find=0
    return walk_wait()
end
function xueshan_fight()
    if tmp.kill then
	   return
	end
    EnableTriggerGroup("xueshan_find",false)
    EnableTriggerGroup("xueshan_kill",true)
    EnableTriggerGroup("xueshan_fight",true)
    job.guard = job.guard or {}
	fight_prepare()
	messageShow('雪山任务：开始Fight保镖【'..job.target..'】！')
    for i=1,3 do
       exe('fight guard '.. i)
    end
	exe('alias action fight')
end
function xueshan_fight_unaccept(n,l,w)
    job.guard[w[2]]=nil
end
function xueshan_fight_judge()
    EnableTriggerGroup("xueshan_kill",false)
    if countTab(job.guard)==1 then
	   EnableTriggerGroup("xueshan_fight",true)
	   for p in pairs(job.guard) do
	       job.target = p
		   create_timer_s('xsfight',3,'xueshan_fight')
	   end
	else
	   return check_bei(xueshan_kill,1)
	end
end
function xueshan_fight_over(n,l,w)
    if w[2]==job.target or w[2]=="你" then
	   DeleteTimer('xsfight')
	   return check_bei(xueshan_fight,2)
    else
	   DeleteTimer('xsfight')
           return checkWait(xueshan_fight,2)
    end
end
--[[
function xueshan_fight_over(n,l,w)
    if w[2]==job.target or w[2]=="你" then
	   DeleteTimer('xsfight')
	   EnableTrigger("xueshan_fight3",false)
	   return checkWait(xueshan_fight,3)
	end
end
]]
function xueshan_kill_act()
    for i=1,3 do
       exe('kill guard '.. i)
    end
end
function xueshan_kill()
    EnableTriggerGroup("xueshan_find",false)
    EnableTriggerGroup("xueshan_kill",true)
    job.guard={}
	DeleteTimer('xsfight')
    for i=1,3 do
       exe('kill guard '.. i)
    end
end
function xueshan_kill_who(n,l,w)
    job.guard[w[2]]=true
end
function xueshan_kill_judge(n,l,w)
    for i=1,countTab(job.guard) do
        if job.guard[w[2]] and w[2]~= "白衣武士" and w[2]~= "红衣武士" and w[2]~= "青衣武士" then
	       job.target=w[2]
	       dis_all()
	       EnableTriggerGroup("xueshan_kill",false)
	       EnableTriggerGroup("xueshan_fight",true)
	       break
	    end
    end
end
function xueshan_kill_nobody()
    EnableTriggerGroup("xueshan_kill",false)
    EnableTriggerGroup("xueshan_find",false)
    if flag.xueshan > 1 then
	   messageShow('雪山任务：美女没有保镖，任务放弃。')
       return check_bei(xueshan_fangqi_go)
    else
       flag.xueshan = flag.xueshan + 1
	   if tmp.kill then
	      return xueshan_sa_act()
	   else
          return check_bei(xueshan_find_go)
	   end
    end
end
function xueshan_kill_nofight()
    for i=1,3 do
       exe('ask guard '.. i ..' about fight')
    end
    return check_bei(xueshan_judge,1)
end
function xueshan_faint(n,l,w)
    if w[2]==job.target then
       tmp.kill=true
       DeleteTimer('xsfight')
       messageShow('雪山任务：开始解决保镖【'..job.target..'】！')
       for i=1,3 do
          exe('kill guard '.. i)
       end
    end
end
function xueshan_sa(n,l,w)
    if job.target==w[2] then
       tmp.kill=true
       EnableTriggerGroup("xueshan_fight",false)
       messageShow('雪山任务：搞定保镖【'..job.target..'】！')
       return check_bei(xueshan_sa_act,1)
    end
end
function xueshan_sa_act()
       EnableTriggerGroup("xueshan_sa",true)
       for i=1,3 do
          exe('sa beauty '.. i)
       end
end
function xueshan_guard()
    EnableTriggerGroup("xueshan_find",false)
    EnableTriggerGroup("xueshan_guard",true)
    flag.wait=0
    flag.find=1
    wait.make(function()
       wait.time(1)
          xueshan_guard_go()
       end)
end
function xueshan_guard_go()
    locate()
    exe('look;alias action check_guard')
end
function xueshan_guard_check(n,l,w)
end
function xueshan_guard_look()
    EnableTriggerGroup("xueshan_guard",false)
    EnableTriggerGroup("xueshan_judge",true)
    flag.idle = 0
    exe('look guard;alias action judge_guard')
    job.weapon='unarmed'
end
function xueshan_judge_party(n,l,w)
    job.party=w[2]
end
function xueshan_judge_super()
    tmp.super=true
end
function xueshan_judge_weapon(n,l,w)
    if w[1]=='竹棒' then
       job.weapon='stick'
    elseif w[1]=='长剑' then
       job.weapon='sword'
    elseif w[1]=='钢刀' then
       job.weapon='blade'
    elseif w[1]=='长鞭' then
       job.weapon='whip'
    elseif w[1]=='箫' then
       job.weapon='xiao'
    elseif w[1]=='一块铁令' then
       job.weapon='dagger'
    elseif w[1]=='钢杖' then
       job.weapon='staff'
    else
       job.weapon='unarmed'
    end
 end
function xueshan_judge()
    EnableTriggerGroup("xueshan_judge",false)
    job.skill='无'
    messageShow('雪山任务：保镖来自【'..job.party..'】，with 【'..job.weapon..'】！')
    if hp.exp>9400000 and job.party and job.party=='武当' and job.weapon=='unarmed' and tmp.super then
       messageShow('雪山任务：遇到太极拳高手，任务放弃。')
	   return xueshan_fangqi_go()
    end
    if job.party and job.party=='古墓派' and job.weapon=='unarmed' then
       messageShow('雪山任务：遇到黯然销魂掌高手，任务放弃。')
	   return xueshan_fangqi_go()
    end
    if job.party and job.party=='丐帮' and job.weapon=='stick' then
       messageShow('雪山任务：遇打狗棒法高手，任务放弃。')
	   return xueshan_fangqi_go()
    end
    if score.party and (score.party == '大轮寺' or score.party == '嵩山派' or score.party =='星宿派') and job.party and job.party=='武当' and job.weapon=='sword' then
       messageShow('雪山任务：大轮寺遇到太极剑高手，任务放弃。')
	   return xueshan_fangqi_go()
    end
--    if score.party and score.party == '星宿派' and tmp.super then
--       messageShow('雪山任务：星宿遇到大内高手，任务放弃。')
--	   return xueshan_fangqi_go()
--    end
    if job.party and job.party=='星宿派' and job.weapon=='staff' and tmp.super then
       messageShow('雪山任务：遇到天山杖法高手，任务放弃。')
	   return xueshan_fangqi_go()
    end
--    if job.party and job.party=='全真教' and job.weapon=='sword' then
--       messageShow('雪山任务：遇到全真剑法高手，任务放弃。')
--	   return xueshan_fangqi_go()
--    end
--    if job.party and job.party=='少林派' and job.weapon=='whip' then
--       messageShow('雪山任务：遇日月鞭法高手，任务放弃。')
--	   return xueshan_fangqi_go()
--    end
--    if score.party and score.party == '星宿派' and job.party=='峨嵋' and job.weapon=='blade' then
--       messageShow('雪山任务：星宿遇到峨嵋高手，任务放弃。')
--	   return xueshan_fangqi_go()
--    end
--    if job.party and job.party=='大理天龙寺' and job.weapon=='whip' then
--       messageShow('雪山任务：遇到慈航鞭高手，任务放弃。')
--	   return xueshan_fangqi_go()
--    end
--    if job.party and job.party=='桃花岛' and job.weapon=='xiao' and tmp.super then
--       messageShow('雪山任务：遇到桃花岛玉箫剑法高手，任务放弃。')
--	   return xueshan_fangqi_go()
--    end
--    if job.party and job.party=='华山' and job.weapon=='sword' and tmp.super then
--       messageShow('雪山任务：遇到华山派疑似独孤九剑高手，任务放弃。')
--	   return xueshan_fangqi_go()
--    end
	if locl.id["白衣武士"] or locl.id["红衣武士"] or locl.id["青衣武士"] then
	   EnableTriggerGroup("xueshan_guard",false)
	   return wipe("wei shi",xueshan_guard)
	end
	for p in pairs(dangerousNpc) do
	    if locl.id[p] then
	       EnableTriggerGroup("xueshan_guard",false)
	       return wipe(locl.id[p],xueshan_guard)
		end
	end
	if tmp.super then
	   messageShow('雪山任务：遇到大内高手。')
	end
	job.guard = {}
	
	local autokill = {
	          ["tangshi-jianfa"] = true,
	          ["hujia-daofa"] = true,
	          ["xuanyin-jianfa"] = true,
		  ["wuhu-duanmendao"] = true,
		  ["dagou-bang"] = true,
		  ["yuxiao-jian"] = true,
                  ["chousui-zhang"] = true,
                  ["tanzhi-shentong"] = true,
                  ["longzhua-gong"] = true,
                  ["yingou-bifa"] = true,
                  ["yiyang-zhi"] = true,
                  ["yitian-tulong"] = true,
                  ["tianshan-zhang"] = true,
        }
	
	fight_prepare()

--	if perform.skill and autokill[perform.skill] then
	if not tmp.super and perform.skill and autokill[perform.skill] then
           messageShow('雪山任务：战无不胜，攻无不克的毛泽东思想万岁，冲啊')
	   return checkWait(xueshan_kill,2)
	end
	
	if GetVariable("flagkill") then
	   flag.kill = tonumber(GetVariable("flagkill"))
	end
	if flag.kill and flag.kill==1 then
           messageShow('雪山任务：宁可前进一步死，不可后退半步生，殺啊')
           return checkWait(xueshan_kill,2)
	end
	
	return create_timer_s('xsfight',2,'xueshan_fight')
	--return checkWait(xueshan_fight,2)
	--else
    --   return check_bei(xueshan_kill)
    --end
end

--gaibang
function gaibangTrigger()
    DeleteTriggerGroup("gaibangAsk")
    create_trigger_t('gaibangAsk1',"^(> )*你向吴长老打听有关",'','gaibangAsk')
    create_trigger_t('gaibangAsk2',"^(> )*这里没有这个人。$",'','gaibangNobody')
    SetTriggerOption("gaibangAsk1","group","gaibangAsk")
    SetTriggerOption("gaibangAsk2","group","gaibangAsk")
    EnableTriggerGroup("gaibangAsk",false)
    DeleteTriggerGroup("gaibangAccept")
    create_trigger_t('gaibangAccept1',"^(> )*吴长老说道：「好吧，最近「(\\D*)」一直和我丐帮作对",'','gaibangTarget')
    create_trigger_t('gaibangAccept2',"^(> )*\\s*此人现在在(\\D*)一带",'','gaibangConsider')
    create_trigger_t('gaibangAccept3',"^(> )*吴长老说道：「既然你干不了也没关系",'','gaibangFail')
    create_trigger_t('gaibangAccept4',"^(> )*吴长老说道：「你连上个任务去都不想去",'','gaibangFail')
    create_trigger_t('gaibangAccept5',"^(> )*吴长老说道：「现在我可没有给你的任务，等会再来吧！",'','gaibangBusy')
    create_trigger_t('gaibangAccept6',"^(> )*吴长老说道：「你没有领任务",'','gaibang')
    create_trigger_t('gaibangAccept7',"^(> )*吴长老说道：「没看见我正忙着吗",'','gaibangWait')
    create_trigger_t('gaibangAccept8',"^(> )*吴长老说道：「不是让你去杀",'','gaibangFangqiGo')
    create_trigger_t('gaibangAccept9',"^(> )*吴长老说道：「现在我可没有给你的任务，等会怎么样？",'','gaibangFail')
    create_trigger_t('gaibangAccept10',"^(> )*吴长老说道：「现在我这里没有给你的任务，你去其他地方看看吧？」",'','gaibangFail')
    SetTriggerOption("gaibangAccept1","group","gaibangAccept")
    SetTriggerOption("gaibangAccept2","group","gaibangAccept")
    SetTriggerOption("gaibangAccept3","group","gaibangAccept")
    SetTriggerOption("gaibangAccept4","group","gaibangAccept")
    SetTriggerOption("gaibangAccept5","group","gaibangAccept")
    SetTriggerOption("gaibangAccept6","group","gaibangAccept")
    SetTriggerOption("gaibangAccept7","group","gaibangAccept")
    SetTriggerOption("gaibangAccept8","group","gaibangAccept")
    SetTriggerOption("gaibangAccept9","group","gaibangAccept")
    SetTriggerOption("gaibangAccept10","group","gaibangAccept")
    EnableTriggerGroup("gaibangAccept",false)
    DeleteTriggerGroup("gaibangFight")
    create_trigger_t('gaibangFight1','^(> )*(\\D*)「啪」的一声倒在地上','','gaibangDie')
    create_trigger_t('gaibangFight2','^(> )*(\\D*)神志迷糊，脚下一个不稳，倒在地上昏了过去。','','gaibangFaint')
    create_trigger_t('gaibangFight3','^(> )*(\\D*)急急忙忙地离开了。','','gaibangRun')
    create_trigger_t('gaibangFight4','^(> )*这里没有可使用的对象。','','gaibangNoTarget')
    SetTriggerOption("gaibangFight1","group","gaibangFight")
    SetTriggerOption("gaibangFight2","group","gaibangFight")
    SetTriggerOption("gaibangFight3","group","gaibangFight")
    SetTriggerOption("gaibangFight4","group","gaibangFight")
    EnableTriggerGroup("gaibangFight",false)
    DeleteTriggerGroup("gaibangCut")
    create_trigger_t('gaibangCut1','^>*\\s*只听“咔”的一声，你将(\\D*)的首级斩了下来，提在手中。','','gaibangCutCon')
    create_trigger_t('gaibangCut2','^>*\\s*你得用件锋利的器具才能切下这尸体的头来。','','gaibangCutWeapon')
    create_trigger_t('gaibangCut3','(> )*你把 "action" 设定为 "Cut" 成功完成。','','gaibangCutFail')
    SetTriggerOption("gaibangCut1","group","gaibangCut") 
    SetTriggerOption("gaibangCut2","group","gaibangCut")
    SetTriggerOption("gaibangCut3","group","gaibangCut")
    EnableTriggerGroup("gaibangCut",false)
    DeleteTriggerGroup("gaibangGive")
    create_trigger_t('gaibangGive1','^(> )*你给吴长老一颗(\\D*)的首级。','','gaibangFinish')
    create_trigger_t('gaibangGive2','^(> )*吴长老说道：「嘿嘿。。。，你杀错人了。」','','gaibangFinish')
    create_trigger_t('gaibangGive3','^(> )*吴长老说道：「我现在正忙着呢，你稍等一下吧。」','','gaibangGiveBusy')
    SetTriggerOption("gaibangGive1","group","gaibangGive")
    SetTriggerOption("gaibangGive2","group","gaibangGive")
    SetTriggerOption("gaibangGive3","group","gaibangGive")
    EnableTriggerGroup("gaibangGive",false)
    DeleteTriggerGroup("gaibangHead")
    create_trigger_t('gaibangHead1','^(> )*这是一颗(\\D*)的(首级|人头)','','gaibangHeadCheck')
    create_trigger_t('gaibangHead2','^(> )*你把 "action" 设定为 "check_head" 成功完成。','','gaibangHeadCon')
    SetTriggerOption("gaibangHead1","group","gaibangHead")
    SetTriggerOption("gaibangHead2","group","gaibangHead")
    EnableTriggerGroup("gaibangHead",false)
end
function gaibangTriggerDel()
    DeleteTriggerGroup("gaibangAsk")
    DeleteTriggerGroup("gaibangAccept")
    DeleteTriggerGroup("gaibangFight")
    DeleteTriggerGroup("gaibangCut")
    DeleteTriggerGroup("gaibangGive")
    DeleteTriggerGroup("gaibangHead")
    DeleteTriggerGroup("gaibangFind")
end
function gaibangNobody()
    EnableTriggerGroup("gaibangAsk",false)
    gaibang()
end

job.list["gbwu"] = "丐帮吴长老"

function gaibang()
    gaibangTrigger()
    job.name='gaibang'
    job.time.b=os.time()
    prepare_neili(gaibangGo)
end
function gaibangGo()
    --go(gaibangStart,"丐帮","大信分舵")
    go(gaibangStart,"福州城","船舱")
end
function gaibangStart()
    EnableTriggerGroup("gaibangAsk",true)
    exe('ask wu zhanglao about job')
end
function gaibangAsk()
    EnableTriggerGroup("gaibangAsk",false)
    EnableTriggerGroup("gaibangAccept",true)
end
function gaibangBusy()
    EnableTriggerGroup("gaibangAccept",false)
    if condition.busy and condition.busy==0 then
       job.last='gaibang'
       return check_heal()
    else
       check_bei(gaibangBusyDazuo)
    end
end
function gaibangBusyDazuo()
    exe('out')
    prepare_lianxiz(gaibangBusyStart)
end
function gaibangBusyStart()
    exe('enter')
    gaibangStart()
end
function gaibangWait()
    EnableTriggerGroup("gaibangAccept",false)
    if job.name=='fangqi' then
       check_bei(gaibangFangqi)
    else
       check_bei(gaibangStart)
    end
end
function gaibangTarget(n,l,w)
    job.target=Trim(w[2])
    job.killer={}
    job.killer[job.target]=true
end
function gaibangConsider(n,l,w)
    EnableTriggerGroup("gaibangAccept",false)
    job.last='gaibang'
    job.where=Trim(w[2])
    job.where=addrTrim(job.where)
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       job.where="前方高能通行禁止"
    end
    if (score.party~="日月神教" and score.master~="蓝凤凰") and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    print(dest.area)
    print(dest.room)

    if job.area=="黑木崖" then
       if score.party~="日月神教" and (hp.exp<2000000 or hp.neili_max<4000) then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(gaibangfangqi)
	elseif score.party=="日月神教" and hp.neili_max<4000 then
	   messageShowDebug('【'..job.where..'】')
	   return check_bei(gaibangFangqi)
       end
    end
    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" and score.party~="神龙教" then
       check_bei(gaibangFangqi)
       messageShow('丐帮任务：任务地点【'..job.where..'】晕船，任务放弃。')
       return
    end
    if dest.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       check_bei(gaibangFangqi)
       messageShow('丐帮任务：任务地点【'..job.where..'】迷宫，任务放弃。')
       return
    end
    if (score.party~="姑苏慕容" or score.party~="普通百姓") and (dest.area=="姑苏慕容" or dest.area=="燕子坞" or dest.area=="曼佗罗山庄") then
       check_bei(gaibangFangqi)
       messageShow('丐帮任务：任务地点【'..job.where..'】太远，任务放弃。')
       return
    end
    if dest.area=="绝情谷" and hp.exp<1500000 then
       check_bei(gaibangFangqi)
       messageShow('丐帮任务：任务地点【'..job.where..'】门卫，任务放弃。')
       return
    end

    if string.find(gaibangCancel,job.target) then
       check_bei(gaibangFangqi)
       messageShow('丐帮任务：任务目标【'..job.target..'】不可到达，任务放弃。')
       return 0
    end
    if not job.room or not path_cal() then
       check_bei(gaibangFangqi)
       messageShow('丐帮任务：任务地点【'..job.where..'】不可到达，任务放弃。')
       return
    end
    check_bei(gaibangFind)
    messageShow('丐帮任务：开始前往【'..job.where..'】，寻找任务NPC：【'..job.target..'】。！')
end
function gaibangFangqi()
    EnableTriggerGroup("gaibangAsk",true)
    job.name='fangqi'
    exe('ask wu zhanglao about 放弃')
end
function gaibangFangqiGo()
    EnableTriggerGroup("gaibangAccept",false)
--    go(gaibangFangqi,'丐帮','大信分舵')
    go(gaibangFangqi,'福州城','船舱')
end
function gaibangFind()
    DeleteTriggerGroup("gaibangFind")
    create_trigger_t('gaibangFind1','^>*\\s*\\D*'..job.target..'\\((\\D*)\\)','','gaibangFight')
    SetTriggerOption("gaibangFind1","group","gaibangFind")
    EnableTriggerGroup("gaibangFind",false)
    flag.times=1
    fight_prepare()
    go(gaibangFindAct,job.area,job.room)    
end
function gaibangFindAct()
    EnableTriggerGroup("gaibangFind",true)
    job.flag()
    exe('look')
    find()
    messageShow('丐帮任务：开始寻找【'..dest.area .. dest.room ..'】的任务NPC：【'..job.target..'】。！')
end
function gaibangFight(n,l,w)
    EnableTriggerGroup("gaibangFind",false)
    EnableTriggerGroup("gaibangFight",true)
    flag.wait=0
    flag.find=1
    thread_resume(lookfor)
    job.id=string.lower(w[1])
    job.killer[job.target]=job.id
    exe('halt;follow '..job.id)
    --exe('kill '..job.id)
    killPfm(job.id)
end
function gaibangFaint(n,l,w)
    if job.target==w[2] then
       exe('kill '..job.id)
    end
end
function gaibangDie(n,l,w)
    if job.target==w[2] then
       DeleteTimer('perform')
       gaibangCut()
    end
end
function gaibangRun(n,l,w)
    EnableTriggerGroup("gaibangFight",false)
    if job.target==w[2] then
       check_bei(gaibangFind)
    end
end
function gaibangNoTarget()
    EnableTriggerGroup("gaibangFight",false)
    check_bei(gaibangFind)
end
function gaibangCut()
    EnableTriggerGroup("gaibangFight",false)
    messageShow('丐帮任务：搞定任务NPC：【'..job.target..'】。')
    check_bei(gaibangCutAct)
end
gaibangCutAct=function()
    EnableTriggerGroup("gaibangCut",true)
    exe('halt')
    weapon_unwield()
    weaponWieldCut()
    for i=1,3 do
       exe('qie corpse '..i)
    end
    exe('alias action Cut')
end
gaibangCutFail=function()
    EnableTriggerGroup("gaibangCut",false)
    gaibangFind()
end
gaibangCutWeapon=function()
    weapon_unwield()
    gaibangCutAct()
end
gaibangCutCon=function(n,l,w)
    if job.target~=tostring(w[1]) then
       exe('drop head')
       check_bei(gaibangCutAct)
    else
       EnableTriggerGroup("gaibangCut",false)
       return check_bei(gaibangBack)
    end
end
function gaibangBack()
    weapon_unwield()
    for i=1,2 do
       exe('get gold from corpse '..i)
       exe('get silver from corpse '..i)
    end
--    go(gaibangHead,'丐帮','大信分舵')
    go(gaibangHead,'福州城','船舱')
end
function gaibangHead()
    EnableTriggerGroup("gaibangHead",true)
    tmp.flag=0
    exe('look head')
    exe('alias action check_head')
end
function gaibangHeadCheck(n,l,w)
    if w[2] == job.target then
       tmp.flag=1
    end
end
function gaibangHeadCon()
    EnableTriggerGroup("gaibangHead",false)
    if tmp.flag==1 then
       gaibangGive()
    else
       gaibangFinish()
    end
end
function gaibangGive()
    EnableTriggerGroup("gaibangGive",true)
    exe('give wu head')
end
function gaibangGiveBusy()
    EnableTriggerGroup("gaibangGive",false)
    checkWait(gaibangGive)
end
function gaibangFail()
--  if job.last=='gaibang' then
    EnableTriggerGroup("gaibangAccept",false)
    job.name='fangqi'
    job.last='gaibang'
    gaibangFinish()
--  else
--    gaibangBusy()
--  end
end

function gaibangFinish()
    EnableTriggerGroup("gaibangAccept",false)
    EnableTriggerGroup("gaibangGive",false)
    checkWait(check_heal,3)
end

function zhuosheTrigger()
    DeleteTriggerGroup("zhuosheAsk")
    create_trigger_t('zhuosheAsk1',"^(> )*你向陈长老打听有关",'','zhuosheAsk')
    create_trigger_t('zhuosheAsk2',"^(> )*这里没有这个人。$",'','zhuosheNobody')
    SetTriggerOption("zhuosheAsk1","group","zhuosheAsk")
    SetTriggerOption("zhuosheAsk2","group","zhuosheAsk")
    EnableTriggerGroup("zhuosheAsk",false)
    DeleteTriggerGroup("zhuosheAccept")
    create_trigger_t('zhuosheAccept1',"^(> )*陈长老说道：你去(\\D*)附近帮我捉条蛇回来吧！",'','zhuosheConsider')
    create_trigger_t('zhuosheAccept2',"^(> )*陈长老说道：「你帮不了我，那你就去练功吧。以后我再找你。」",'','zhuosheFail')
    create_trigger_t('zhuosheAccept3',"^(> )*陈长老暂时不想抓蛇，你过一会儿再来吧。",'','zhuosheBusy')
    create_trigger_t('zhuosheAccept4',"^(> )*陈长老说道：「刚才不是让你帮我抓蛇去了吗，你怎么还不去",'','zhuosheFangqiGo')
    create_trigger_t('zhuosheAccept5',"^(> )*陈长老说道：「什么放弃？放什么弃？",'','check_heal')
    create_trigger_t('zhuosheAccept6',"^(> )*陈长老说道：「你手头还有其他的事吧？过一会再来吧！",'','zhuosheBusy')
    create_trigger_t('zhuosheAccept7',"^(> )*陈长老说道：「你刚抓完蛇，还是先去休息一会吧。",'','zhuosheFail')
    SetTriggerOption("zhuosheAccept1","group","zhuosheAccept")
    SetTriggerOption("zhuosheAccept2","group","zhuosheAccept")
    SetTriggerOption("zhuosheAccept3","group","zhuosheAccept")
    SetTriggerOption("zhuosheAccept4","group","zhuosheAccept")
    SetTriggerOption("zhuosheAccept5","group","zhuosheAccept")
    SetTriggerOption("zhuosheAccept6","group","zhuosheAccept")
    SetTriggerOption("zhuosheAccept7","group","zhuosheAccept")
    EnableTriggerGroup("zhuosheAccept",false)
    DeleteTriggerGroup("zhuosheFind")
    create_trigger_t('zhuosheFind1','^(> )*突然你发现草丛中有一条蛇。','','zhuosheTarget')
    SetTriggerOption("zhuosheFind1","group","zhuosheFind")
    EnableTriggerGroup("zhuosheFind",false)
    DeleteTriggerGroup("zhuosheFight")
    create_trigger_t('zhuosheFight1','^(> )*(\\D*)「啪」的一声倒在地上','','zhuosheBack')
    create_trigger_t('zhuosheFight2','^(> )*(\\D*)缩成一团，不动了。你伸手抓了起来。','','zhuosheBack')
    create_trigger_t('zhuosheFight3','^(> )*你决定跟随(\\D*)一起行动。','','zhuosheName')
    SetTriggerOption("zhuosheFight1","group","zhuosheFight")
    SetTriggerOption("zhuosheFight2","group","zhuosheFight")
    SetTriggerOption("zhuosheFight3","group","zhuosheFight")
    EnableTriggerGroup("zhuosheFight",false)
    DeleteTriggerGroup("zhuosheFinish")
    create_trigger_t('zhuosheFinish1','^(> )*陈长老从你手里接过蛇，转身装进一个口袋里。','','zhuosheFinish')
    create_trigger_t('zhuosheFinish2',"^(> )*陈长老说道：「这么简单的事都办不好，你下去吧",'','zhuosheFinish')
    SetTriggerOption("zhuosheFinish1","group","zhuosheFinish")
    SetTriggerOption("zhuosheFinish2","group","zhuosheFinish")
    EnableTriggerGroup("zhuosheFinish",false)
end
function zhuosheTriggerDel()
    DeleteTriggerGroup("zhuosheAsk")
    DeleteTriggerGroup("zhuosheAccept")
    DeleteTriggerGroup("zhuosheFind")
    DeleteTriggerGroup("zhuosheFight")
    DeleteTriggerGroup("zhuosheFinish")
end
function zhuosheNobody()
    EnableTriggerGroup("zhuosheAsk",false)
    zhuoshe()
end
job.list["zhuoshe"] = function() if score.party and score.party == "丐帮" then return "丐帮捉蛇" else return false end end
function zhuoshe()
    zhuosheTrigger()
    job.name='zhuoshe'
    job.time.b=os.time()
    prepare_neili(zhuosheGo)
end
function zhuosheGo()
    go(zhuosheStart,"丐帮","空地")
end
function zhuosheStart()
    EnableTriggerGroup("zhuosheAsk",true)
    exe('ask chen zhanglao about job')
end
function zhuosheAsk()
    EnableTriggerGroup("zhuosheAsk",false)
    EnableTriggerGroup("zhuosheAccept",true)
end
function zhuosheBusy()
    EnableTriggerGroup("zhuosheAccept",false)
    check_bei(zhuosheBusyDazuo)
end
function zhuosheBusyDazuo()
    prepare_lianxiz(zhuosheStart)
end
function zhuosheFail()
    EnableTriggerGroup("zhuosheAccept",false)
    job.last='zhuoshe'
    check_bei(zhuosheDan)
end
function zhuosheWait()
    EnableTriggerGroup("zhuosheAccept",false)
    if job.name=='fangqi' then
       check_bei(zhuosheFangqi)
    else
       check_bei(zhuosheStart)
    end
end
function zhuosheConsider(n,l,w)
    EnableTriggerGroup("zhuosheAccept",false)
    job.last='zhuoshe'
    job.where=Trim(w[2])
    job.where=addrTrim(job.where)
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       job.where="前方高能通行禁止"
    end
    if job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    print(dest.area)
    print(dest.room)

    if job.area=="黑木崖" then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(zhuosheFangqi)
    end
    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" then
       check_bei(zhuosheFangqi)
       messageShow('捉蛇任务：任务地点【'..job.where..'】晕船，任务放弃。')
       return
    end
    if dest.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       check_bei(zhuosheFangqi)
       messageShow('捉蛇任务：任务地点【'..job.where..'】迷宫，任务放弃。')
       return
    end
    if dest.area=="曼佗罗山庄" then
       check_bei(zhuosheFangqi)
       messageShow('捉蛇任务：任务地点【'..job.where..'】太远，任务放弃。')
       return
    end
    if dest.area=="绝情谷" and hp.exp<1500000 then
       check_bei(zhuosheFangqi)
       messageShow('捉蛇任务：任务地点【'..job.where..'】门卫，任务放弃。')
       return
    end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShow('捉蛇任务：伊犁暮色已沉，任务放弃。')
           return check_bei(zhuosheFangqi)
       end
    end
	
    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('捉蛇任务：酒楼商铺已关门，任务放弃。')
           return check_bei(zhuosheFangqi)
       end
    end
	
    if not job.room or not path_cal() then
       check_bei(zhuosheFangqi)
       messageShow('捉蛇任务：任务地点【'..job.where..'】不可到达，任务放弃。')
       return
    end
    check_bei(zhuosheFind)
    messageShow('捉蛇任务：开始前往【'..job.where..'】！')
end
function zhuosheFangqiGo()
    go(zhuosheFangqi,'丐帮','空地')
end
function zhuosheFangqi()
    EnableTriggerGroup("zhuosheAsk",true)
    job.name='fangqi'
    exe('ask chen zhanglao about 放弃')
end
function zhuosheFind()
    EnableTriggerGroup("zhuosheFind",true)
    flag.times=1
    fight_prepare()
    go(zhuosheFindAct,job.area,job.room)    
end
function zhuosheFindAct()
    EnableTriggerGroup("zhuosheFind",true)
    job.flag()
    exe('look')
    find()
    messageShow('捉蛇任务：开始寻找【'..dest.area .. dest.room ..'】的毒蛇！')
end
function zhuosheName(n,l,w)
    job.target=Trim(w[2])
    job.killer={}
    job.killer[job.target]="du she"
end
function zhuosheTarget()
    dis_all()
    zhuosheFight()
end
function zhuosheFight()
    EnableTriggerGroup("zhuosheFind",false)
    EnableTriggerGroup("zhuosheFight",true)
    flag.wait=0
    flag.find=1
    thread_resume(lookfor)
    job.id='du she'
    exe('follow '..job.id)
    killPfm(job.id)
end
function zhuosheFaint(n,l,w)
    if job.target==w[2] then
       exe('kill '..job.id)
    end
end
function zhuosheBack(n,l,w)
    if job.target==w[2] then
       EnableTriggerGroup("zhuosheFight",false)
       EnableTriggerGroup("zhuosheFinish",true)
       DeleteTimer('perform')
       exe('halt;fu bai caodan')
       messageShow('捉蛇任务：搞定毒蛇！')
       return go(zhuosheReady,'丐帮','空地')
    end
end
function zhuosheReady()
    exe('e;w')
    checkWait(zhuosheReadyWait,2)
end
function zhuosheReadyWait()
    exe('e;w')
    checkWait(zhuosheReadyFail,2)
end
function zhuosheReadyFail()
    exe('e;w')
    checkWait(zhuosheFangqi,2)
end
function zhuosheFinish()
    EnableTriggerGroup("zhuosheFinish",false)
    dis_all()
    check_bei(zhuosheDan)
end
function zhuosheDan()
    exe('ask chen zhanglao about 百草丹')
    check_bei(zhuosheFudan)
end
function zhuosheFudan()
    exe('fu bai caodan')
    check_bei(zhuosheDan2)
end
function zhuosheDan2()
    exe('ask chen zhanglao about 百草丹')
    check_bei(check_heal)
end

function wudangTrigger()
    DeleteTriggerGroup("wudangAsk")
    create_trigger_t('wudangAsk1',"^(> )*你向宋远桥打听有关",'','wudangAsk')
    create_trigger_t('wudangAsk2',"^(> )*这里没有这个人。$",'','wudangNobody')
    SetTriggerOption("wudangAsk1","group","wudangAsk")
    SetTriggerOption("wudangAsk2","group","wudangAsk")
    EnableTriggerGroup("wudangAsk",false)
    DeleteTriggerGroup("wudangAccept")
    create_trigger_t('wudangAccept1',"^(> )*宋远桥在你的耳边悄声说道：据说(江南|江北|西南|中原|西北|河南|河北|东北)(草寇|寨主|恶霸|山贼|土匪|飞贼|盗贼)(\\D*)正在(\\D*)捣乱",'','wudangWhere')
    create_trigger_t('wudangAccept2',"^(> )*宋远桥说道：「我不是告诉你了吗，有人在",'','wudangFangqi')
    create_trigger_t('wudangAccept3',"^(> )*宋远桥在你的耳边悄声说道(\\D*)尤为擅长(\\D*)的功夫。",'','wudangNpc')
    create_trigger_t('wudangAccept4',"^(> )*宋远桥说道：「你正忙着别的事情呢",'','wudangFailX')
    create_trigger_t('wudangAccept5',"^(> )*宋远桥说道：「你刚做完(武当锄奸|惩恶扬善|大理送信|长乐帮)任务",'','wudangFailX')
    create_trigger_t('wudangAccept6',"^(> )*宋远桥说道：「现在暂时没有适合你的工作",'','wudangFailZ')
    create_trigger_t('wudangAccept7',"^(> )*宋远桥说道：「暂时没有任务需要做，你过一会儿再来吧",'','wudangFailZ')
    create_trigger_t('wudangAccept8',"^(> )*宋远桥(对你|)说道：(「|)\\D*，(这个任务确实比较难完成|你太让我失望了)",'','wudangFailZ')
    create_trigger_t('wudangAccept9',"^(> )*宋远桥说道：「\\D*，你又没在我这里领任务，瞎放弃什么呀",'','wudangFailX')
    create_trigger_t('wudangAccept10',"^(> )*宋远桥说道：「现在我这里没有给你的任务，你还是先处理好你其他事情再说吧",'','wudangFailZ')
    create_trigger_t('wudangAccepta',"^(> )*宋远桥在你的耳边悄声说道：此人的武功(\\D*)，",'','wudangLevel')
    create_trigger_t('wudangAcceptb',"^(> )*宋远桥说道：「你快去快回，一切小心啊。」$",'','wudangConsider')
    create_trigger_t('wudangAcceptc',"^(> )*你觉得有点什么不对劲, 可是你却说不上来",'','wudangFailX')
    SetTriggerOption("wudangAccept1","group","wudangAccept")
    SetTriggerOption("wudangAccept2","group","wudangAccept") 
    SetTriggerOption("wudangAccept3","group","wudangAccept")
    SetTriggerOption("wudangAccept4","group","wudangAccept")
    SetTriggerOption("wudangAccept5","group","wudangAccept")
    SetTriggerOption("wudangAccept6","group","wudangAccept")
    SetTriggerOption("wudangAccept7","group","wudangAccept")
    SetTriggerOption("wudangAccept8","group","wudangAccept")
    SetTriggerOption("wudangAccept9","group","wudangAccept")
    SetTriggerOption("wudangAccept10","group","wudangAccept")
    SetTriggerOption("wudangAccepta","group","wudangAccept")
    SetTriggerOption("wudangAcceptb","group","wudangAccept")
    SetTriggerOption("wudangAcceptc","group","wudangAccept")
    EnableTriggerGroup("wudangAccept",false)
    DeleteTriggerGroup("wudangFight")
    create_trigger_t('wudangFight1','^(> )*(\\D*)「啪」的一声倒在地上','','wudangBack')
    create_trigger_t('wudangFight2','^(> )*(\\D*)大喊一声：不好！！转身几个起落就不见了','','wudangBack')
    create_trigger_t('wudangFight3',"^(> )*这里没有(\\D*)。",'','wudangLost')
    create_trigger_t('wudangFight4',"^(> )*(\\D*)对着你发出一阵阴笑，说道",'','wudangKillAct')
    create_trigger_t('wudangFight5',"^(> )*(\\D*)大喊一声：老子不奉陪了！转身几个起落就不见了",'','wudangBack')
    SetTriggerOption("wudangFight1","group","wudangFight")
    SetTriggerOption("wudangFight2","group","wudangFight")
    SetTriggerOption("wudangFight3","group","wudangFight")
    SetTriggerOption("wudangFight4","group","wudangFight")
    SetTriggerOption("wudangFight5","group","wudangFight")
    EnableTriggerGroup("wudangFight",false)
    DeleteTriggerGroup("wudangFinish")
    create_trigger_t('wudangFinish1','^(> )*宋远桥对着你竖起了右手大拇指，好样的。','','wudangFinishT')
    create_trigger_t('wudangFinish2',"^(> )*宋远桥被你气得昏了过去。",'','wudangFinish')
    create_trigger_t('wudangFinish3',"^(> )*宋远桥说道：「"..score.name.."你怎么搞的，居然让那恶贼给跑了",'','wudangFinish')
    create_trigger_t('wudangFinish4',"^(> )*宋远桥说道：「"..score.name.."你怎么搞的，任务都没做,我看你是捣乱来了",'','wudangFangqi')
    SetTriggerOption("wudangFinish1","group","wudangFinish")
    SetTriggerOption("wudangFinish2","group","wudangFinish")
    SetTriggerOption("wudangFinish3","group","wudangFinish")
    SetTriggerOption("wudangFinish4","group","wudangFinish")
    EnableTriggerGroup("wudangFinish",false)
    DeleteTriggerGroup("wudangQuest")
    create_trigger_t('wudangQuest1',"^(> )*宋远桥说道：「".. score.name ..",今日是师傅九十寿辰之日,往常都是我们七个师兄弟集齐向师傅拜寿。",'','wudangQuest')
    SetTriggerOption("wudangQuest1","group","wudangQuest")
    EnableTriggerGroup("wudangQuest",false)
end
function wudangTriggerDel()
    DeleteTriggerGroup("wudangAsk")
    DeleteTriggerGroup("wudangAccept")
    DeleteTriggerGroup("wudangFight")
    DeleteTriggerGroup("wudangFinish")
    DeleteTriggerGroup("wudangFind")
    DeleteTriggerGroup("wudangQuest")
end
function wudangNobody()
    EnableTriggerGroup("wudangAsk",false)
    wudang()
end
job.list["wudang"] ="武当杀恶贼"
function wudang()
    if hp.shen<0 then
	   return turnShen('+')
	end
    wudangTrigger()
    job.name='wudang'
    job.time.b=os.time()
	if jobLevel and jobLevel["wdlvl"] and jobLevel["wdlvl"] < hp.pot_max - 95 then
	   jobLevel["wudang"] = 10
	   jobLevel["wdlvl"] = hp.pot_max - 100
	end
    return prepare_lianxi(wudangGo)
end

jobFindAgain = jobFindAgain or {}
jobFindAgain["wudang"] = "wudangFindAgain"
jobFindFail = jobFindFail or {}
jobFindFail["wudang"] = "wudangFindFail"

function wudangFindAgain()
    EnableTriggerGroup("wudangFind",false)
    return go(wudangFindAct,dest.area,dest.room)
end
faintFunc = faintFunc or {}
faintFunc["wudang"] = "wudangFaint"
function wudangFaint()
    jobLevel = jobLevel or {}
	if job.level and jobLevel[job.level] and jobLevel["wudang"] and jobLevel["wudang"]>jobLevel[job.level] then
	   jobLevel["wudang"] = jobLevel[job.level]
	   if jobLevel["wudang"] and jobLevel["wudang"] < 5 then
	      jobLevel["wudang"] = 5
	   end
	   jobLevel["wdlvl"] = hp.pot_max - 100
	end
    return wudangFindFail()
end
function wudangFindFail()
    EnableTriggerGroup("wudangFind",false)
    messageShowDebug('寻找失败：【'..job.where..'】')
    messageShow('武当任务：没有找到【'..dest.area .. dest.room ..'】的'..'【'.. job.target ..'】！')
    return go(wudangFangqiMaybe,"武当山","三清殿")
end
function wudangGo()
    return go(wudangStart,"武当山","三清殿")
end
function wudangStart()
    EnableTriggerGroup("wudangAsk",true)
    return exe('ask song yuanqiao about job')
end
function wudangAsk()
    EnableTriggerGroup("wudangAsk",false)
    EnableTriggerGroup("wudangAccept",true)
end
function wudangBusy()
    EnableTriggerGroup("wudangAccept",false)
    job.last='wudang'
    return check_bei(wudangBusyDazuo)
end
function wudangBusyDazuo()
    exe('n')
    return prepare_lianxiz(check_heal)
end
function wudangFail()
    EnableTriggerGroup("wudangAccept",false)
    flag.idle = 0
    job.wdtime=os.time() + 5*60
--    return check_heal()
    wait.make(function()
         wait.time(3)
	 check_heal()
    end)
end
function wudangFailX()
    EnableTriggerGroup("wudangAccept",false)
    flag.idle = 0
    job.wdtime=os.time() + 5*60
    return prepare_lianxiz(wudangStart)
end
function wudangFailZ()
    EnableTriggerGroup("wudangAccept",false)
    DeleteTriggerGroup("wudangAsk")
    DeleteTriggerGroup("wudangAccept")
    flag.idle = 0
    job.wdtime=os.time() + 5*60
    if job.last and job.last=="huashan" then
            flag.sx2=true
	    return check_busy(songxin)
    elseif job.last and (job.last=="songxin" or job.last=="wudang") then
	    return check_busy(huashan)
    else
	    return check_busy(wudang)
    end
end
function wudangWhere(n,l,w)
    job.target=Trim(w[4])
    job.killer={}
    job.killer[job.target]=true
    job.where=Trim(w[5])
	job.level = nil
	job.wdtime=os.time() + 8*60
	--Note(job.where)
	if string.find(job.where,"周围") then
	   local l_cnt = string.find(job.where,"周围")
	   job.where=string.sub(job.where,1,l_cnt-1)
	   --Note(job.where)
	end
    --job.where=addrTrim(job.where)
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if score.master~="蓝凤凰" and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    if type(job.room)=="string" and string.find(job.room,"字门") then
       job.room="紫杉林"
    end
end
function wudangNpc(n,l,w)
    job.skills=tostring(w[3])
end
function wudangLevel(n,l,w)
    job.level = tostring(w[2])
end
function wudangConsider()
    EnableTriggerGroup("wudangAccept",false)

--[[
   if GetVariable("wdjoblevel") then
      wdjoblevel=GetVariable("wdjoblevel")
   else
      wdjoblevel='颇为了得|极其厉害|已入化境'
   end
]]

    if job.where~="前方高能通行禁止" or job.where~="力不从心通行禁止" then
    print('**********************************************')
    print(job.area)
    print(job.room)
    print(job.target)
    print(job.skills)
    if job.level then print(job.level) end
    print('**********************************************')
    end

    if job.area=="黑木崖" then
       if score.party~="日月神教" and (hp.exp<2000000 or hp.neili_max<4000) then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(wudangFangqi)
	elseif score.party=="日月神教" and hp.neili_max<4000 then
	   messageShowDebug('【'..job.where..'】')
	   return check_bei(wudangFangqi)
       end
    end

    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" and score.party~="神龙教" then
       messageShowDebug('【'..job.where..'】')
       messageShow('武当任务：任务地点【'..job.where..'】晕船，任务放弃。')
       return check_bei(wudangFangqi)
    end

    if job.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       messageShowDebug('【'..job.where..'】')
       messageShow('武当任务：任务地点【'..job.where..'】迷宫，任务放弃。')
       return check_bei(wudangFangqi)
    end

--    if (score.party~="姑苏慕容" or score.party~="普通百姓") and (job.area=="姑苏慕容" or job.area=="燕子坞" or job.area=="曼佗罗山庄") then
    if (score.party~="姑苏慕容" or score.party~="普通百姓") and job.area=="曼佗罗山庄" then
       messageShowDebug('【'..job.where..'】')
       messageShow('武当任务：任务地点【'..job.where..'】太远，任务放弃。')
       return check_bei(wudangFangqi)
    end

    if job.area=="绝情谷" and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       messageShow('武当任务：任务地点【'..job.where..'】门卫，任务放弃。')
       return check_bei(wudangFangqi)
    end
    if WhereIgnores[job.where] or AddrIgnores[dest.area] or not job.room or not path_cal() then
       messageShowDebug('【'..job.where..'】')
       messageShow('武当任务：任务地点【'..job.where..'】不可到达，任务放弃。')
       return check_bei(wudangFangqi)
    end
--[[
	if skillIgnores[job.skills] and hp.exp<9400000 then
           messageShow('武当任务：'.. job.target ..'使用的武功【'..job.skills..'】不可力敌，任务放弃。')
	   return check_bei(wudangFangqi)
	end
]]
	if skillIgnores[job.skills] then
           messageShow('武当任务：'.. job.target ..'使用的武功【'..job.skills..'】不可力敌，任务放弃。')
	   return check_bei(wudangFangqi)
	end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('武当任务：伊犁暮色已沉，任务放弃。')
           return check_busy(wudangFangqi)
       end
    end
	
    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('武当任务：酒楼商铺已关门，任务放弃。')
           return check_busy(wudangFangqi)
       end
    end
	
--[[
    if not string.find(wdjoblevel,job.level) then
       messageShow('武当任务：【'..job.level..'】的'.. job.target ..'太强，任务放弃。')
       return check_bei(wudangFangqi)
    end
]]
	if job.level and jobLevel[job.level] and jobLevel["wudang"] and jobLevel[job.level] >= jobLevel["wudang"] then
	   messageShow('武当任务：'.. job.target ..'的武功【'.. job.level ..'】不可力敌，任务放弃。')
	   return check_bei(wudangFangqi)
	end
	
    messageShow('武当任务：开始前往【'..job.where..'】！')
    return check_bei(wudangFind)
end
function wudangFangqiGo()
    return go(wudangFangqi,'武当山','三清殿')
end
function wudangFangqi()
    EnableTriggerGroup("wudangAccept",false)
    return check_bei(wudangFangqiAsk)
end
function wudangFangqiAsk()
    EnableTriggerGroup("wudangAsk",true)
    exe('ask song yuanqiao about 放弃')
end
function wudangFangqiMaybe()
	if locl.id["宋远桥"] then
	   EnableTriggerGroup("wudangFinish",true)
	   return check_busy(wudangFinishAsk)
	else
	   return go(wudangFangqiMaybe,'武当山','三清殿')
	end
end
function wudangFind()
    DeleteTriggerGroup("wudangFind")
    create_trigger_t('wudangFind1','^(> )*\\D*'..job.target..'\\((\\D*)\\)','','wudangTarget')
    --create_trigger_t('wudangFind2',"^(> )*".. job.target .."对着你发出一阵阴笑，说道",'','wudangFindKill')
    SetTriggerOption("wudangFind1","group","wudangFind")
    --SetTriggerOption("wudangFind2","group","wudangFind")
    --EnableTrigger("wudangFind1",false)
    flag.times=1
    flag.robber=false
    exe('unset wimpy')
    return go(wudangFindAct,job.area,job.room)
end
function wudangFindAct()
    EnableTriggerGroup("wudangFind",true)
    DeleteTimer("wudang")
    job.flag()
    fight_prepare()
    exe('look')
    find()
    messageShow('武当任务：开始寻找【'..dest.area .. dest.room ..'】的'..'【'.. job.target ..'】！')
end
function wudangFindKill()
    dis_all()
    flag.robber=true
    EnableTriggerGroup("wudangFind",true)
    exe('look')
end
function wudangTarget(n,l,w)
    EnableTriggerGroup("wudangFind",false)
    dis_all()
    EnableTriggerGroup("wudangFight",true)
    job.id=string.lower(w[2])
    job.killer[job.target]=job.id
    exe('follow '..job.id)
	exe('kick '..job.id)
    --if flag.robber then
       wudangKill()
    --else
      create_timer_s('wudang',5,'wudangMove')
    --end
end
function wudangMove()
    --EnableTriggerGroup("wudangFight",false)
    --DeleteTimer("wudang")
	if job.id then
	   exe('kick '..job.id)
	   exe('kill '..job.id)
	end
    --exe(locl.dir)
    --wudangFind()
end
function wudangLost(n,l,w)
    if job.id==Trim(w[2]) then
       dis_all()
       return wudangFind()
    end
end
function wudangKill()
    wait.make(function()
         wait.time(2)
	 wudangKillAct()
    end)
end
function wudangKillAct()
    --DeleteTimer("wudang")
    flag.robber=true
    exe('kick '..job.id)
    killPfm(job.id)
end
function wudangBack(n,l,w)
    DeleteTimer("wudang")
    if w[2]==job.target then
       EnableTriggerGroup("wudangFight",false)
       EnableTriggerGroup("wudangFinish",true)
       tmp.number=0
       DeleteTimer("perform")
	   DeleteTimer("wudang")
       check_bei(wudangBackGet)
       messageShow('武当任务：搞定'..'【'.. job.target ..'】！')
    end
end
function wudangBackGet()
    for i=1,2 do
       exe('get gold from corpse '..i)
    end
    return go(wudangFinishWait,'武当山','三清殿')
end
function wudangFinishWait()
	if locl.id["宋远桥"] then
	   EnableTriggerGroup("wudangFinish",true)
	   EnableTriggerGroup("wudangQuest",true)
	   return check_busy(wudangFinishAsk)
	   --exe('ask song yuanqiao about 完成')
	else
	   return go(wudangFinishWait,'武当山','三清殿')
	end
end
function wudangFinishAsk()
    exe('ask song yuanqiao about 完成')
end
function wudangFinishT()
    job.wdtime=0
    return wudangFinish()
end
function wudangFinish()
    EnableTriggerGroup("wudangFinish",false)
    --tmp.number=0
    return check_bei(check_heal)
end
function wudangQuest()
    SetVariable("timeyttl",os.date())
end

--gblu
function gbluTrigger()
    DeleteTriggerGroup("gbluTeam")
    create_trigger_t('gbluTeam1',"^(> )*如果你愿意加入，请用 team with (\\D*)。$",'','gbluTeam')
    create_trigger_t('gbluTeam2',"^(> )"..job.teamname.."决定加入你的队伍。",'','gbluTeamMeet')
    create_trigger_t('gbluTeam3',"^(> )你想和谁一起布阵？",'','gbluTeamFail')
    create_trigger_t('gbluTeam4',"^(> )*如果你愿意加入，请用\\s*lineup\\s*with\\s*(\\D*)。$",'','gbluTeamLineup')
    create_trigger_t('gbluTeam5',"^(> )"..job.teamname.."决定加入你的阵法。",'','gbluTeamLineupMeet')
    create_triggerex_lvl('gbluTeam6',"^(> )*【队伍】(\\D*)\\((\\D*)\\)：gblu start",'','gbluTeamStart',95)
    SetTriggerOption("gbluTeam1","group","gbluTeam")
    SetTriggerOption("gbluTeam2","group","gbluTeam")
    SetTriggerOption("gbluTeam3","group","gbluTeam")
    SetTriggerOption("gbluTeam4","group","gbluTeam")
    SetTriggerOption("gbluTeam5","group","gbluTeam")
    SetTriggerOption("gbluTeam6","group","gbluTeam")
    DeleteTriggerGroup("gbluAsk")
    create_trigger_t('gbluAsk1',"^(> )*你向鲁有脚打听有关",'','gbluAsk')
    create_trigger_t('gbluAsk2',"^(> )*这里没有这个人。$",'','gbluNobody')
    SetTriggerOption("gbluAsk1","group","gbluAsk")
    SetTriggerOption("gbluAsk2","group","gbluAsk")
    EnableTriggerGroup("gbluAsk",false)
    DeleteTriggerGroup("gbluAccept")
    create_trigger_t('gbluAccept1',"^(> )*鲁有脚说道：「我丐帮弟子易大彪已经潜入蒙古军中，你可去襄阳北门等他，",'','gbluCisha')
    create_trigger_t('gbluAccept2',"^(> )*鲁有脚说道：「颂摩崖是西夏武士东来的必经之地，你速带几名弟子埋",'','gbluYpt')
    create_trigger_t('gbluAccept3',"^(> )*鲁有脚说道：「您上次任务辛苦了，还是先休息一下再说吧。",'','gbluBusy')
    create_trigger_t('gbluAccept4',"^(> )*鲁有脚说道：「这个任务我已经交给",'','gbluBusy')
    create_trigger_t('gbluAccept5',"^(> )*鲁有脚说道：「我这里现在没有什么任务可以给你。",'','gbluBusy')
    create_trigger_t('gbluAccept6',"^(> )*鲁有脚说道：「你不是已经接过任务了吗？",'','gbluBusy')
    SetTriggerOption("gbluAccept1","group","gbluAccept")
    SetTriggerOption("gbluAccept2","group","gbluAccept")
    SetTriggerOption("gbluAccept3","group","gbluAccept")
    SetTriggerOption("gbluAccept4","group","gbluAccept")
    SetTriggerOption("gbluAccept5","group","gbluAccept")
    SetTriggerOption("gbluAccept6","group","gbluAccept")
    EnableTriggerGroup("gbluAccept",false)
    DeleteTriggerGroup("gbluWait")
    create_trigger_t('gbluWait1','^(> )*易大彪带着你混过了蒙古大军的几道岗哨，来到','','gbluFight')
    SetTriggerOption("gbluWait1","group","gbluWait")
    EnableTriggerGroup("gbluWait",false)
    DeleteTriggerGroup("gbluFight")
    create_trigger_t('gbluFight1','^(> )*你的「转字诀」运行完毕，气回丹田，缓缓收功。','','gbluFightCheck')
    create_trigger_t('gbluFight2','^(> )*中军侍卫说道：「大胆！！！」','','gbluFightFresh')
    SetTriggerOption("gbluFight1","group","gbluFight")
    SetTriggerOption("gbluFight2","group","gbluFight")
    EnableTriggerGroup("gbluFight",false)
    DeleteTriggerGroup("gbluFinish")
    create_trigger_t('gbluFinish1','^(> )*你趁着混乱冲出了元军大营。','','gbluFinish')
    create_triggerex_lvl('gbluFinish2',"^(> )*粘而帖神志迷糊，脚下一个不稳，倒在地上昏了过去。",'','gbluGet',98)
    create_trigger_t('gbluFinish3',"^(> )*你见敌人越来越多，情知今日难以成功，退意暗生，",'','gbluFail')
    SetTriggerOption("gbluFinish1","group","gbluFinish")
    SetTriggerOption("gbluFinish2","group","gbluFinish")
    SetTriggerOption("gbluFinish3","group","gbluFinish")
    EnableTriggerGroup("gbluFinish",false)
    DeleteTriggerGroup("yptFight")
    create_triggerex_lvl('yptFight1','^看起来一品堂武士想杀死你！','','yptFightCheck',98)
    create_trigger_t('yptFight2','^(> )*'..job.teamname..'对着一品堂武士(大喝|吼道|喝道|啐了一口)','','yptFightCheck')
    SetTriggerOption("yptFight1","group","yptFight")
    SetTriggerOption("yptFight2","group","yptFight")
    EnableTriggerGroup("yptFight",false)
end
function gbluTriggerDel()
    DeleteTriggerGroup("gbluAsk")
    DeleteTriggerGroup("gbluAccept")
    DeleteTriggerGroup("gbluWait")
    DeleteTriggerGroup("gbluFight")
    DeleteTriggerGroup("gbluFinish")
    DeleteTriggerGroup("yptFight")
end
function gbluNobody()
    EnableTriggerGroup("gbluAsk",false)
    gblu()
end
job.list["gblu"] = function() if score.party and score.party == "丐帮" and hp.exp>500000 and hp.exp<2000000 then return "丐帮刺杀" else return false end end
function gblu()
    gbluTrigger()
    job.name='gblu'
    job.time.b=os.time()
    job.teamname = job.teamname or "teamname"
    job.teamid = MudUser[job.teamname]
    job.teamid = job.teamid or "teamid"
    if not job.teamlead or job.teamlead=="" or job.teamlead==" " then job.teamlead=score.name end
    if hp.exp>2000000 then
       if job.teamname and job.teamname ~= score.name and job.gbluteam and not job.gblustart then
          return checkJob()
       end
       if job.teamname and job.teamlead == score.name then
          exe('tt gblu start')
       end
       if job.teamid and job.teamid~="teamid" then
          return go(gbluPre,"襄阳城","药房")
       else
          job.zuhe["gblu"] = nil
	  return check_heal()
       end
    else
       return go(gbluBusyDazuo,"丐帮","土地庙")
    end
end
function gbluPre()
    if os.time()-job.time.b>1800 then
       job.zuhe["gblu"]=nil
       return check_job()
    end
    locate()
    checkWait(gbluTeamWait,3)
end
function gbluTeam(n,l,w)
    if job.teamlead and job.teamlead==job.teamname and w[2]==job.teamid then
       exe('team dismiss')
       exe('team with '..job.teamid)
       job.gbluteam = true
       job.gblustart = nil
       dis_all()
       exe('halt')
       messageShow('报效国家：开始前往【星宿海颂摩崖】！')
       return go(gbluSmyWait,"星宿海","颂摩崖")
    end
end
function gbluTeamStart(n,l,w)
    if w[2]==job.teamname and job.teamname~=score.name then 
       job.gblustart = true
    end
end
function gbluTeamLineup(n,l,w)
    if job.teamlead and job.teamlead==job.teamname and w[2]==job.teamid then
       exe('lineup dismiss')
       exe('lineup with '..job.teamid)
       EnableTriggerGroup("yptFight",true)
    end
end
function gbluTeamLineupMeet()
    EnableTriggerGroup("yptFight",true)
    return yptFightCon()
end
function gbluTeamMeet()
    if locl.room=="药房" then
       dis_all()
       exe('halt')
       return go(gbluStart,"丐帮","土地庙")
    end
end
function gbluTeamWait()
    if locl.area~="襄阳城" or locl.room~="药房" then
       return gbluGo()
    end
    if locl.id[job.teamname] and score.name==job.teamlead then
       exe('team dismiss')
       exe('team with '.. job.teamid)
    else
       return prepare_lianxiz(gbluPre)
    end
end
function gbluSmyWait()
    if locl.area~="星宿海" or locl.room~="颂摩崖" then
       return go(gbluSmyWait,"星宿海","颂摩崖")
    end
    EnableTriggerGroup("yptFight",true)
    EnableTriggerGroup("gbluTeam",true)
    if job.teamlead and job.teamlead==score.name then
       if locl.id[job.teamname] then
          exe('lineup dismiss')
          exe('lineup form wuxing-zhen')
          exe('lineup with '.. job.teamid)
       else
          exe('halt;n')
          return check_heal()
       end
    end
end
function gbluStart()
    local l_result=false
    local l_min=os.time()%900
    local l_distance=l_min-job.time["refresh"]
    
    if l_distance<0 then l_distance=l_distance*-1 end
    if l_distance<200 or l_distance>700 then l_result=true end
    if not l_result and score.party and score.party=="丐帮" and hp.exp<2000000 then
       return checkJob()
    end

    EnableTriggerGroup("gbluAsk",true)
    exe('ask lu youjiao about 报效国家')
end
function gbluAsk()
    EnableTriggerGroup("gbluAsk",false)
    EnableTriggerGroup("gbluAccept",true)
end
function gbluBusy()
    EnableTriggerGroup("gbluAccept",false)
    checkJob()
end
function gbluBusyDazuo()
    prepare_lianxi(gbluStart)
end
function gbluCisha()
    EnableTriggerGroup("gbluAccept",false)
    job.last="gblu"
    go(gbluWait,"襄阳城","玄武门内街")
    messageShow('报效国家：开始前往【襄阳城玄武门】！')
end
function gbluYpt()
    EnableTriggerGroup("gbluAccept",false)
    job.last="gblu"
    go(gbluSmyWait,"星宿海","颂摩崖")
    messageShow('报效国家：开始前往【星宿海颂摩崖】！')
end
function gbluWait()
    EnableTriggerGroup("gbluWait",true)
    exe('n')
end
function gbluFight()
    EnableTriggerGroup("gbluWait",false)
    EnableTriggerGroup("gbluFight",true)
    locate()
    wipe("shiwei",gbluCsCheck)
end
function gbluFightCheck()

end
function yptFightCheck()
   EnableTriggerGroup("yptFight",false)
   job.killer["一品堂武士"]="wu shi"
   return wipe("wu shi",yptFightCon)
end
function yptFightCon()
   EnableTriggerGroup("yptFight",true)
end
function gbluFightFresh()
    if road.wipe_id=="wipe_id" then
       job.time["refresh"]=os.time()%900
       dis_all()
       exe('halt')
       gbluFight()
    end
end
function gbluCsCheck()
    exe('yun jingli')
    if locl.room~="中军大帐" then
       return prepare_neili(gbluShiwei,1.8)
    else
       return prepare_neili(gbluYuanshuai,1)
    end
end
function gbluShiwei()
    exe('yun jingli;n;drop 1 coin')
    gbluFight()
end
function gbluYuanshuai()
    EnableTriggerGroup("gbluFinish",true)
    exe('yun jingli')
    wipe("zhan ertie",gbluYsCheck)
    messageShow('报效国家：开始解决【粘而帖】！')
end
function gbluYsCheck()
    prepare_neili(gbluFight,1)
end
function gbluGet()
    DeleteTimer("perform")
    wait.make(function()
       wait.time(1)
       exe("get gold from zhan ertie")
       wait.time(1)
       exe("get gold from zhan ertie")
    end)
end
function gbluFinish()
    messageShow('报效国家：完成任务！')
    check_heal()
end
function gbluFail()
    messageShow('报效国家：时间太长，任务失败！')
    check_heal()
end

--sldsm
function sldsmTrigger()
    DeleteTriggerGroup("sldsmAsk")
    create_trigger_t('sldsmAsk1',"^(> )*你向洪安通打听有关",'','sldsmAsk')
    create_trigger_t('sldsmAsk2',"^(> )*这里没有这个人。$",'','sldsmNobody')
    SetTriggerOption("sldsmAsk1","group","sldsmAsk")
    SetTriggerOption("sldsmAsk2","group","sldsmAsk")
    EnableTriggerGroup("sldsmAsk",false)
    DeleteTriggerGroup("sldsmAccept")
    create_trigger_t('sldsmAccept1',"^(> )*洪安通说道：「(\\D*)常与本教做对，你速去(\\D*)把他杀了！",'','sldsmConsiderK')
    create_trigger_t('sldsmAccept2',"^(> )*洪安通说道：「现在令你速去(\\D*)设法让(\\D*)归顺本教！」",'','sldsmConsiderZ')
    create_trigger_t('sldsmAccept3',"^(> )*洪安通说道：「你先把前一个任务完成再说。」",'','sldsmFangqi')
    create_trigger_t('sldsmAccept4',"^(> )*洪安通说道：「你小子竟敢偷偷做其他门派的任务，还想在神龙教里呆下去么",'','sldsmBusy')
    create_trigger_t('sldsmAccept5',"^(> )*洪安通说道：「你刚做完任务，先休息一下吧。」",'','sldsmFail')
    create_trigger_t('sldsmAccept6',"^(> )*洪安通说道：「你先休息一下吧。",'','sldsmBusyy')
    create_trigger_t('sldsmAccept7',"^(> )*洪安通说道：「怎么？！你想抗命不成？！",'','sldsmBusy')
    create_trigger_t('sldsmAccept8',"^(> )*洪安通说道：「这么点事情都办不了，要你这种无用之人何用！」",'','sldsmBusy')
    create_trigger_t('sldsmAccept9',"^(> )*洪安通说道：「你三番五次抗命不遵，是不是不想活",'','sldsmHeiw')
    create_trigger_t('sldsmAccept10',"^(> )*洪安通说道：「现在没有任务，你等下再来吧。」",'','sldsmBusy')
    SetTriggerOption("sldsmAccept1","group","sldsmAccept")
    SetTriggerOption("sldsmAccept2","group","sldsmAccept")
    SetTriggerOption("sldsmAccept3","group","sldsmAccept")
    SetTriggerOption("sldsmAccept4","group","sldsmAccept")
    SetTriggerOption("sldsmAccept5","group","sldsmAccept")
    SetTriggerOption("sldsmAccept6","group","sldsmAccept")
    SetTriggerOption("sldsmAccept7","group","sldsmAccept")
    SetTriggerOption("sldsmAccept8","group","sldsmAccept")
    SetTriggerOption("sldsmAccept9","group","sldsmAccept")
    SetTriggerOption("sldsmAccept10","group","sldsmAccept")
    EnableTriggerGroup("sldsmAccept",false)
    DeleteTriggerGroup("sldsmFight")
--茅十八对你哀求道：这儿是点小意思，您就大人大量放过我吧！(yes/no)
--不用如此卖力，休息一下再招吧。
--牛老板身子动了动，口中呻吟了几声，清醒过来。

    create_trigger_t('sldsmFight1','^(> )*(\\D*)「啪」的一声倒在地上','','sldsmDie')
    create_trigger_t('sldsmFight2','^(> )*(\\D*)神志迷糊，脚下一个不稳，倒在地上昏了过去。','','sldsmFaint')
    create_trigger_t('sldsmFight3',"^(> )*这里没有(\\D*)。",'','sldsmLost')
    create_trigger_t('sldsmFight4',"^(> )*(\\D*)跪倒在地，高呼道：洪教主神通广大，战无不胜！",'','sldsmFlop')
    create_trigger_t('sldsmFight5',"^(> )*没有让你诱迫这个人归顺呀!",'','sldsmZhNext')
    create_trigger_t('sldsmFight6',"^(> )*(\\D*)狠狠地瞪了你一眼。",'','sldsmZhCont')
    create_trigger_t('sldsmFight7',"^(> )*(\\D*)对你哀求道：这儿是点小意思，您就大人大量放过我吧！",'','sldsmZhDone')
    create_trigger_t('sldsmFight8',"^(> )*(\\D*)身子动了动，口中呻吟了几声，清醒过来。",'','sldsmZhContt')
    create_trigger_t('sldsmFight9',"^(> )*不用如此卖力，休息一下再招吧。",'','sldsmZhConttt')

    SetTriggerOption("sldsmFight1","group","sldsmFight")
    SetTriggerOption("sldsmFight2","group","sldsmFight")
    SetTriggerOption("sldsmFight3","group","sldsmFight")
    SetTriggerOption("sldsmFight4","group","sldsmFight")
    SetTriggerOption("sldsmFight5","group","sldsmFight")
    SetTriggerOption("sldsmFight6","group","sldsmFight")
    SetTriggerOption("sldsmFight7","group","sldsmFight")
    SetTriggerOption("sldsmFight8","group","sldsmFight")
    SetTriggerOption("sldsmFight9","group","sldsmFight")
    EnableTriggerGroup("sldsmFight",false)
end
function sldsmTriggerDel()
    DeleteTriggerGroup("sldsmAsk")
    DeleteTriggerGroup("sldsmAccept")
    DeleteTriggerGroup("sldsmFight")
    DeleteTriggerGroup("sldsmFind")
end
function sldsmNobody()
    EnableTriggerGroup("sldsmAsk",false)
    sldsm()
end
function sldsm()
    sldsmTrigger()
    job.name='sldsm'
    job.time.b=os.time()
    prepare_neili(sldsmGo)
end
function sldsmGo()
    go(sldsmStart,"神龙岛","大厅")
end
function sldsmStart()
    EnableTriggerGroup("sldsmAsk",true)
    exe('ask hong antong about job')
end
function sldsmAsk()
    EnableTriggerGroup("sldsmAsk",false)
    EnableTriggerGroup("sldsmAccept",true)
end
function sldsmBusy()
    EnableTriggerGroup("sldsmAccept",false)
    check_bei(sldsmBusyDazuo)
end
function sldsmBusyy()
    if job.last=="xueshan" then
    EnableTriggerGroup("sldsmAccept",false)
    check_bei(sldsmBusyDazuo)
    else
    check_bei(xueshan)
    end
end
function sldsmBusyDazuo()
    prepare_lianxiz(sldsmStart)
end
function sldsmFail()
    EnableTriggerGroup("sldsmAccept",false)
    job.last="sldsm"
    check_heal()
end
function sldsmHeiw()
    EnableTriggerGroup("sldsmAccept",false)
end
function sldsmConsiderK(n,l,w)
    EnableTriggerGroup("sldsmAccept",false)
    job.last='sldsm'
    job.target=Trim(w[2])
    job.id=nil
    job.sldtime=os.time()
    job.type="sm"
    job.killer={}
    job.killer[job.target]=true
    job.where=Trim(w[3])
    job.where=addrTrim(job.where)
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       job.where="前方高能通行禁止"
    end
    if (score.party~="日月神教" and score.master~="蓝凤凰") and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    print(dest.area)
    print(dest.room)

    if job.area=="黑木崖" then
           messageShowDebug('【'..job.where..'】')
	   return check_pot(1)
    end
    if dest.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       messageShow('神龙任务：任务地点【'..job.where..'】迷宫，任务放弃。')
       return check_pot(1)
    end
    if dest.area=="姑苏慕容" or dest.area=="燕子坞" or dest.area=="曼佗罗山庄" then
       messageShow('神龙任务：任务地点【'..job.where..'】太远，任务放弃。')
       return check_pot(1)
    end
    if dest.area=="绝情谷" and hp.exp<1500000 then
       messageShow('神龙任务：任务地点【'..job.where..'】门卫，任务放弃。')
       return check_pot(1)
    end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShow('神龙任务：伊犁暮色已沉，任务放弃。')
           return check_pot(1)
       end
    end

    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('神龙任务：酒楼商铺已关门，任务放弃。')
           return check_pot(1)
       end
    end
	
    if string.find(sldsmCancel,job.target) then
       messageShow('神龙任务：任务目标【'..job.target..'】不可到达，任务放弃。')
       return check_pot(1)
    end
    if not job.room or not path_cal() then
       messageShow('神龙任务：任务地点【'..job.where..'】不可到达，任务放弃。')
       return check_pot(1)
    end
    check_bei(sldsmFind)
    messageShow('神龙任务：开始前往【'..job.where..'】索命【'..job.target..'】！')
end
function sldsmConsiderZ(n,l,w)
    EnableTriggerGroup("sldsmAccept",false)
    job.last='sldsm'
    job.target=Trim(w[3])
    job.id=nil
    job.sldtime=os.time()
    job.type="zh"
    job.killer={}
    job.killer[job.target]=true
    job.where=Trim(w[2])
    job.where=addrTrim(job.where)
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       job.where="前方高能通行禁止"
    end
    if (score.party~="日月神教" and score.master~="蓝凤凰") and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    if job.area=="黑木崖" then
           messageShowDebug('【'..job.where..'】')
	   return check_pot(1)
    end
    if dest.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       messageShow('神龙任务：任务地点【'..job.where..'】迷宫，任务放弃。')
       return check_pot(1)
    end
    if dest.area=="姑苏慕容" or dest.area=="燕子坞" or dest.area=="曼佗罗山庄" then
       messageShow('神龙任务：任务地点【'..job.where..'】太远，任务放弃。')
       return check_pot(1)
    end
    if job.area=="绝情谷" and hp.exp<1500000 then
       messageShow('神龙任务：任务地点【'..job.where..'】门卫，任务放弃。')
       return check_pot(1)
    end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShow('神龙任务：伊犁暮色已沉，任务放弃。')
           return check_pot(1)
       end
    end
	
    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('神龙任务：酒楼商铺已关门，任务放弃。')
           return check_pot(1)
       end
    end

    if string.find(sldsmCancel,job.target) then
       messageShow('神龙任务：任务目标【'..job.target..'】不可到达，任务放弃。')
       return check_pot(1)
    end
    if not job.room or not path_cal() then
       messageShow('神龙任务：任务地点【'..job.where..'】不可到达，任务放弃。')
       return check_pot(1)
    end
    check_bei(sldsmFind)
    messageShow('神龙任务：开始前往【'..job.where..'】招魂【'..job.target..'】！')
end
function sldsmFangqiGo()
    go(sldsmFangqi,'神龙岛','大厅')
end
function sldsmFangqi()
    EnableTriggerGroup("sldsmAccept",false)
    if job.sldtime and os.time()-job.sldtime<600 then
       return prepare_lianxiz(sldsmFangqi)
    end
    check_bei(sldsmFangqiAsk)
end
function sldsmFangqiAsk()
    EnableTriggerGroup("sldsmAsk",true)
    exe('ask hong antong about cancel')
end
function sldsmFind()
    DeleteTriggerGroup("sldsmFind")
    create_trigger_t('sldsmFind1','^(> )*\\D*'..job.target..'\\((\\D*)\\)','','sldsmTarget')
    SetTriggerOption("sldsmFind1","group","sldsmFind")
    EnableTrigger("sldsmFind1",false)
    flag.times=1
    fight_prepare()
    go(sldsmFindAct,job.area,job.room)    
end
function sldsmFindAct()
    EnableTriggerGroup("sldsmFind",true)
    job.flag()
    exe('look')
    find()
    messageShow('神龙任务：开始寻找【'..dest.area .. dest.room ..'】的'..'【'.. job.target ..'】！')
end
function sldsmTarget(n,l,w)
    EnableTriggerGroup("sldsmFind",false)
    EnableTriggerGroup("sldsmFight",true)
    flag.wait=0
    flag.find=1
    thread_resume(lookfor)
    job.id=string.lower(w[2])
    job.killer[job.target]=job.id
    exe('halt;follow '..job.id)
    if job.type and job.type=="zh" then
       	exe('unset wimpy;jiali max')
        exe('zhaohun '..job.id)
    else
       	exe('set wimpycmd pfmpfm\\hp;set wimpy 100')
        exe('kill '..job.id)
    end
end
function sldsmZh(n,l,w,styles)
    local l_flag=false
    for _, v in ipairs (styles) do
       --Note(v.text,RGBColourToName (v.textcolour))
       if RGBColourToName (v.textcolour)=="maroon" then l_flag=true end
    end
    if flag and job.id then
       exe('zhaohun '.. job.id)
    end
end
function sldsmZhNext()
    job.id = job.id ..' 2'
    exe('follow '.. job.id)
end
function sldsmFaint(n,l,w)
    if job.target==w[2] then
       if job.type and job.type=="zh" then
          exe('halt')
          exe('zhaohun '.. job.id)
       else
          exe('kill '..job.id)
       end
    end
end
function sldsmZhCont(n,l,w)
    if job.target==w[2] and job.type and job.type=="zh" then
          exe('zhaohun '.. job.id)
    end
end
function sldsmZhContt(n,l,w)
    if job.target==w[2] and job.type and job.type=="zh" then
          exe('zhaohun '.. job.id)
    end
end
function sldsmZhConttt()
    wait.make(function()
      wait.time(3)
      exe('yun qi;yun jing')
      exe('zhaohun '.. job.id)
    end)
end
function sldsmZhDone()
      exe('halt')
      exe('no')
end
function sldsmDie(n,l,w)
    if job.target==w[2] then
       if job.type and job.type=="sm" then
          check_bei(sldsmSm)
    else
          exe('zhaohun '.. job.id)
       end
    end
end
function sldsmFlop(n,l,w)
    if job.target==w[2] then
       return sldsmFinish()
    end
end
function sldsmSm()
    exe('halt')
    for i=1,3 do
        exe('suoming corpse '..i)
    end
    return sldsmFinish()
end
function sldsmLost(n,l,w)
    if job.id==Trim(w[2]) then
       dis_all()
       return sldsmFind()
    end
end
function sldsmFinish()
    EnableTriggerGroup("sldsmFight",false)
    DeleteTimer("perform")
    messageShow('神龙任务：任务完成！')
    return check_bei(check_heal)
end
--[[
> 你向左冷禅打听有关『job』的消息。
左冷禅点了点头。
左冷禅说道：「对了，陆冠英和我交情不错，如得他相助，五岳并派之事简直易如反掌。」
左冷禅说道：「你就代表我去归云庄前厅邀请他，务必在己丑年九月五日申时三刻之前赶回来。」
> 你现在不能激发特殊技能。
> 你现在不能激发特殊技能。
> 没有这个技能种类，用 enable ? 可以查看有哪些种类。
> 你向左冷禅打听有关『cancel』的消息。
左冷禅说道：「既然你干不了也没关系，再去刻苦练功吧，以后再来为我们的并派大计出力！」
]]
function songshanTrigger()
    DeleteTriggerGroup("songshanAsk")
    create_trigger_t('songshanAsk1',"^(> )*你向左冷禅打听有关",'','songshanAsk')
    create_trigger_t('songshanAsk2',"^(> )*这里没有这个人。$",'','songshanNobody')
    SetTriggerOption("songshanAsk1","group","songshanAsk")
    SetTriggerOption("songshanAsk2","group","songshanAsk")
    EnableTriggerGroup("songshanAsk",false)
    DeleteTriggerGroup("songshanAccept")
    create_trigger_t('songshanAccept1',"^(> )*左冷禅说道：「(你听好了，有弟子回报|对了，)(\\D*)(这人对我五岳并派之举深表不满|和我交情不错，如得他相助)",'','songshanNpc')
    create_trigger_t('songshanAccept2',"^(> )*左冷禅说道：「(嘿嘿，他在|你就代表我去)(\\D*)(一带，你去将他杀了|邀请他，)",'','songshanConsider')
    create_trigger_t('songshanAccept3',"^(> )*左冷禅说道：「不是让你去",'','songshanFangqi')
    create_trigger_t('songshanAccept4',"^(> )*左冷禅说道：「我正忙着呢，你等等。",'','songshanBusy')
    create_trigger_t('songshanAccept5',"^(> )*左冷禅说道：「你刚做完任务，先休息一下吧。」",'','songshanFail')
    create_trigger_t('songshanAccept6',"^(> )*左冷禅说道：「你没有领任务,和我嚷嚷什么?",'','songshanFail')
    create_trigger_t('songshanAccept7',"^(> )*左冷禅说道：「嗯，我现在正在思考并派大计，你别打扰。",'','songshanFail')
    create_trigger_t('songshanAccept8',"^(> )*左冷禅说道：「既然你干不了也没关系，再去刻苦练功吧，以后再来为我们的并派大计出力！」",'','songshanFail')
    create_trigger_t('songshanAccept9',"^(> )*左冷禅说道：「嗯，我现在忙，你别打扰。",'','songshanBusy')
    create_trigger_t('songshanAccept10',"^(> )*左冷禅说道：「现在没有任务，你等下再来吧。」",'','songshanBusy')
    SetTriggerOption("songshanAccept1","group","songshanAccept")
    SetTriggerOption("songshanAccept2","group","songshanAccept")
    SetTriggerOption("songshanAccept3","group","songshanAccept")
    SetTriggerOption("songshanAccept4","group","songshanAccept")
    SetTriggerOption("songshanAccept5","group","songshanAccept")
    SetTriggerOption("songshanAccept6","group","songshanAccept")
    SetTriggerOption("songshanAccept7","group","songshanAccept")
    SetTriggerOption("songshanAccept8","group","songshanAccept")
    SetTriggerOption("songshanAccept9","group","songshanAccept")
    SetTriggerOption("songshanAccept10","group","songshanAccept")
    EnableTriggerGroup("songshanAccept",false)
    DeleteTriggerGroup("songshanFight")
    create_trigger_t('songshanFight1','^(> )*(\\D*)「啪」的一声倒在地上','','songshanDie')
    create_trigger_t('songshanFight2','^(> )*(\\D*)神志迷糊，脚下一个不稳，倒在地上昏了过去。','','songshanFaint')
    create_trigger_t('songshanFight3',"^(> )*这里没有(\\D*)。",'','songshanLost')
    create_trigger_t('songshanFight4',"^(> )*(这里没有这个人耶|你想邀请的对象不在这里)",'','songshanFind')
    create_trigger_t('songshanFight5',"^(> )*(你双手一拱，笑着|你胜了这招，向后跃开三尺|你哈哈大笑，说道：承让了！|没看见|你正忙着呢，先歇口气吧|你正在打架呢，等会儿再说吧|你正在极力邀请人家呢|你要先等他醒过来再说|你精神不振，先休息一下吧)",'','songshanQing')
    create_trigger_t('songshanFight6',"^(> )*(你的任务好象不是要邀请这人吧|你的任务好象不是要邀请谁吧)",'','songshanFangqiGo')
    create_trigger_t('songshanFight7',"^(> )*(\\D*)已经接受了邀请，你不用再费劲啦。",'','songshanBackCheck')
    create_trigger_t('songshanFight8',"^(> )*(\\D*)决定跟随你一起行动。",'','songshanFollow')
    create_trigger_t('songshanFight9',"^(> )*(\\D*)(向后一纵|向后退了几步，说道|轻蔑地扫了|嘿嘿一声：|脸色苍白，只看了|转过头来，上上下下看了|脸色微变，说道：佩服，佩服|一脸不耐烦的表情)",'','songshanQingCheck')
    SetTriggerOption("songshanFight1","group","songshanFight")
    SetTriggerOption("songshanFight2","group","songshanFight")
    SetTriggerOption("songshanFight3","group","songshanFight")
    SetTriggerOption("songshanFight4","group","songshanFight")
    SetTriggerOption("songshanFight5","group","songshanFight")
    SetTriggerOption("songshanFight6","group","songshanFight")
    SetTriggerOption("songshanFight7","group","songshanFight")
    SetTriggerOption("songshanFight8","group","songshanFight")
    SetTriggerOption("songshanFight9","group","songshanFight")
    EnableTriggerGroup("songshanFight",false)
    DeleteTriggerGroup("songshanCut")
    create_trigger_t('songshanCut1','^(> )*只听“咔”的一声，你将(\\D*)的首级斩了下来，提在手中。','','songshanCutCon')
    create_trigger_t('songshanCut2','^(> )*你得用件锋利的器具才能切下这尸体的头来。','','songshanCutWeapon')
    SetTriggerOption("songshanCut1","group","songshanCut") 
    SetTriggerOption("songshanCut2","group","songshanCut")
    EnableTriggerGroup("songshanCut",false)
    DeleteTriggerGroup("songshanGive")
    create_trigger_t('songshanGive1','^(> )*你给左冷禅一颗(\\D*)的首级。','','songshanFinish')
    create_trigger_t('songshanGive2','^(> )*对方不接受这样东西。','','songshanFangqi')
    SetTriggerOption("songshanGive1","group","songshanGive")
    SetTriggerOption("songshanGive2","group","songshanGive")
    EnableTriggerGroup("songshanGive",false)
    DeleteTriggerGroup("songshanHead")
    create_trigger_t('songshanHead1','^(> )*这是一颗(\\D*)的(首级|人头)','','songshanHeadCheck')
    create_trigger_t('songshanHead2','^(> )*你把 "action" 设定为 "check_head" 成功完成。','','songshanHeadCon')
    SetTriggerOption("songshanHead1","group","songshanHead")
    SetTriggerOption("songshanHead2","group","songshanHead")
    EnableTriggerGroup("songshanHead",false)
    DeleteTriggerGroup("songshanFinish")
    create_trigger_t('songshanFinish1','^(> )*左冷禅说道：「(\\D*)能来，我嵩山派又多了一份力量啦','','songshanFinishCheck')
    SetTriggerOption("songshanFinish1","group","songshanFinish")
    EnableTriggerGroup("songshanFinish",false)
end
function songshanTriggerDel()
    DeleteTriggerGroup("songshanAsk")
    DeleteTriggerGroup("songshanAccept")
    DeleteTriggerGroup("songshanFight")
    DeleteTriggerGroup("songshanFind")
    DeleteTriggerGroup("songshanCut")
    DeleteTriggerGroup("songshanGive")
    DeleteTriggerGroup("songshanHead")
    DeleteTriggerGroup("songshanFinish")
end
function songshanNobody()
    EnableTriggerGroup("songshanAsk",false)
    songshan()
end

job.list["songshan"] = "嵩山左冷禅"

function songshan()
    songshanTrigger()
    job.name='songshan'
    job.time.b=os.time()
    prepare_neili(songshanGo)
end
function songshanGo()
    go(songshanStart,"嵩山","封禅台")
end
function songshanStart()
    EnableTriggerGroup("songshanAsk",true)
    exe('ask zuo lengchan about job')
end
function songshanAsk()
    EnableTriggerGroup("songshanAsk",false)
    EnableTriggerGroup("songshanAccept",true)
end
function songshanBusy()
    EnableTriggerGroup("songshanAccept",false)
    check_bei(songshanBusyDazuo)
end
function songshanBusyDazuo()
    prepare_lianxiz(songshanStart)
end
function songshanFail()
    EnableTriggerGroup("songshanAsk",false)
    EnableTriggerGroup("songshanAccept",false)
    flag.idle=0
    job.last="songshan"
    return check_heal()
end
function songshanNpc(n,l,w)
    job.target=Trim(w[3])
    job.killer={}
    job.killer[job.target]=true
end
function songshanConsider(n,l,w)
    EnableTriggerGroup("songshanAccept",false)
    job.last='songshan'
    job.id=nil
    if string.find(w[4],"请") then
       job.type="qing"
    else 
       job.type="kill"
    end
    job.where=Trim(w[3])
    job.where=addrTrim(job.where)
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       job.where="前方高能通行禁止"
    end
    if (score.party~="日月神教" and score.master~="蓝凤凰") and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end

    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area

    if job.where~="前方高能通行禁止" or job.where~="力不从心通行禁止" then
    print('**********************************************')
    print(job.area)
    print(job.room)
    print(job.target)
    print('**********************************************')
    end

    if job.area=="黑木崖" then
       if score.party~="日月神教" and (hp.exp<2000000 or hp.neili_max<4000) then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(songshanFangqi)
	elseif score.party=="日月神教" and hp.neili_max<4000 then
	   messageShowDebug('【'..job.where..'】')
	   return check_bei(songshanFangqi)
       end
    end
    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" and score.party~="神龙教" then
       messageShow('嵩山任务：任务目标【'..job.target..'】晕船，任务放弃。')
       return check_bei(songshanFangqi)
    end
    if job.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       messageShow('嵩山任务：任务目标【'..job.target..'】迷宫，任务放弃。')
       return check_bei(songshanFangqi)
    end
    if (score.party~="姑苏慕容" or score.party~="普通百姓") and (job.area=="姑苏慕容" or job.area=="燕子坞" or job.area=="曼佗罗山庄") then
       messageShow('嵩山任务：任务目标【'..job.target..'】太远，任务放弃。')
       return check_bei(songshanFangqi)
    end
    if job.area=="绝情谷" and hp.exp<1500000 then
       messageShow('嵩山任务：任务目标【'..job.target..'】门卫，任务放弃。')
       return check_bei(songshanFangqi)
    end

    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShow('嵩山任务：伊犁暮色已沉，任务放弃。')
           return check_bei(songshanFangqi)
       end
    end

    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('嵩山任务：酒楼商铺已关门，任务放弃。')
           return check_busy(songshanFangqi)
       end
    end

    if string.find(sldsmCancel,job.target) or string.find(ssjobCancel,job.target) then
       messageShow('嵩山任务：任务目标【'..job.target..'】不可到达，任务放弃。')
       return check_bei(songshanFangqi)
    end
    if not job.room or not path_cal() then
       messageShow('嵩山任务：任务地点【'..job.where..'】不可到达，任务放弃。')
       return check_bei(songshanFangqi)
    end

    check_bei(songshanFind)
    if job.type and job.type=="qing" then
       messageShow('嵩山任务：开始前往【'..job.where..'】请【'..job.target..'】！')
    else
       messageShow('嵩山任务：开始前往【'..job.where..'】杀【'..job.target..'】！')
    end
end
function songshanFangqiGo()
    go(songshanFangqi,'嵩山','封禅台')
end
function songshanFangqi()
    check_bei(songshanFangqiAsk)
end
function songshanFangqiAsk()
    EnableTriggerGroup("songshanAccept",true)
    exe('ask zuo lengchan about 放弃')
end
function songshanFind()
    DeleteTriggerGroup("songshanFind")
    create_trigger_t('songshanFind1','^(> )*\\D*'..job.target..'\\((\\D*)\\)','','songshanTarget')
    SetTriggerOption("songshanFind1","group","songshanFind")
    EnableTrigger("songshanFind1",false)
    flag.times=1
    fight_prepare()
    go(songshanFindAct,job.area,job.room)    
end
function songshanFindAct()
    EnableTriggerGroup("songshanFind",true)
    job.flag()
    exe('look')
    find()
    messageShow('嵩山任务：开始寻找【'..dest.area .. dest.room ..'】的'..'【'.. job.target ..'】！')
end
function songshanTarget(n,l,w)
    EnableTriggerGroup("songshanFind",false)
    EnableTriggerGroup("songshanFight",true)
    flag.wait=0
    flag.find=1
    thread_resume(lookfor)
    job.id=string.lower(w[2])
    job.killer[job.target]=job.id
    exe('halt;follow '..job.id)
    if job.type and job.type=="qing" then
       killPfm2(job.id,"qing")
    else
       killPfm(job.id)
    end
end
function songshanFaint(n,l,w)
    if job.target==w[2] then
       if job.type and job.type=="qing" then
          exe('halt')
	  return songshanQing()
       else
          exe('kill '..job.id)
       end
    end
end
function songshanFollow(n,l,w)
    if job.target==w[2] then
       if job.type and job.type=="qing" then
          exe('halt')
          flag.idle=0
	  return songshanBack()
       end
    end
end
function songshanDie(n,l,w)
    flag.idle=0
    if job.target==w[2] then
       if job.type and job.type=="qing" then
          exe('follow '..job.id)
       else
          DeleteTimer("perform")
          check_bei(songshanCut)
       end
    end
end
function songshanQingCheck(n,l,w)
    if job.target==w[2] then
       songshanQing()
    end
end
function songshanQing()
    exe('yun qi;hp')
    checkWait(songshanQingAct,2)
--    check_halt(songshanQingAct)
end
function songshanQingAct()
    flag.idle=0
    if hp.neili<hp.neili_lim then
       exe('dazuo '..hp.dazuo)
       return prepare_neili(songshanQing,1)
    else
       exe('yun jing;yun jingli;qing '..job.id)
    end
end
function songshanCut()
    EnableTriggerGroup("songshanFight",false)
    EnableTriggerGroup("songshanCut",true)
    exe('halt')
	weaponWieldCut()
    for i=1,3 do
        exe('qie corpse '..i)
    end
end
function songshanCutWeapon()
    EnableTriggerGroup("songshanCut",false)
    checkWait(songshanCut,1)
end
function songshanCutCon(n,l,w)
    EnableTriggerGroup("songshanCut",false)
    if job.target~=tostring(w[2]) then
       exe('drop head')
       check_bei(songshanCut)
    else
       return songshanBack()
    end
end
function songshanLost(n,l,w)
    if job.id==Trim(w[2]) then
       dis_all()
       return songshanFind()
    end
end
function songshanBckCheck(n,l,w)
    if job.target==w[2] then
       songshanBack()
    end
end
function songshanBack()
    DeleteTimer("perform")
    EnableTriggerGroup("songshanFight",false)
    EnableTriggerGroup("songshanFinish",true)
    go(songshanHead,'嵩山','封禅台')
end
function songshanHead()
    if job.type and job.type=="qing" then
       cntr1 = countR(8)
       return songshanFinishWait()
    else
       EnableTriggerGroup("songshanHead",true)
       tmp.flag=0
       exe('look head')
       exe('alias action check_head')
    end
end
function songshanHeadCheck(n,l,w)
    if w[2] == job.target then
       tmp.flag=1
    end
end
function songshanHeadCon()
    EnableTriggerGroup("songshanHead",false)
    if tmp.flag==1 then
       return songshanGive()
    else
       return songshanFinish()
    end
end
function songshanGive()
    EnableTriggerGroup("songshanGive",true)
    exe('give zuo head')
end
function songshanFinishWait()
    if cntr1()<3 then
       return songshanFinish()
    else
       exe('sd;nu')
       print('NPC 还没到吗？')
       checkWait(songshanFinishWait,3)
    end
end
function songshanFinishCheck(n,l,w)
    if w[2]==job.target then
       return songshanFinish()
    end
end
function songshanFinish()
    flag.idle=0
    EnableTriggerGroup("songshanFight",false)
    messageShow('嵩山任务：任务完成！')
--    return go(check_heal,'襄阳城','药房')
    exe('sd;nu')
    checkWait(check_heal,3)
end

--tmonk
function tmonkTrigger()
    DeleteTriggerGroup("tmonkFollow")
    create_trigger_t('tmonkFollow1',"^(> )*你决定跟随玄惭大师一起行动。",'','tmonkFollow')
    create_trigger_t('tmonkFollow2',"^(> )*这里没有 xuancan dashi。$",'','tmonkNobody')
    SetTriggerOption("tmonkFollow1","group","tmonkFollow")
    SetTriggerOption("tmonkFollow2","group","tmonkFollow")
    EnableTriggerGroup("tmonkFollow",false)
    DeleteTriggerGroup("tmonkAsk")
    create_trigger_t('tmonkAsk1',"^(> )*你向玄惭大师打听有关",'','tmonkAsk')
    create_trigger_t('tmonkAsk2',"^(> )*这里没有这个人。$",'','tmonkNobody')
    SetTriggerOption("tmonkAsk1","group","tmonkAsk")
    SetTriggerOption("tmonkAsk2","group","tmonkAsk")
    EnableTriggerGroup("tmonkAsk",false)
    DeleteTriggerGroup("tmonkAccept")
    create_trigger_t('tmonkAccept1',"^(> )*玄惭大师说道：「你刚才不是已经问过了吗？",'','tmonkStart')
    create_trigger_t('tmonkAccept2',"^(> )*玄惭大师说道：「你正在忙着做其它任务呢。",'','tmonkBusy')
    create_trigger_t('tmonkAccept3',"^(> )*玄惭大师说道：「你刚训练武僧结束，还是先休息一会吧。",'','tmonkFangqi')
    create_trigger_t('tmonkAccept4',"^(> )*玄惭大师说道：「你现在正忙着做其他任务呢",'','tmonkBusy')
    create_trigger_t('tmonkAccept5',"^(> )*玄惭大师说道：「\\D*你累犯数戒，身带重罪",'','tmonkGuilty')
    create_trigger_t('tmonkAccept6',"^(> )*玄惭说道：好吧，你就在罗汉堂里训练武僧",'','tmonkStart')
    SetTriggerOption("tmonkAccept1","group","tmonkAccept")
    SetTriggerOption("tmonkAccept2","group","tmonkAccept")
    SetTriggerOption("tmonkAccept3","group","tmonkAccept")
    SetTriggerOption("tmonkAccept4","group","tmonkAccept")
    SetTriggerOption("tmonkAccept5","group","tmonkAccept")
    SetTriggerOption("tmonkAccept6","group","tmonkAccept")
    EnableTriggerGroup("tmonkAccept",false)
    DeleteTriggerGroup("tmonkFind")
    create_trigger_t('tmonkFind1','^^(> )*\\D*玄惭大师\\((\\D*)\\)','','tmonkDashi')
    SetTriggerOption("tmonkFind1","group","tmonkFind")
    EnableTriggerGroup("tmonkFind",false)
    DeleteTriggerGroup("tmonkWujiAsk")
    create_trigger_t('tmonkWujiAsk1',"^(> )*你向圆(心|业|觉|慧|灭|音)和尚打听有关",'','tmonkWujiAsk')
    create_trigger_t('tmonkWujiAsk2',"^(> )*这里没有这个人。$",'','tmonkWujiNobody')
    SetTriggerOption("tmonkWujiAsk1","group","tmonkWujiAsk")
    SetTriggerOption("tmonkWujiAsk2","group","tmonkWujiAsk")
    EnableTriggerGroup("tmonkWujiAsk",false)
	DeleteTriggerGroup("tmonkWujiReply")
    create_trigger_t('tmonkWujiReply1',"^(> )*圆(心|业|觉|慧|灭|音)和尚说道：「这个可不能乱说。",'','tmonkFinish')
    create_trigger_t('tmonkWujiReply2',"^(> )*圆(心|业|觉|慧|灭|音)和尚一脸神秘地",'','tmonkWujiNobody')
    create_trigger_t('tmonkWujiReply3',"^(> )*圆(心|业|觉|慧|灭|音)和尚生气地看着你",'','tmonkWujiNobody')
    create_trigger_t('tmonkWujiReply4',"^(> )*圆(心|业|觉|慧|灭|音)和尚说道：「小僧在学",'','tmonkTeachStart')
    SetTriggerOption("tmonkWujiReply1","group","tmonkWujiReply")
    SetTriggerOption("tmonkWujiReply2","group","tmonkWujiReply")
    SetTriggerOption("tmonkWujiReply3","group","tmonkWujiReply")
    SetTriggerOption("tmonkWujiReply4","group","tmonkWujiReply")
    EnableTriggerGroup("tmonkWujiReply",false)
	DeleteTriggerGroup("tmonkTeach")
    create_trigger_t('tmonkTeach1',"^(> )*你还是先去跟玄惭大师打声招呼吧。",'','tmonkFinish')
    create_trigger_t('tmonkTeach2',"^(> )*圆(心|业|觉|慧|灭|音)和尚说道：「我正由",'','tmonkWujiNobody')
    create_trigger_t('tmonkTeach3',"^(> )*你的修为还不如我呢，还想教我？",'','tmonkWujiKill')
    create_trigger_t('tmonkTeach4',"^(> )*圆(心|业|觉|慧|灭|音)和尚太累了，现在没有办法学。",'','tmonkChange')
	create_trigger_t('tmonkTeach5',"^(> )*圆(心|业|觉|慧|灭|音)和尚正忙着呢。",'','tmonkChange')
	create_trigger_t('tmonkTeach6',"^(> )*你(正忙着呢。|尽心竭力，对)",'','tmonkContinue')
	create_trigger_t('tmonkTeach7','^(> )*你把 "action" 设定为 "teach" 成功完成。$','','tmonkTeachCon')
	create_trigger_t('tmonkTeach8',"^(> )*(\\D*)在你旁边，你无法专心指点。",'','tmonkChange')
	create_trigger_t('tmonkTeach9',"^(> )*圆(心|业|觉|慧|灭|音)和尚神情振奋，一声大叫向(\\D*)奔去",'','tmonkMotou')
    SetTriggerOption("tmonkTeach1","group","tmonkTeach")
    SetTriggerOption("tmonkTeach2","group","tmonkTeach")
    SetTriggerOption("tmonkTeach3","group","tmonkTeach")
    SetTriggerOption("tmonkTeach4","group","tmonkTeach")
	SetTriggerOption("tmonkTeach5","group","tmonkTeach")
	SetTriggerOption("tmonkTeach6","group","tmonkTeach")
	SetTriggerOption("tmonkTeach7","group","tmonkTeach")
	SetTriggerOption("tmonkTeach8","group","tmonkTeach")
	SetTriggerOption("tmonkTeach9","group","tmonkTeach")
    EnableTriggerGroup("tmonkTeach",false)
	DeleteTriggerGroup("tmonkMotouFind")
    create_trigger_t('tmonkMotouFind1','^^(> )*邪道魔头高举右拳，对着你','','tmonkMotouKill')
    SetTriggerOption("tmonkMotouFind1","group","tmonkMotouFind")
    EnableTriggerGroup("tmonkMotouFind",false)
    DeleteTriggerGroup("tmonkFight")
    create_trigger_t('tmonkFight1','^(> )*邪道魔头「啪」的一声倒在地上','','tmonkDie')
    create_trigger_t('tmonkFight2','^(> )*邪道魔头神志迷糊，脚下一个不稳，倒在地上昏了过去。','','tmonkFaint')
    SetTriggerOption("tmonkFight1","group","tmonkFight")
    SetTriggerOption("tmonkFight2","group","tmonkFight")
    EnableTriggerGroup("tmonkFight",false)
end
function tmonkTriggerDel()
    DeleteTriggerGroup("tmonkFollow")
    DeleteTriggerGroup("tmonkAsk")
    DeleteTriggerGroup("tmonkAccept")
    DeleteTriggerGroup("tmonkFight")
    DeleteTriggerGroup("tmonkFind")
	DeleteTriggerGroup("tmonkWujiAsk")
	DeleteTriggerGroup("tmonkWujiReply")
	DeleteTriggerGroup("tmonkTeach")
	DeleteTriggerGroup("tmonkMotouFind")
end
job.list["tmonk"] = "少林教和尚"
function tmonk()
    job.name='tmonk'
    tm = tm or {}
	tmroom = {}
	tmroom["shaolin/wstang1"] = true
	tmroom["shaolin/wstang2"] = true
	tmroom["shaolin/wstang3"] = true
	tmroom["shaolin/wstang4"] = true
	tmroom["shaolin/wstang5"] = true
	tmroom["shaolin/wstang6"] = true
	for p in pairs(tm) do
	    tmroom[p] = nil
	end
    tmonkTrigger()
	messageShow('Tmonk任务：任务开始。','green')
	
	job.findAgain = tmonkFindAgain
    return prepare_neili(tmonkGuilty)
end
function tmonkFindAgain()
    EnableTriggerGroup("tmonkFind",false)
	EnableTriggerGroup("tmonkMotouFind",false)
    return go(find,dest.area,dest.room)
end
function tmonkGo()
    return go(tmonkXuancan,"嵩山少林","演武堂")
end
function tmonkXuancan()
    EnableTriggerGroup("tmonkFind",true)
    job.flag()
	flag.times=2
    return find()
end
function tmonkDashi()
    flag.find = 1
	dis_all()
	EnableTriggerGroup("tmonkFind",false)
    EnableTriggerGroup("tmonkFollow",true)
    exe('follow xuancan dashi')
end
function tmonkNobody()
    EnableTriggerGroup("tmonkFollow",false)
    EnableTriggerGroup("tmonkAsk",false)
    return go(tmonkXuancan,"嵩山少林","演武堂")
end
function tmonkFollow()
    EnableTriggerGroup("tmonkFollow",false)
    EnableTriggerGroup("tmonkAsk",true)
    exe('ask xuancan dashi about 罗汉堂值勤')
end
function tmonkAsk()
    EnableTriggerGroup("tmonkAsk",false)
    EnableTriggerGroup("tmonkAccept",true)
	job.last = 'tmonk'
    exe('follow none')
end
function tmonkGuilty()
    EnableTriggerGroup("tmonkAccept",false)
	if score.party and score.party=="少林派" and score.master=="无名老僧" and skills["buddhism"] and skills["buddhism"].lvl==200 then
	   return go(tmonkFofa,"嵩山少林","里屋")
	end
    return go(tmonkCh,'嵩山少林','戒律院')
end
function tmonkFofa()
    exe("ask wuming about 佛法")
	return tmonkGo()
end
function tmonkCh()
    checkWait(tmonkGo,2)
end
function tmonkFangqi()
    EnableTriggerGroup("tmonkAccept",false)
    job.last='tmonk'
    return check_heal()
end
function tmonkBusy()
    EnableTriggerGroup("tmonkAccept",false)
    return prepare_lianxiz(tmonk)
end
function tmonkStart()
    EnableTriggerGroup("tmonkAccept",false)
	job.last='tmonk'
    if countTab(tm) > 0 then
       local l_id
       for p in pairs(tm) do
           l_id = p
       end
       return go(tmonkWuji,l_id)
    else
       return go(tmonkWuji,"shaolin/wstang1")
    end
end
function tmonkWuji()
    EnableTriggerGroup("tmonkWujiAsk",true)
    exe('ask monk about 武技')
end
function tmonkWujiAsk()
    EnableTriggerGroup("tmonkWujiAsk",false)
    EnableTriggerGroup("tmonkWujiReply",true)
end
function tmonkWujiNobody()
    EnableTriggerGroup("tmonkWujiReply",false)
    EnableTriggerGroup("tmonkWujiAsk",false)
	EnableTriggerGroup("tmonkTeach",false)
	tm[road.id] = nil
	tmroom[road.id] = nil
	return check_bei(tmonkWujiFind)
end
function tmonkWujiFind()
	if countTab(tmroom)==0 then
	   if countTab(tm)==0 then
	      return tmonkFinish()
	   else
	      return tmonkStart()
	   end
	else
	   local l_id
       for p in pairs(tmroom) do
           l_id = p
       end
       return go(tmonkWuji,l_id)
	end
end
function tmonkChange()
    tmchg=true
end
function tmonkChgMonk()
    EnableTriggerGroup("tmonkTeach",false)
	if countTab(tm)>1 then
	   local l_id
	   for p in pairs(tm) do
	       if p ~= road.id then
		      l_id = p
		   end
	   end
	   if l_id then
	      return go(tmonkTeach,l_id)
	   else
	      return tmonkWujiFind()
	   end
	else
	   if countTab(tmroom)==0 then
	      return check_busy(tmonkTeach,1)
	   else
	      return tmonkWujiFind()
	   end
	end
end
function tmonkTeachStart()
    EnableTriggerGroup("tmonkWujiReply",false)
	tm[road.id] = true
	tmroom[road.id] = nil
	return check_bei(tmonkTeach)
end
function tmonkTeach()
	EnableTriggerGroup("tmonkTeach",true)
	tmcon=nil
	tmchg=nil
	exe('yun jing;#2(teach monk)')
	exe('alias action teach')
end
function tmonkTeachCon()
    EnableTriggerGroup("tmonkTeach",false)
	if tmchg then
	   --return tmonkChgMonk()
	   return check_busy(tmonkTeach,1)
	end
	if tmcon then
	   return check_bei(tmonkTeach)
	else
	   return tmonkWujiNobody()
	end
end
function tmonkContinue()
    tmcon=true
end
function tmonkWujiKill()
    EnableTriggerGroup("tmonkTeach",false)
    return wipe("monk",tmonkWujiNobody)
end
function tmonkMotou(n,l,w)
    EnableTriggerGroup("tmonkTeach",false)
	dest.room=Trim(w[3])
    dest.area="嵩山少林"
	road.idold = road.id
    if not dest.room or not path_cal() then
       messageShow('Teach任务：魔头出现地点【'.. dest.area .. dest.room ..'】不可到达，放弃MONK!')
	   road.id = road.idold
       return tmonkWujiNobody()
	else
	   messageShow('Tmonk任务：邪道魔头出现在'.. dest.room ..'。','green')
	   return tmonkMotouFind()
    end
end
function tmonkMotouFind()
    EnableTriggerGroup("tmonkMotouFind",true)
	if dest.room == "石板路" then
	   return go(find,"shaolin/sblu-3","")
	end
	return go(find,dest.area,dest.room)
end
function tmonkMotouKill()
    flag.find=1
	dis_all()
	EnableTriggerGroup("tmonkFight",true)
	exe('set wimpy 100')
	exe('kill mo tou')
	job.killer["邪道魔头"]="mo tou"
end
function tmonkFaint()
    exe('unset wimpy')
    exe('kill mo tou')
end
function tmonkDie()
    EnableTriggerGroup("tmonkFight",false)
	messageShow('Tmonk任务：搞定邪道魔头。','green')
	return check_bei(tmonkGet)
end
function tmonkGet()
    for i=1,3 do
	   exe('get gold from corpse '.. i)
	   exe('get muou from corpse '.. i)
	end
	checkBags()
	return check_busy(tmonkMuou)
end
function tmonkMuou()
    if Bag["十八木偶"] then
	   messageShow('Tmonk任务：运气很好，搞到十八木偶。','green')
	   return go(tmonkMuouGive,"嵩山少林","方丈室")
	else
	   return tmonkStart()
	end
end
function tmonkMuouGive()
    exe('give muou to xuanci dashi')
	return tmonkStart()
end
function tmonkFinish()
    dis_all()
    messageShow('Tmonk任务：任务完成。','green')
    return go(check_heal,"嵩山少林","罗汉堂")
end

jobSpecial = jobSpecial or {}
jobSpecial["kanshou"] = true
job.list["kanshou"] = "武当看守铜鼎"
function kanshou_trigger()
    DeleteTriggerGroup("kanshou_task")
	create_trigger_t('kanshou_task1',"^(> )*只听「哐」的一声巨响，一名(\\D*)破门而入，对你发起猛烈的攻击！",'','kanshouAttack')
    create_trigger_t('kanshou_task2',"^(> )*你此次看守共得到",'','kanshouOver')
	create_trigger_t('kanshou_task3',"^(> )*你正忙着做其他任务呢。",'','kanshouBusy')
	create_trigger_t('kanshou_task4',"^(> )*(你想看守铜鼎丹炉。|你正在看守铜鼎。)",'','kanshouTimer')
	SetTriggerOption("kanshou_task1","group","kanshou_task")
	SetTriggerOption("kanshou_task2","group","kanshou_task")
	SetTriggerOption("kanshou_task3","group","kanshou_task")
	SetTriggerOption("kanshou_task4","group","kanshou_task")
	EnableTriggerGroup("kanshou_task",false)
end
function kanshou_triggerDel()
    DeleteTriggerGroup("kanshou_task")
end
function kanshou()
    kanshou_trigger()
    job.name='kanshou'
    job.time.b=os.time()
    job.flag()
    job.target='任务目标'
	if jobtimes and jobtimes["武当看守铜鼎"] and jobtimes["武当看守铜鼎"] > 400 then
	    exe('pray pearl')
	end
    return go(kanshouStart,'武当山','炼丹房')
end
function kanshouStart()
    if locl.room ~= '炼丹房' then
	    return go(kanshouStart,'武当山','炼丹房')
	end
	fight_prepare()
	return check_bei(kanshouAct)
end
function kanshouAct()
    EnableTriggerGroup("kanshou_task",true)
    exe('kanshou')
end
function kanshouAttack()
    dis_all()
	--fight_prepare()
	create_timer_s('kans',20,'kanshouWait')
end
function kanshouTimer()
    create_timer_s('kans',2,'kanshouWait')
end
function kanshouWait()
    EnableTimer("kans",false)
	DeleteTimer("kans")
	exe('hp')
	create_timer_s('kanc',20,'kanshouCheck')
	exe('unset 积蓄')
	if hp.neili < hp.neili_max*1.5 or hp.neili_max < hp.neili_lim-10 then
	   exe('yun qi;dazuo '.. hp.dazuo)
	end
    return check_bei(kanshouCheck,1)
end
function kanshouCheck()
    EnableTimer("kanc",false)
	DeleteTimer("kanc")
    flag.idle = 0
	if hp.jingli_max < hp.jingli_lim then
	   exe('unset 积蓄')
	   exe('yun jing;tuna '.. hp.jingxue/4)
    end	
	return check_busy(kanshouAct)
end
function kanshouOver()
    EnableTriggerGroup("kanshou_task",false)
	EnableTimer("kans",false)
	DeleteTimer("kans")
	EnableTimer("kanc",false)
	DeleteTimer("kanc")
    return check_heal()
end
function kanshouBusy()
    EnableTriggerGroup("kanshou_task",false)
    return checkWait(kanshouAct,5)
end

function tdh_trigger()
    DeleteTriggerGroup("tdh_find")
    DeleteTriggerGroup("tdh_ask")
    create_trigger_t('tdh_ask1',"^(> )*你向李式开打听有关",'','tdh_ask')
    create_trigger_t('tdh_ask2',"^(> )*这里没有这个人。$",'','tdh_nobody')
    SetTriggerOption("tdh_ask1","group","tdh_ask")
    SetTriggerOption("tdh_ask2","group","tdh_ask")
    EnableTriggerGroup("tdh_ask",false)
    DeleteTriggerGroup("tdh_accept")
    create_trigger_t('tdh_accept1',"^(> )*李式开在你的耳边悄声说道：速去",'','tdh_fangqi')
    create_trigger_t('tdh_accept2',"^(> )*李式开说道：「既然你做不了，也就算了。」",'','tdh')
	create_trigger_t('tdh_accept3',"^(> )*李式开对你说道：你又没领过任务，放弃什么",'','tdh_busy')
    create_trigger_t('tdh_accept4',"^(> )*李式开说道：「暂时没有事情需要做，以后再说吧。」",'','tdh_busy')
	create_trigger_t('tdh_accept5',"^(> )*李式开说道：「听说陈总舵主有事找你，你还是先去找总舵主询问吧。」",'','tdh_quest')
    create_trigger_t('tdh_accept6',"^(> )*李式开在你的耳边悄声说道：他的名字叫(\\D*)，你路上小心。",'','tdh_consider')
    create_trigger_t('tdh_accept7',"^(> )*李式开在你的耳边悄声说道：你马上去(\\D*)联络一个会里的兄弟。",'','tdh_where')
    create_trigger_t('tdh_accept8',"^(> )*李式开说道：「你刚完成任务，还是去休息会吧。」",'','tdh_busy')
    SetTriggerOption("tdh_accept1","group","tdh_accept")
    SetTriggerOption("tdh_accept2","group","tdh_accept")
    SetTriggerOption("tdh_accept3","group","tdh_accept")
    SetTriggerOption("tdh_accept4","group","tdh_accept")
    SetTriggerOption("tdh_accept5","group","tdh_accept")
	SetTriggerOption("tdh_accept6","group","tdh_accept")
	SetTriggerOption("tdh_accept7","group","tdh_accept")
	SetTriggerOption("tdh_accept8","group","tdh_accept")
    EnableTriggerGroup("tdh_accept",false)
end
function tdh_triggerDel()
    DeleteTriggerGroup("tdh_find")
    DeleteTriggerGroup("tdh_ask")
	DeleteTriggerGroup("tdh_cask")
    DeleteTriggerGroup("tdh_accept")
    DeleteTriggerGroup("tdh_fight")
	DeleteTriggerGroup("tdh_finish")
	DeleteTriggerGroup("tdhId")
end
job.list["tdh"] = "天地会"
function tdh()
    tdh_trigger()
    job.name='tdh'
    job.time.b=os.time()
    job.flag()
    job.target='任务目标'
    return prepare_lianxi(tdh_start)
end
jobFindAgain = jobFindAgain or {}
jobFindAgain["tdh"] = "tdhFindAgain"
jobFindFail = jobFindFail or {}
jobFindFail["tdh"] = "tdhFindFail"
function tdhFindAgain()
    EnableTriggerGroup("tdh_find",false)
    return go(tdh_find_act,dest.area,dest.room)
end
function tdhFindFail()
    EnableTriggerGroup("tdh_find",false)
    return check_bei(tdh_fangqi_go)
end
function tdh_start()
    return go(job_tdh,'扬州城','小金山')
end
function job_tdh()
    DeleteTriggerGroup("check_job")
    EnableTriggerGroup("tdh_ask",true)
    exe('ask li shikai about job')
    messageShow('天地会任务：任务开始。')
end
function tdh_ask()
    EnableTriggerGroup("tdh_ask",false)
    EnableTriggerGroup("tdh_accept",true)
end
function tdh_nobody()
    EnableTriggerGroup("tdh_ask",false)
    return tdh_start()
end
function tdh_busy()
    EnableTriggerGroup("tdh_accept",false)
	job.last = "tdh"
    return check_heal()
end
function tdh_quest()
    EnableTriggerGroup("tdh_accept",false)
    return questNxsz()
end
function tdh_fangqi_go()
    return go(tdh_fangqi,'扬州城','小金山')
end
function tdh_fangqi()
    EnableTriggerGroup("tdh_accept",false)
    return check_bei(tdh_fangqi_ask)
end
function tdh_fangqi_ask()
    EnableTriggerGroup("tdh_ask",true)
    exe('ask li shikai about 放弃')
end
function tdh_where(n,l,w)
    job.where=Trim(w[2])
end
function tdh_consider(n,l,w)
    EnableTriggerGroup("tdh_accept",false)
	job.target=Trim(w[2])
	job.target2="未定"
    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area
    job.last = "tdh"
	tmp.tdh = 1
    if WhereIgnores[job.where] or AddrIgnores[dest.area] or not job.room or not path_cal() then
       messageShow('天地会任务：地点【'..job.where..'】不可到达，任务放弃。')
       return check_bei(tdh_fangqi)
    end
	messageShow('天地会任务：开始前往【'..job.where..'】，寻找革命同志！')
    return check_bei(tdh_find)   
end
function tdh_find()
    DeleteTriggerGroup("tdh_find")
    create_trigger_t('tdh_find1','^( )*(\\D*)'..job.target..'\\((\\D*)\\)','','tdh_comrade')
	create_trigger_t('tdh_find2','^( )*(\\D*)'..job.target2..'\\((\\D*)\\)','','tdhProtect')
	create_trigger_t('tdh_find3','^( )*(\\D*)'..job.target..'\\((\\D*)\\)','','tdhStop')
    SetTriggerOption("tdh_find1","group","tdh_find")
	SetTriggerOption("tdh_find2","group","tdh_find")
	SetTriggerOption("tdh_find3","group","tdh_find")
    EnableTriggerGroup("tdh_find",false)
    flag.times=1
    return check_bei(tdh_find_go)
end
function tdh_find_go()
    return go(tdh_find_act,job.area,job.room)   
end
function tdh_find_act()
    EnableTriggerGroup("tdh_find",true)
	if tmp.tdh then
	   if tmp.tdh == 1 then
	      EnableTrigger("tdh_find2",false)
		  EnableTrigger("tdh_find3",false)
	   end
	   if tmp.tdh == 2 then
	      EnableTrigger("tdh_find1",false)
		  EnableTrigger("tdh_find3",false)
	   end
	   if tmp.tdh == 3 then
	      EnableTrigger("tdh_find1",false)
		  EnableTrigger("tdh_find2",false)
	   end
	end
    job.flag()
    exe('look')
	messageShow('天地会任务：开始寻找【'..dest.area .. dest.room ..'】的革命同志！')
    return find()
end
function tdh_comrade(n,l,w)
    --EnableTriggerGroup("tdh_find",false)
	dis_all()
	flag.find=1
    job.id=string.lower(w[3])
	exe('ask '.. job.id ..' about 反清复明')
	return checkWait(tdh_comrade_ask,3)
end
function tdh_comrade_ask()
    DeleteTriggerGroup("tdh_cask")
    create_trigger_t('tdh_cask1','^( )*'..job.target..'说道：「在(\\D*)有一位叫做(\\D*)的兄弟，他想加入我们天地会。」','','tdhConsider')
	create_trigger_t('tdh_cask2','^( )*'..job.target..'白了你一眼，说：你无聊不无聊啊？','','tdh_qiekou')
	create_trigger_t('tdh_cask3','^( )*'..job.target..'说道：「切口？哈哈，有点意思，你先说说','','tdh_qiekou')

    SetTriggerOption("tdh_cask1","group","tdh_cask")
	SetTriggerOption("tdh_cask2","group","tdh_cask")
	SetTriggerOption("tdh_cask3","group","tdh_cask")
    exe('ask '.. job.id ..' about 切口')
	locate()
	return check_bei(tdh_qiekou,1)
end
function tdh_qiekou()
    if not locl.id [job.target] then
       print("NPC离开了")
	   return check_bei(tdh_find)
	end
--  exe('qiekou')
    return check_busy(tdh_qiekou2)
end

function tdh_qiekou2()
   return exe('qiekou')
end

function tdhConsider(n,l,w)
    EnableTriggerGroup("tdh_cask",false)
	job.where2=Trim(w[2])
	job.target2=Trim(w[3])
	job.room,job.area=getAddr(job.where2)
    dest.room=job.room
    dest.area=job.area
	tmp.tdh = 2
	if WhereIgnores[job.where2] or AddrIgnores[dest.area] or not job.room or not path_cal() then
       messageShow('天地会任务：地点【'..job.where2..'】不可到达，任务放弃。')
       return check_bei(tdh_fangqi_go)
    end
	messageShow('天地会任务：前往【'..job.where2..'】，寻找革命同志！')
    return check_bei(tdh_find) 
end
function tdhProtect(n,l,w)
    --EnableTriggerGroup("tdh_find",false)
	dis_all()
	flag.find=1
    job.id2=string.lower(w[3])
	exe('ask '.. job.id2 ..' about 天地会')
	locate()
	return checkWait(tdhProtectAsk,3)
end
function tdhProtectAsk() 
    if not locl.id [job.target2] then
	   return check_bei(tdh_find)
	end
    DeleteTriggerGroup("tdh_fight")
    create_trigger_t('tdh_fight1','^(> )*(\\D*)(转眼间走的无影无踪。|「啪」的一声倒在地上，挣扎着抽动了几下就死了。)','','tdhDie')
	create_trigger_t('tdh_fight2','^(> )*(\\D*)怒道：“官府缉拿钦犯，闲杂人等闪开！”说罢便与'.. job.target2 ..'战在了一起。','','tdhProtectId')
	create_trigger_t('tdh_fight3','^(> )*(\\D*)叫道：“缉拿钦犯，闲杂人等闪开！”说罢便与你战在了一起。','','tdhProtectId')
    SetTriggerOption("tdh_fight1","group","tdh_fight")
	SetTriggerOption("tdh_fight2","group","tdh_fight")
	SetTriggerOption("tdh_fight3","group","tdh_fight")  
    exe('ask '.. job.id2 ..' about 反清复明')
end
function tdhProtectId(n,l,w)
    dis_all()
	EnableTriggerGroup("tdh_fight",true)
    tmp.kill = tmp.kill or 0
	tmp.kill = tmp.kill + 1
    job.killer[w[2]] = true
    DeleteTriggerGroup("tdhId")
    create_trigger_t('tdhId1','^( )*(\\D*)'.. w[2] ..'\\((\\D*)\\)','','tdhId')
    SetTriggerOption("tdhId1","group","tdhId")
	exe('look')
	exe('set wimpy 100')
end
function tdhId(n,l,w)
    EnableTriggerGroup("tdhId",false)
	for p in pairs(job.killer) do
	    job.killer[p] = string.lower(w[3])
	end
	exe('kill '.. string.lower(w[3]))
end
function tdhDie(n,l,w)
    if job.killer[w[2]] then
	   job.killer[w[2]] = nil
	   locate()
	   exe('hp')
	   return checkNext(tdhPrepare)
	end
end
function tdhPrepare()
    --EnableTriggerGroup("tdh_fight",false)
	if hp.neili < hp.neili_max then
	   return prepare_neili(tdhPrepare)
	end
	if tmp.kill and tmp.kill > 6 then
	   return tdhBack()
	else
	   return check_busy(tdhMove)
	end
end
function tdhMove()
    local l_rooms = getRooms(locl.room,locl.area)
    if tmp.troom and type(tmp.troom)=="table" then
	   for k,v in pairs(tmp.troom) do
	       for _,x in pairs(l_rooms) do
		      if k == x then
			     for y,z in pairs(tmp.troom) do
				     if y ~= k then
					    messageShow(k..' '..v..' '..z..' '..y)
						local l_cmd = v..';'..z
						messageShow(l_cmd)
					    --exe('#5('.. l_cmd ..')')
						exe(l_cmd)
						exe(l_cmd)
						exe(l_cmd)
						exe(l_cmd)
						exe(l_cmd)
					    tmp.tcnt = 1
					    return checkWait(tdhWait,3)
					 end
				 end
			  end
		   end
	   end
	end
	
	tmp.troom = nil
    
	if table.getn(l_rooms)==1 then
	   local l_room = l_rooms[1]
	   if not map.rooms[l_room].no_fight then
	      for p in pairs(map.rooms[l_room].ways) do
	          if dirReverse[p] then
	             local q = dirReverse[p]
	             local r_room = map.rooms[l_room].ways[p]
		         local l_lengths = map.rooms[l_room].lengths
		   	     local r_lengths = map.rooms[r_room].lengths
				 if map.rooms[r_room].no_fight then
				    break
				 end
                 if (not l_lengths or not l_lengths[p]) and (not r_lengths or not r_lengths[q]) then
		   	        if l_room == map.rooms[r_room].ways[q] then
		   		       tmp.troom = {}
		   		  	   tmp.troom[l_room] = p
		   		  	   tmp.troom[r_room] = q
		   		       messageShow(l_room..' '..p..' '..q..' '..r_room)
		   		  	   local l_cmd = p..';'..q
		   		       messageShow(l_cmd)
		   		  	   exe(l_cmd)
		   		  	   exe(l_cmd)
		   		  	   exe(l_cmd)
		   		  	   exe(l_cmd)
		   		  	   exe(l_cmd)
		   		  	   tmp.tcnt = 1
		   		  	   return checkWait(tdhWait,3)
		   		    end
		   	     end
              end			  
	      end
	   end
	end
	exe(locl.dir)
	locate()
	exe('hp')
	return checkNext(tdhPrepare)
end
function tdhWait()
    tmp.tcnt = tmp.tcnt or 1
	tmp.tcnt = tmp.tcnt + 1
	if tmp.tcnt > 6 then
	   return tdhBack()
	end
	locate()
	exe('hp')
	return checkNext(tdhMove)
end
function tdhBack()
    EnableTriggerGroup("tdh_fight",false)
	EnableTriggerGroup("tdhId",false)
	DeleteTriggerGroup("tdh_finish")
    create_trigger_t('tdh_finish1','^(> )*(\\D*)'.. job.target ..'抱拳道：“青山不改，绿水常流，咱们后会有期！”','','tdh_finish')
    SetTriggerOption("tdh_finish1","group","tdh_finish")
    job.room,job.area=getAddr(job.where)
    dest.room=job.room
    dest.area=job.area
	tmp.tdh = 3
	
	local l_rooms = getRooms(locl.room,locl.area)
    if tmp.troom and type(tmp.troom)=="table" then
	   for k,v in pairs(tmp.troom) do
	       for _,x in pairs(l_rooms) do
		      if k == x then
                 road.id = k
			  end
		   end
	   end
	end
	
	tmp.troom = nil
	
    return check_bei(tdh_find) 
end
function tdhStop()
	dis_all()
	EnableTriggerGroup("tdh_finish",true)
	flag.find=1
	locate()
	return checkWait(tdhStopCheck,3)
end
function tdhStopCheck()
    if not locl.id [job.target] then
	   return check_bei(tdh_find)
	end
end
function tdh_finish()
    return check_heal()
end
--丁春秋说道：「哼，你觉得自己一身正气，还来我这做什么？」
--丁春秋在你的耳边悄声说道：此人的武功颇为了得，你可得小心对付哦。
--丁春秋说道：「你快去快回，一切小心啊。」
--丁春秋在你的耳边悄声说道：看你如此努力为我大星宿不辞劳苦工作，我就把追魂钩绝技传授给你吧。
function xingxiuTrigger()
    DeleteTriggerGroup("xingxiuAsk")
    create_trigger_t('xingxiuAsk1',"^(> )*你向丁春秋打听有关",'','xingxiuAsk')
    create_trigger_t('xingxiuAsk2',"^(> )*这里没有这个人。$",'','xingxiuNobody')
    SetTriggerOption("xingxiuAsk1","group","xingxiuAsk")
    SetTriggerOption("xingxiuAsk2","group","xingxiuAsk")
    EnableTriggerGroup("xingxiuAsk",false)
    DeleteTriggerGroup("xingxiuAccept")
    create_trigger_t('xingxiuAccept1',"^(> )*丁春秋在你的耳边悄声说道：据说星宿叛徒(\\D*)的(\\D*)正在(\\D*)捣乱",'','xingxiuConsider')
    create_trigger_t('xingxiuAccept2',"^(> )*丁春秋说道：「我不是告诉你了吗，有人在",'','xingxiuFangqi')
    create_trigger_t('xingxiuAccept3',"^(> )*丁春秋在你的耳边悄声说道：据门派弟子来报，此人是来自(\\D*)尤为擅长(\\D*)的功夫。",'','xingxiuNpc')
    create_trigger_t('xingxiuAccept4',"^(> )*丁春秋说道：「现在暂时没有适合你的工作。」",'','xingxiuFailZ')
    create_trigger_t('xingxiuAccept5',"^(> )*丁春秋说道：「你刚做完(武当锄奸|惩恶扬善|强抢美女|大理送信|长乐帮)任务",'','xingxiuFailX')
    create_trigger_t('xingxiuAccept6',"^(> )*丁春秋说道：「你刚做完星宿叛徒任务",'','xingxiuFailZ')
    create_trigger_t('xingxiuAccept7',"^(> )*丁春秋说道：「\\D*，这个任务确实比较难完成，下次给你简单的，先退下吧！」",'','xingxiuFailZ')
    create_trigger_t('xingxiuAccept8',"^(> )*丁春秋说道：「暂时没有任务需要做，你过一会儿再来吧",'','xingxiuFailZ')
    create_trigger_t('xingxiuAccept9',"^(> )*丁春秋说道：「\\D*，你太让我失望了，居然这么点活都干不好，先退下吧",'','xingxiuFailZ')
    create_trigger_t('xingxiuAccept10',"^(> )*丁春秋说道：「\\D*，你又没在我这里领任务，瞎放弃什么呀",'','xingxiuFailX')
    create_trigger_t('xingxiuAccept11',"^(> )*丁春秋说道：「哼，你觉得自己一身正气，还来我这做什么",'','xingxiuShen')
    create_trigger_t('xingxiuAccepta',"^(> )*丁春秋在你的耳边悄声说道：此人的武功(\\D*)，你可得小心对付哦。",'','xingxiulevel')
    create_trigger_t('xingxiuAcceptb',"^(> )*丁春秋在你的耳边悄声说道：贫道已追查到此人是我(\\D*)出身，尤为擅长(\\D*)的功夫。",'','xingxiuNpc')
    create_trigger_t('xingxiuAcceptc',"^(> )*丁春秋说道：「你快去快回，一切小心啊。」",'','xingxiuPrint')

    SetTriggerOption("xingxiuAccept1","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept2","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept3","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept4","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept5","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept6","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept7","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept8","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept9","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept10","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccept11","group","xingxiuAccept")
    SetTriggerOption("xingxiuAccepta","group","xingxiuAccept")
    SetTriggerOption("xingxiuAcceptb","group","xingxiuAccept")
    SetTriggerOption("xingxiuAcceptc","group","xingxiuAccept")

    EnableTriggerGroup("xingxiuAccept",false)
    DeleteTriggerGroup("xingxiuFight")
    create_trigger_t('xingxiuFight1','^(> )*(\\D*)「啪」的一声倒在地上','','xingxiuBack')
    create_trigger_t('xingxiuFight2','^(> )*(\\D*)大喊一声：不好！！转身几个起落就不见了','','xingxiuBack')
    create_trigger_t('xingxiuFight3',"^(> )*这里没有(\\D*)。",'','xingxiuLost')
    create_trigger_t('xingxiuFight4',"^(> )*(\\D*)对着你发出一阵阴笑，说道",'','xingxiuKillAct')
    create_trigger_t('xingxiuFight5',"^(> )*(\\D*)大喊一声：老子不奉陪了！转身几个起落就不见了",'','xingxiuBack')
    SetTriggerOption("xingxiuFight1","group","xingxiuFight")
    SetTriggerOption("xingxiuFight2","group","xingxiuFight")
    SetTriggerOption("xingxiuFight3","group","xingxiuFight")
    SetTriggerOption("xingxiuFight4","group","xingxiuFight")
    SetTriggerOption("xingxiuFight5","group","xingxiuFight")
    EnableTriggerGroup("xingxiuFight",false)
    DeleteTriggerGroup("xingxiuFinish")
    create_trigger_t('xingxiuFinish1','^(> )*丁春秋对着你竖起了右手大拇指，好样的。','','xingxiuFinishT')
    create_trigger_t('xingxiuFinish2',"^(> )*丁春秋被你气得昏了过去。",'','xingxiuFinish')
    create_trigger_t('xingxiuFinish3',"^(> )*丁春秋说道：「"..score.name.."你怎么搞的",'','xingxiuFinish')
    SetTriggerOption("xingxiuFinish1","group","xingxiuFinish")
    SetTriggerOption("xingxiuFinish2","group","xingxiuFinish")
    SetTriggerOption("xingxiuFinish3","group","xingxiuFinish")
    EnableTriggerGroup("xingxiuFinish",false)
    DeleteTriggerGroup("xingxiuQuest")
    create_trigger_t('xingxiuQuest1',"^(> )*丁春秋在你的耳边悄声说道：看你如此努力为我大星宿不辞劳苦工作，我就把追魂钩绝技传授给你吧。",'','xingxiuQuest')
    create_trigger_t('xingxiuQuest2',"^(> )*丁春秋说道：「你能领悟了天山杖法追魂绝技的精意，那么江湖谁是你的敌手",'','xingxiuQuest')
    SetTriggerOption("xingxiuQuest1","group","xingxiuQuest")
    SetTriggerOption("xingxiuQuest2","group","xingxiuQuest")
    EnableTriggerGroup("xingxiuQuest",false)
end

function xingxiulevel(n,l,w)
    job.level=tostring(w[2])
end
function xingxiuPrint()
    EnableTriggerGroup("xingxiuAccept",false)
    if job.where~="前方高能通行禁止" or job.where~="力不从心通行禁止" then
        print('**********************************************')
        print(job.area)
        print(job.room)
        print(job.target)
        print(job.skills)
        if job.level then print(job.level) end
        print('**********************************************')
   end
end
function xingxiuTriggerDel()
    DeleteTriggerGroup("xingxiuAsk")
    DeleteTriggerGroup("xingxiuAccept")
    DeleteTriggerGroup("xingxiuFight")
    DeleteTriggerGroup("xingxiuFinish")
    DeleteTriggerGroup("xingxiuFind")
    DeleteTriggerGroup("xingxiuQuest")
end
function xingxiuNobody()
    EnableTriggerGroup("xingxiuAsk",false)
    xingxiu()
end
function xingxiuShen()
--    return turnShen('-')
	   if score.party and score.party=="星宿派" then
	      return turnShen('-')
	   else
	      return check_Xqw(xingxiu)
	   end
end

job.list["xingxiu"] ="星宿除叛徒"
function xingxiu()
--[[
    if hp.shen>=0 then
	   return turnShen('-')
    end
]]
    if hp.shen>=0 then
	   if score.party and score.party=="星宿派" then
	      return turnShen('-')
	   else
	      return check_Xqw(xingxiu)
	   end
	end
	
    xingxiuTrigger()
    job.name='xingxiu'
    job.time.b=os.time()
    return prepare_lianxi(xingxiuGo)
end
jobFindAgain = jobFindAgain or {}
jobFindAgain["xingxiu"] = "xingxiuFindAgain"
jobFindFail = jobFindFail or {}
jobFindFail["xingxiu"] = "xingxiuFindFail"
function xingxiuFindAgain()
    EnableTriggerGroup("xingxiuFind",false)
    return go(xingxiuFindAct,dest.area,dest.room)
end
faintFunc = faintFunc or {}
faintFunc["xingxiu"] = "xingxiuFindFail"
function xingxiuFindFail()
    messageShowDebug('寻找失败：【'..job.where..'】')
    EnableTriggerGroup("xingxiuFind",false)
    return go(xingxiuFangqi,"星宿海","日月洞")
end
function xingxiuGo()
    return go(xingxiuStart,"星宿海","日月洞")
end
function xingxiuStart()
    EnableTriggerGroup("xingxiuAsk",true)
    return exe('ask ding chunqiu about 叛徒')
end
function xingxiuAsk()
    EnableTriggerGroup("xingxiuAsk",false)
    EnableTriggerGroup("xingxiuAccept",true)
end
function xingxiuBusy()
    EnableTriggerGroup("xingxiuAccept",false)
    job.last='xingxiu'
    return check_bei(xingxiuBusyDazuo)
end
function xingxiuBusyDazuo()
    exe('n')
    return prepare_lianxiz(check_heal)
end
function xingxiuFail()
    flag.idle = 0
    EnableTriggerGroup("xingxiuAccept",false)
    job.last='xingxiu'
    wait.make(function()
         wait.time(3)
	     check_heal()
         end)
end
function xingxiuFailX()
    EnableTriggerGroup("xingxiuAccept",false)
    flag.idle = 0
    job.xxtime=os.time() + 5*60
    return prepare_lianxiz(xingxiuStart)
end
function xingxiuFailZ()
    EnableTriggerGroup("xingxiuAccept",false)
    DeleteTriggerGroup("xingxiuAsk")
    DeleteTriggerGroup("xingxiuAccept")
    flag.idle = 0
    job.xxtime=os.time() + 5*60
    if job.last and job.last=="xueshan" then
            flag.sx2=true
	    return check_busy(songxin)
    elseif job.last and (job.last=="songxin" or job.last=="xingxiu") then
	    return check_busy(xueshan)
    else
	    return check_busy(xingxiu)
    end
end
function xingxiuConsider(n,l,w)
    messageShow('星宿任务：开始！')
    job.last='xingxiu'
    job.target=Trim(w[3])
    job.killer={}
    job.killer[job.target]=true
    job.where=Trim(w[4])
    if string.find(job.where,"周围") then
	   local l_cnt = string.find(job.where,"周围")
	   job.where=string.sub(job.where,1,l_cnt-1)
    end
    if (job.where=="星宿海石道" or job.where=="星宿海厨房" or job.where=="星宿海天然石洞" or job.where=="星宿海逍遥洞") and hp.exp<2000000 and (score.party~="星宿派" or score.party~="普通百姓") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林藏经阁" and hp.exp<500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="扬州城府衙后院" and hp.exp<1000000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="大雪山法堂二楼" or job.where=="大雪山萨迦法堂") and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="莆田少林静室" and hp.exp<2800000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="嵩山派石道" or job.where=="嵩山派崇高峻极坊" or job.where=="嵩山派峻极殿" or job.where=="嵩山派碎石路" or job.where=="嵩山派御书楼" or job.where=="嵩山派轩辕剑阁" or job.where=="嵩山派藏书阁" or job.where=="嵩山派掌门书房" or job.where=="嵩山派寝殿" or job.where=="嵩山派掌门卧室" or job.where=="嵩山派男弟子休息室" or job.where=="嵩山派女弟子休息室" or job.where=="嵩山派配天作镇坊" or job.where=="嵩山派封禅台") and hp.shen>0 and score.party~="嵩山派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="峨嵋山藏经楼" and hp.exp<4200000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if job.where=="明教龙王殿" and hp.exp<9400000 then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山小径" or job.where=="武当山院门" or job.where=="武当山后山小院" or job.where=="武当山西厢走廊" or job.where=="武当山东厢走廊" or job.where=="武当山厨房" or job.where=="武当山藏经阁" or job.where=="武当山男休息室" or job.where=="武当山女休息室") and hp.exp<9400000 and score.party~="武当派" and score.party~="普通百姓" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if (job.where=="武当山炼丹房" or job.where=="武当山练功房" or job.where=="武当山药房") and hp.exp<6400000 and score.party~="武当派" then
       messageShowDebug('【'..job.where..'】')
       job.where="前方高能通行禁止"
    end
    if score.master~="蓝凤凰" and (job.where=="苗疆山路" or job.where=="苗疆山洞" or job.where=="苗疆大门" or job.where=="苗疆山坡" or job.where=="苗疆前厅" or job.where=="苗疆厨房" or job.where=="苗疆兵器房" or job.where=="苗疆明月厅" or job.where=="苗疆蛇房" or job.where=="苗疆卧室") then
       messageShowDebug('【'..job.where..'】')
       job.where="前方有毒通行禁止"
    end

    job.room,job.area=getAddr(job.where)

    if type(job.room)=="string" and string.find(job.room,"字门") then
       job.room="紫杉林"
    end
end
function xingxiuNpc(n,l,w)
    job.skills=tostring(w[3])
    dest.room=job.room
    dest.area=job.area
    job.xxtime=os.time() + 8*60
--[[
   if GetVariable("xxjoblevel") then
      xxjoblevel=GetVariable("xxjoblevel")
   else
      xxjoblevel='颇为了得|极其厉害|已入化境'
   end
]]
    if Yiliaddr[job.where] then
       locate_z()
       if MidNight[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('星宿任务：伊犁暮色已沉，任务放弃。')
           return check_bei(xingxiuFangqi)
       end
    end
	
    if Shopaddr[job.where] then
       locate_z()
       if MidNight_z[locl.time] then
           messageShowDebug('【'..job.where..'】')
           messageShow('星宿任务：酒楼商铺已关门，任务放弃。')
           return check_bei(xingxiuFangqi)
       end
    end

    if job.area=="黑木崖" then
       if score.party~="日月神教" and (hp.exp<2000000 or hp.neili_max<4000) then
           messageShowDebug('【'..job.where..'】')
	   return check_bei(xingxiuFangqi)
	elseif score.party=="日月神教" and hp.neili_max<4000 then
	   messageShowDebug('【'..job.where..'】')
	   return check_bei(xignxiuFangqi)
       end
    end
    if job.area=="神龙岛" and job.where~="神龙岛海滩" and job.target~="商人" and score.party~="神龙教" then
       messageShowDebug('【'..job.where..'】')
       messageShow('星宿任务：地点【'..job.where..'】晕船，任务放弃。')
       return check_bei(xingxiuFangqi)
    end
    if job.area=="归云庄" and (not skills["qimen-bagua"] or skills["qimen-bagua"].lvl<31) then
       messageShowDebug('【'..job.where..'】')
       messageShow('星宿任务：地点【'..job.where..'】迷宫，任务放弃。')
       return check_bei(xingxiuFangqi)
    end
--    if (score.party~="姑苏慕容" or score.party~="普通百姓") and (job.area=="姑苏慕容" or job.area=="燕子坞" or job.area=="曼佗罗山庄") then
    if (score.party~="姑苏慕容" or score.party~="普通百姓") and job.area=="曼佗罗山庄" then
       messageShowDebug('【'..job.where..'】')
       messageShow('星宿任务：地点【'..job.where..'】太远，任务放弃。')
       return check_bei(xingxiuFangqi)
    end
    if job.area=="绝情谷" and hp.exp<1500000 then
       messageShowDebug('【'..job.where..'】')
       messageShow('星宿任务：地点【'..job.where..'】门卫，任务放弃。')
       return check_bei(xingxiuFangqi)
    end
    if WhereIgnores[job.where] or AddrIgnores[dest.area] or not job.room or not path_cal() then
       messageShowDebug('【'..job.where..'】')
       messageShow('星宿任务：地点【'..job.where..'】不可到达，任务放弃。')
       return check_bei(xingxiuFangqi)
    end
--[[
    if not string.find(xxjoblevel,job.level) then
       messageShow('星宿任务：【'..job.level..'】的'.. job.target ..'太强，任务放弃。')
       return check_bei(xingxiuFangqi)
    end
]]
    if skillIgnores[job.skills] then
       messageShow('星宿任务：'.. job.target ..'使用的武功【'..job.skills..'】不可力敌，任务放弃。')
       return check_bei(xingxiuFangqi)
    else
       messageShow('星宿任务：前往【'..job.where..'】！')
       return check_bei(xingxiuFind)
    end
end
function xingxiuFangqiGo()
    go(xingxiuFangqi,'星宿海','日月洞')
end
function xingxiuFangqi()
    EnableTriggerGroup("xingxiuAccept",false)
    check_bei(xingxiuFangqiAsk)
end
function xingxiuFangqiAsk()
    EnableTriggerGroup("xingxiuAsk",true)
    exe('ask ding chunqiu about 放弃')
end
function xingxiuFind()
    DeleteTriggerGroup("xingxiuFind")
    create_trigger_t('xingxiuFind1','^(> )*\\D*'..job.target..'\\((\\D*)\\)','','xingxiuTarget')
    --create_trigger_t('xingxiuFind2',"^(> )*".. job.target .."对着你发出一阵阴笑，说道",'','xingxiuFindKill')
    SetTriggerOption("xingxiuFind1","group","xingxiuFind")
    --SetTriggerOption("xingxiuFind2","group","xingxiuFind")
    --EnableTrigger("xingxiuFind1",false)
    flag.times=1
    flag.robber=false
    exe('unset wimpy')
    go(xingxiuFindAct,job.area,job.room)    
end
function xingxiuFindAct()
    EnableTriggerGroup("xingxiuFind",true)
    DeleteTimer("xingxiu")
    job.flag()
    fight_prepare()
    exe('look')
    find()
    messageShow('星宿任务：开始寻找【'..dest.area .. dest.room ..'】的'..'【'.. job.target ..'】！')
end
function xingxiuFindKill()
    dis_all()
    flag.robber=true
    EnableTriggerGroup("xingxiuFind",true)
    exe('look')
end
function xingxiuTarget(n,l,w)
    EnableTriggerGroup("xingxiuFind",false)
    dis_all()
    EnableTriggerGroup("xingxiuFight",true)
    job.id=string.lower(w[2])
    job.killer[job.target]=job.id
    exe('follow '..job.id)
    exe('kick '..job.id)
    xingxiuKill()
    create_timer_s('xingxiu',5,'xingxiuMove')
end
function xingxiuMove()
    --EnableTriggerGroup("xingxiuFight",false)
    --DeleteTimer("xingxiu")
	if job.id then
	   exe('kick '..job.id)
	   exe('kill '..job.id)
	end
    --exe(locl.dir)
    --xingxiuFind()
end
function xingxiuLost(n,l,w)
    if job.id==Trim(w[2]) then
       dis_all()
       return xingxiuFind()
    end
end
function xingxiuKill()
    wait.make(function()
         wait.time(1)
	 xingxiuKillAct()
    end)
end
function xingxiuKillAct()
    --DeleteTimer("xingxiu")
    flag.robber=true
    exe('kick '..job.id)
    killPfm(job.id)
end
function xingxiuBack(n,l,w)
    DeleteTimer("xingxiu")
    if w[2]==job.target then
       EnableTriggerGroup("xingxiuFight",false)
       EnableTriggerGroup("xingxiuFinish",true)
       tmp.number=0
       DeleteTimer("perform")
       DeleteTimer("xingxiu")
       check_halt(xingxiuBackGet)
       messageShow('星宿任务：搞定使用【'..job.skills..'】的'..'【'.. job.target ..'】！')
    end
end
function xingxiuBackGet()
     for i=1,2 do
       exe('get gold from corpse '..i)
	   if score.gold<5000 then
	      exe('get silver from corpse '..i)
	   end
    end
    return go(xingxiuFinishWait,'星宿海','日月洞')
end
function xingxiuFinishWait()
	if locl.id["丁春秋"] then
	   EnableTriggerGroup("xingxiuFinish",true)
	   EnableTriggerGroup("xingxiuQuest",true)
--	   exe('ask ding chunqiu about 完成')
	   return check_busy(xingxiuFinishAsk)
	else
	   return go(xingxiuFinishWait,'星宿海','日月洞')
	end
end
function xingxiuFinishAsk()
    exe('ask ding chunqiu about 完成')
end
function xingxiuFinishT()
    job.last="xingxiu"
    job.xxtime=0
--    return xingxiuFinish()
    EnableTriggerGroup("xingxiuFinish",false)
    --tmp.number=0
    return check_halt(check_heal)
end
function xingxiuQuest()
    exe('alias 天山杖法 搞掂')
end
function xingxiuFinish()
    job.last="xingxiufail"
    EnableTriggerGroup("xingxiuFinish",false)
    wait.make(function()
         wait.time(3)
	 check_heal()
    end)
end

--[[
ask shi about job
你向铸剑师打听有关『job』的消息。
铸剑师轻轻地拍了拍你的头。
铸剑师在你的耳边悄声说道：快帮我把宝剑送给付铜，他在襄阳城营帐中周围方圆五里之内。
铁匠给你一把刚刚打造好的定制宝剑。
铸剑师说道：「好好干活，我不会亏待你的。」

  付铜(Fu tong)
> 付铜「哈哈哈」大笑几声。
song fu tong
付铜「哈哈哈」大笑几声。
你把刚刚打造好的定制宝剑送给付铜。
付铜慢慢离开了。

ask shi about reward
你向铸剑师打听有关『reward』的消息。
铸剑师对着你鼓起掌来，干得好。
你的「锻造术」进步了！
铸剑师仔细向你讲解锻造的诀窍，你的锻造技术提升了三百五十二点技能点数，和十七点经验！
铸剑师说道：「好样的，干活真利索，以后有空还来我这里干活啊。」

铸剑师说道：「我不是叫你把宝剑送给嵩山少林般若堂五部附近的慕容凯了吗！」

> ask shi about 放弃
你向铸剑师打听有关『放弃』的消息。
你把定制宝剑还给铸剑师。
铸剑师对你失望极了：“你没救了。”
铸剑师说道：「没想到这么简单的事情你都做不了！」

铸剑师说道：「你太忙了吧，要注意休息啊。」

铸剑师说道：「你要放弃什么？」

]]
function zhujianTrigger()
    DeleteTriggerGroup("zhujianAsk")
    create_trigger_t('zhujianAsk1',"^(> )*你向铸剑师打听有关",'','zhujianAsk')
    create_trigger_t('zhujianAsk2',"^(> )*这里没有这个人。$",'','zhujianNobody')
    SetTriggerOption("zhujianAsk1","group","zhujianAsk")
    SetTriggerOption("zhujianAsk2","group","zhujianAsk")
    EnableTriggerGroup("zhujianAsk",false)
    DeleteTriggerGroup("zhujianAccept")
    create_trigger_t('zhujianAccept1',"^(> )*铸剑师在你的耳边悄声说道：快帮我把宝剑送给(\\D*)，他在(\\D*)",'','zhujianConsider')
    create_trigger_t('zhujianAccept2',"^(> )*铸剑师说道：「我不是叫你把宝剑送给",'','zhujianFangqi')
    create_trigger_t('zhujianAccept3',"^(> )*铸剑师在你的耳边悄声说道：据门派弟子来报，此人是来自(\\D*)尤为擅长(\\D*)的功夫。",'','zhujianNpc')
    create_trigger_t('zhujianAccept4',"^(> )*铸剑师说道：「你太忙了吧，要注意休息啊。」",'','zhujianFail')
    create_trigger_t('zhujianAccept5',"^(> )*铸剑师说道：「你刚做完(武当锄奸|星宿叛徒|惩恶扬善|大理送信)任务",'','zhujianFail')
    create_trigger_t('zhujianAccept6',"^(> )*铸剑师说道：「\\D*，这个任务确实比较难完成，下次给你简单的，先退下吧！」",'','zhujianFail')
    create_trigger_t('zhujianAccept7',"^(> )*铸剑师说道：「暂时没有任务需要做，你过一会儿再来吧",'','zhujianFail')
    create_trigger_t('zhujianAccept8',"^(> )*铸剑师对你失望极了：“你没救了。”",'','zhujianFail')
    create_trigger_t('zhujianAccept9',"^(> )*铸剑师说道：「你要放弃什么？」",'','zhujianFail')

    SetTriggerOption("zhujianAccept1","group","zhujianAccept")
    SetTriggerOption("zhujianAccept2","group","zhujianAccept")
    SetTriggerOption("zhujianAccept3","group","zhujianAccept")
    SetTriggerOption("zhujianAccept4","group","zhujianAccept")
    SetTriggerOption("zhujianAccept5","group","zhujianAccept")
    SetTriggerOption("zhujianAccept6","group","zhujianAccept")
    SetTriggerOption("zhujianAccept7","group","zhujianAccept")
    SetTriggerOption("zhujianAccept8","group","zhujianAccept")
    SetTriggerOption("zhujianAccept9","group","zhujianAccept")
    EnableTriggerGroup("zhujianAccept",false)

    DeleteTriggerGroup("zhujianGive")
    create_trigger_t('zhujianGive1','^(> )*(\\D*)「哈哈哈」大笑几声。','','zhujianGiveAct')
    create_trigger_t('zhujianGive2','^(> )*你把刚刚打造好的定制宝剑送给(\\D*)。','','zhujianBack')
    create_trigger_t('zhujianGive3',"^(> )*这里没有(\\D*)。",'','zhujianLost')
    SetTriggerOption("zhujianGive1","group","zhujianGive")
    SetTriggerOption("zhujianGive2","group","zhujianGive")
    SetTriggerOption("zhujianGive3","group","zhujianGive")
    EnableTriggerGroup("zhujianGive",false)

    DeleteTriggerGroup("zhujianFinish")
    create_trigger_t('zhujianFinish1','^(> )*铸剑师对着你鼓起掌来，干得好。','','zhujianFinishT')
    create_trigger_t('zhujianFinish2',"^(> )*铸剑师被你气得昏了过去。",'','zhujianFinish')
    SetTriggerOption("zhujianFinish1","group","zhujianFinish")
    SetTriggerOption("zhujianFinish2","group","zhujianFinish")
    EnableTriggerGroup("zhujianFinish",false)

    DeleteTriggerGroup("zhujianQuest")
    create_trigger_t('zhujianQuest1',"^(> )*铸剑师说道：「你能领悟了天山杖法追魂绝技的精意，那么江湖谁是你的敌手",'','zhujianQuest')
    SetTriggerOption("zhujianQuest1","group","zhujianQuest")
    EnableTriggerGroup("zhujianQuest",false)
end

function zhujianTriggerDel()
    DeleteTriggerGroup("zhujianAsk")
    DeleteTriggerGroup("zhujianAccept")
    DeleteTriggerGroup("zhujianGive")
    DeleteTriggerGroup("zhujianFinish")
    DeleteTriggerGroup("zhujianFind")
    DeleteTriggerGroup("zhujianQuest")
end
function zhujianNobody()
    EnableTriggerGroup("zhujianAsk",false)
    zhuJian()
end

job.list["zhujian"] ="宝剑运送"

function zhuJian()
    zhujianTrigger()
    job.name='zhujian'
    job.time.b=os.time()
    return prepare_lianxi(zhujianGo)
end
jobFindAgain = jobFindAgain or {}
jobFindAgain["zhujian"] = "zhujianFindAgain"
jobFindFail = jobFindFail or {}
jobFindFail["zhujian"] = "zhujianFindFail"
function zhujianFindAgain()
    EnableTriggerGroup("zhujianFind",false)
    return go(zhujianFindAct,dest.area,dest.room)
end
faintFunc = faintFunc or {}
faintFunc["zhujian"] = "zhujianFindFail"
function zhujianFindFail()
    messageShowDebug('寻找失败：【'..job.where..'】')
    EnableTriggerGroup("zhujianFind",false)
    return go(zhujianFangqi,"扬州城","兵器铺")
end
function zhujianGo()
    return go(zhujianStart,"扬州城","兵器铺")
end
function zhujianStart()
    EnableTriggerGroup("zhujianAsk",true)
    return exe('ask zhujian shi about job')
end
function zhujianAsk()
    EnableTriggerGroup("zhujianAsk",false)
    EnableTriggerGroup("zhujianAccept",true)
end
function zhujianBusy()
    EnableTriggerGroup("zhujianAccept",false)
    job.last='zhujian'
    return check_bei(zhujianBusyDazuo)
end
function zhujianBusyDazuo()
    exe('n')
    return prepare_lianxiz(check_heal)
end
function zhujianFail()
    flag.idle = 0
    EnableTriggerGroup("zhujianAccept",false)
    job.last='zhujian'
    wait.make(function()
         wait.time(3)
	 check_heal()
    end)
end
function zhujianConsider(n,l,w)
    messageShow('宝剑运送：开始！')
    job.last='zhujian'
    job.target=Trim(w[3])
    job.killer={}
    job.killer[job.target]=true
    job.where=Trim(w[4])
	if string.find(job.where,"周围") then
	   local l_cnt = string.find(job.where,"周围")
	   job.where=string.sub(job.where,1,l_cnt-1)
	end
    
    job.room,job.area=getAddr(job.where)
	if type(job.room)=="string" and string.find(job.room,"字门") then
	   job.room="紫杉林"
	end
end
function zhujianNpc(n,l,w)
    EnableTriggerGroup("zhujianAccept",false)
    job.skills=tostring(w[3])
    dest.room=job.room
    dest.area=job.area
    job.zjtime=os.time() + 8*60
    if WhereIgnores[job.where] or not job.room or not path_cal() then
       messageShow('宝剑运送：地点【'..job.where..'】不可到达，任务放弃。')
       return check_bei(zhujianFangqi)
    end
	   messageShow('宝剑运送：前往【'..job.where..'】！')
           return check_bei(zhujianFind)
end
function zhujianFangqiGo()
    go(zhujianFangqi,'扬州城','兵器铺')
end
function zhujianFangqi()
    EnableTriggerGroup("zhujianAccept",false)
    check_bei(zhujianFangqiAsk)
end
function zhujianFangqiAsk()
    EnableTriggerGroup("zhujianAsk",true)
    exe('ask zhujian shi about 放弃')
end
function zhujianFind()
    DeleteTriggerGroup("zhujianFind")
    create_trigger_t('zhujianFind1','^(> )*\\D*'..job.target..'\\((\\D*)\\)','','zhujianTarget')
    SetTriggerOption("zhujianFind1","group","zhujianFind")
    flag.times=1
    flag.robber=false
    exe('unset wimpy')
    go(zhujianFindAct,job.area,job.room)    
end
function zhujianFindAct()
    EnableTriggerGroup("zhujianFind",true)
    DeleteTimer("zhujian")
    job.flag()
    fight_prepare()
    exe('look')
    find()
    messageShow('宝剑运送：开始寻找【'..dest.area .. dest.room ..'】的'..'【'.. job.target ..'】！')
end
function zhujianFindKill()
    dis_all()
    flag.robber=true
    EnableTriggerGroup("zhujianFind",true)
    exe('look')
end
function zhujianTarget(n,l,w)
    EnableTriggerGroup("zhujianFind",false)
    dis_all()
    EnableTriggerGroup("zhujianGive",true)
    job.id=string.lower(w[2])
    job.killer[job.target]=job.id
    exe('follow '..job.id)
    zhujianGive()
    create_timer_s('zhujian',5,'zhujianMove')
end
function zhujianMove()
	if job.id then
	   exe('song '..job.id)
	end
end
function zhujianLost(n,l,w)
    if job.id==Trim(w[2]) then
       dis_all()
       return zhujianFind()
    end
end
function zhujianGive()
    wait.make(function()
         wait.time(1)
	 zhujianGiveAct()
    end)
end
function zhujianGiveAct()
    flag.robber=true
    exe('song '..job.id)
end
function zhujianBack(n,l,w)
    DeleteTimer("zhujian")
    if w[2]==job.target then
       EnableTriggerGroup("zhujianGive",false)
       EnableTriggerGroup("zhujianFinish",true)
       tmp.number=0
       DeleteTimer("zhujian")
       check_halt(zhujianBackGet)
       messageShow('宝剑运送：送抵'..'【'.. job.target ..'】！')
    end
end
function zhujianBackGet()
    return go(zhujianFinishWait,'扬州城','兵器铺')
end
function zhujianFinishWait()
	if locl.id["铸剑师"] then
	   EnableTriggerGroup("zhujianFinish",true)
	   EnableTriggerGroup("zhujianQuest",true)
	   return check_busy(zhujianFinishAsk)
	else
	   return go(zhujianFinishWait,'扬州城','兵器铺')
	end
end
function zhujianFinishAsk()
    exe('ask zhujian shi about 完成')
end
function zhujianFinishT()
    job.last="zhujian"
    job.zjtime=0
    EnableTriggerGroup("zhujianFinish",false)
    return check_halt(check_heal)
end
function zhujianQuest()
    SetVariable("timengxf",os.date())
end
function zhujianFinish()
    job.last="zhujianfail"
    EnableTriggerGroup("zhujianFinish",false)
    wait.make(function()
         wait.time(3)
	 check_heal()
    end)
end

function messageShow(p_msg,ccolor,bcolor) 
    local c_color = ccolor or "#eadb76"
    local b_color = bcolor or "#272822"
	
	if isNil(p_msg) then return end
	
    if GetVariable("flagnote") then
	   flag.note = tonumber(GetVariable("flagnote"))
	end
	if flag.note and flag.note==1 then
	   --if job.name == "hubiao" then
 	      if flag.log and flag.log=="yes" then
	         chats_log(p_msg,ccolor,bcolor)
	      else
             ColourNote ("white","blue",p_msg)
	      end
	   --end
	else
	   chats_log(p_msg,ccolor,bcolor)
	end
end

function messageShowT(p_msg,ccolor,bcolor) 
    local c_color = ccolor or "deepskyblue"
    local b_color = bcolor or "#272822"
	
   if isNil(p_msg) then return end
   chats_log(p_msg,c_color,b_color)
end

function messageShowDebug(p_msg,ccolor,bcolor) 
    local c_color = ccolor or "white"
    local b_color = bcolor or "green"
    if isNil(p_msg) then return end
	
    if GetVariable("flagnote") then
	   flag.note = tonumber(GetVariable("flagnote"))
	end
    if flag.note and flag.note==1 then
	   --if job.name == "hubiao" then
 	      if flag.log and flag.log=="yes" then
	         chats_debug(p_msg,c_color,b_color)
	      else
                 ColourNote ("white","blue",p_msg)
	      end
	   --end
	else
	   chats_debug(p_msg,c_color,b_color)
	end
end

function varShow(p_var)
    messageShow(p_var..': '.. _G[p_var])
end

function setJobwhere(p)
    job.where = p
end

function scr_Log()
    local filename = GetInfo (67) .. "logs\\ScrLog-" .. score.id .. os.time() .. ".log"
    local file = io.open(filename,"w")
    local t = {}
    for i = 1,GetLinesInBufferCount() do
        table.insert(t,GetLineInfo(i,1))
    end
   
    local s = table.concat(t,"\n") .. "\n"
    file:write(s)

    file:close()
end
