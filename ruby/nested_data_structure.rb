tv_shows = {

	recently_viewed: {
		"Empire" => { 'characters' => {main: ["Lucious Lyon", "Cookie Lyon"], support: ["Andre Lyon", "Jamal Lyon", "Hakeem Lyon"]} }, 

		"Mr. Robot" => { 'characters' => {main: "", support: Array.new} },
	  
		"Fear the Walking dead" => { 'characters' => {main: "", support: Array.new} }
	},

	imbD_top_3: {
		rank_1: {"name" => {}},
		rank_2: {"" => {}},
		rank_3: {"" =>{}}
	}


}



tv_shows[:recently_viewed]["Fear the Walking dead"]['characters'][:main] << "Nick"
tv_shows[:recently_viewed]["Fear the Walking dead"]['characters'][:support] << "Madison"
tv_shows[:recently_viewed]["Fear the Walking dead"]['characters'][:support] << "Alicia"
tv_shows[:recently_viewed]["Fear the Walking dead"]['characters'][:support] << "Victor"
p tv_shows[:recently_viewed]["Fear the Walking dead"]['characters']
tv_shows[:recently_viewed]["Mr. Robot"]['characters'][:main] << "Elliot"
tv_shows[:recently_viewed]["Mr. Robot"]['characters'][:support] << "Darlene"
tv_shows[:recently_viewed]["Mr. Robot"]['characters'][:support] << "Mr.Robot"
p tv_shows[:recently_viewed]["Mr. Robot"]['characters']
tv_shows[:imbD_top_3][:rank_1]=["Band of Brothers"]
tv_shows[:imbD_top_3][:rank_2]=["Planet Earth"]
tv_shows[:imbD_top_3][:rank_3]=["Breaking Bad"]
p tv_shows