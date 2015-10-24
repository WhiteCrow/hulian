ChaptonArray = [
  ["后退，我要开始装逼了"],
  ["喂120吗", "我太帅了睡不着咋整"],
  ["不约，叔叔我们不约"],
  ["我宣布！", "朋友圈装逼大赛正式开始"],
  ["你要是有实力陪我玩", "我不介意奉陪到底"],
  ["too young, too simple", "太年轻，太天真了"],
  ["我告诉你", "我那时身经百战了"],
  ["突然，好想装逼啊"],
  ["一看就是装逼多年的高手", "是在下输了"],
  ["你说什么！", "我听不见！"],
  ["你不要这样看着我", "我的脸会变红苹果"],
  ["吃屎吧！梁！非！凡！"],
  ["我有知识我自豪！", "我是蓝猫我最屌！"],
  ["你的脸皮是JUMP封面么", "每周换一次"],
  ["大家一起牵着手来上厕所吗", "马桶不够哦。"],
  ["每个人的心里", "都有一个反坦克火箭炮"],
]

ChaptonArray.each do |arr|
  Caption.create!(line1: arr[0], line2: arr[1])
end

Dir.foreach('tmp/assets') do |item|
  next if item == '.' || item == '..'
  base_image = BaseImage.new
  base_image.image = File.open('tmp/assets/' + item)
  base_image.save!
end