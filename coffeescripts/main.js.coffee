lang = window.navigator.userLanguage || window.navigator.language
relang = lang.toLowerCase()
if relang is "zh-tw" then $('html').attr('lang','tw') else $('html').attr('lang','en')

app = angular.module('main',[])
app.controller('langController', ->
	this.content = tw
	# if $('html').attr('lang') is "tw"
	# 	this.content = tw
	# else
	# 	this.content = en		   
)

tw = {
	#主選項
	navs: {
		a:{
			title: "我做什麼",
			method: ->
				$('body').animate({ scrollTop : $('#skills').offset().top },600)
			},
		b:{
			title: "關於我",
			method: ->
				$('body').animate({ scrollTop : $('#about').offset().top },600)
			},
		c:{
			title: "近期作品",
			method: ->
				$('body').animate({ scrollTop : $('#portfolio').offset().top },600)
			},
		d:{
			title: "聯絡我",
			method: ->
				$('body').animate({ scrollTop : $('body').height() },600)
		}
		},
	navs_phone: {
		a:{
			title: "首頁",
			method: ->
				$('body').animate({ scrollTop : 0},600)
				$('.cd-nav-trigger').click()
			},
		b:{
			title: "我做什麼",
			method: ->
				$('body').animate({ scrollTop : $('#skills').offset().top },600)
				$('.cd-nav-trigger').click()
			},
		c:{
			title: "關於我",
			method: ->
				$('body').animate({ scrollTop : $('#about').offset().top },600)
				$('.cd-nav-trigger').click()
			},
		d:{
			title: "近期作品",
			method: ->
				$('body').animate({ scrollTop : $('#portfolio').offset().top },600)
				$('.cd-nav-trigger').click()
			},
		e:{
			title: "聯絡我",
			method: ->
				$('body').animate({ scrollTop : $('body').height() },600)
				$('.cd-nav-trigger').click()
		}
		},
	#首頁
	home: {
		welcome: "哈囉！歡迎來到我的工作室，我是",
		hint: "我專注於結合設計與程式，製作出現代化的產品以及提供極佳的使用者體驗。"
		},
	#服務項目
	skills: {
		title: "技術能力",
		sorts:{
			a: {
				class: "uxui",
				icon: "#brain",
				title: "設計思維",
				desc: "良好的使用者經驗，是決定使用者是否會繼續使用產品很重要的原因之一，而好的UI也能更精確地傳達品牌形象，我喜歡製作簡單、直覺的設計作品。"
				,
				tags: {
					a:"photoshop", 
					b:"Illustrator", 
					c:"Sketch3"
				}
			},
			b: {
				class: "frontend",
				icon: "#formula",
				title: "前端程式",
				desc: "利用HTML5、CSS3、Javascript，可以編寫出極具動態與漂亮好用的界面，讓好設計成為好產品。未來打算學習Swift，前進app開發領域。
				",
				tags: {
					a:"Sublime text", 
					b:"HTML5", 
					c:"CSS3",
					d:"Javascript",
					e:"JQuery"
				}
			},
			c: {
				class: "trend",
				icon: "#ufology",
				title: "先進技術",
				desc: "我關注產業動態，並在作品裡實現更先進的思維與技術，設計與程式合而為一的特質，讓我同時可以跟視覺與程式人員溝通良好。",
				tags: {
					a:"Resposive Web Design", 
					b:"Compass", 
					c:"Coffeescript",
					d:"Angular.js",
					e:"D3.js",
					f:"Bootstrap"
				}
			},
			d: {
				class: "compose",
				icon: "#music",
				title: "音樂製作",
				desc: "曾經學習爵士流行鋼琴，也創作不少歌曲，後來研究DAW軟體製作音樂，目前閒暇之餘學習電吉他演奏與研究各種調式運用。",
				tags: {
					a:"Logic pro X", 
					b:"Guitar", 
					c:"Piano"
				}
			}
		}
		},
	#關於我
	about: {
		title:"關於我",
		desc: "
				我是殷執鈞，畢業於逢甲大學，目前居住在臺北，曾經擔任過視覺設計、UI設計、前端工程師。  
				我奉行『設計，是用來解決問題的。』的思維，當我在著手一項專案的時候，通常優先思考，
				要達成什麼目的或是定義出問題，再來思考如何設計以符合需求，同時把使用者經驗放在第一位，
				最後才考慮視覺表現。除了設計，我興趣廣泛，也玩音樂、研究金融商品，喜歡旅遊、電影與美食，
				喜歡研究稀奇古怪的新事物。充分感受生活，我認為有助於從不同的角度去看待事情，
				也有更多元的思考幫助設計發想。如果對我的作品有興趣，歡迎與我聯絡！
			"
		},
	#經歷
	exp: {
		title: "經歷",
		desc: "淇晨科技 - 網頁設計師   /   嚮樂科技 - 前端工程師   /   麥瑟創意策略 - 視覺設計   /   智慧通科技 - UX/UI設計   /   逢甲大學多媒體實作中心 - 顧問志工"
		},
	#最近作品
	works: {
		sorts: {
			a:{
				filter: "all",
				title: "全部",
				status: "actived"
			},
			b: {
				filter: ".web",
				title: "網站",
				status: ""
			},
			c: {
				filter: ".app",
				title: "App/UI",
				status: ""
			},
			d: {
				filter: ".ci",
				title: "企業識別",
				status: ""
			},
			e:{
				filter: ".event",
				title: "活動網頁/DM",
				status: ""
			}
			f:{
				filter: ".past",
				title: "過去作品",
				status: ""
			}
		},
		projects: {
			event_3m: {
				sort:"活動",
				title: "3M官方粉絲頁活動",
				index:"images/works/index/event_3m.jpg",
				target:"works/event_3m.html"
			},
			web_icMenu: {
				sort: "web",
				title: "icMenu外送網站設計",
				index:"images/works/index/web_icmenu.jpg",
				target:"works/web_icMenu.html"
			},
			app_facefood: {
				sort: "app",
				title: "Facefood app UI設計",
				index:"images/works/index/app_facefood.jpg",
				target:"works/app_facefood.html"
			},
			web_iNuts: {
				sort: "web",
				title: "iNuts 網站設計",
				index:"images/works/index/web_inuts.jpg",
				target:"works/web_iNuts.html"
			},
			event_icMenu: {
				sort: "event",
				title: "icMenu活動傳單或EDM設計",
				index:"images/works/index/event_icMenu.jpg",
				target:"works/event_icMenu.html"
			},
			web_orient: {
				sort: "web",
				title: "東方良友網站製作",
				index:"images/works/index/web_orient.jpg",
				target:"works/web_orient.html"
			},
			ci_icMenu: {
				sort: "ci",
				title: "icMenu Logo設計",
				index:"images/works/index/ci_icmenu.jpg",
				target:"works/ci_icMenu.html"
			},
			ci_iNuts: {
				sort: "ci",
				title: "iNuts Logo設計",
				index:"images/works/index/ci_inuts.jpg",
				target:"works/ci_iNuts.html"
			},
			event_bank: {
				sort: "event",
				title: "華南銀行活動頁設計",
				index:"images/works/index/event_bank.jpg",
				target:"works/event_bank.html"
			},
			web_menu: {
				sort: "web",
				title: "icMenu菜單服務版型",
				index:"images/works/index/web_menu.jpg",
				target:"works/web_menu.html"
			},
		}
	}
}

