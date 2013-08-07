#-*- coding: utf-8 -*-
#!/usr/bin/ruby
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#create categories
Category.all.each do |category|
	category.destroy
end
Category.create([
	{name: '娱乐'},
	{name: '生活'},
	{name: '工具'},
	{name: '系统'},
	{name: '导航'},
	{name: '地图'},
	{name: '购物'},
	{name: '社交'},
	{name: '阅读'},
	{name: '影音'},
	{name: '安全'},
	{name: '主题'},
	{name: '桌面'},
	{name: '办公'},
	{name: '理财'},
	{name: '教育'},
	{name: '摄影'},
	{name: '旅游'},
	{name: '健康'},
	{name: '新闻'},
	{name: '店铺'},
	{name: '其它'}
])

MobileDevice.all.each do |device|
	device.destroy
end

MobileDevice.create([
	{name: "iPhone 3G"},
	{name: "iPhone 3G及以上"},
	{name: "iPhone 3G S"},
	{name: "iPhone 3G S及以上"},
	{name: "iPhone 4"},
	{name: "iPhone 4及以上"},
	{name: "iPhone 5"},
	{name: "iPad"},
	{name: "iPad 及以上"},
	{name: "iPad 2"},
	{name: "iPad 2 及以上"},
	{name: "New iPad"},
	{name: "New iPad 及以上"},
	{name: "iPad 4"},
	{name: "iPad 4 及以上"},
	{name: "iPad Mini"}
])

MobileResolution.all.each do |device|
	device.destroy
end

MobileResolution.create([
	{name: "480x320像素"},
	{name: "480x320像素及以上"},
	{name: "960x640像素"},
	{name: "960x640像素及以上"},
	{name: "1136x640像素"},
	{name: "1024x768像素"},
	{name: "2048×1536像素"}
])

