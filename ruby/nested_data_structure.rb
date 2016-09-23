tv_shows = {
	recently_viewed: {
		"Empire" => { 'characters' => {main: ["Lucious Lyon", "Cookie Lyon"], support: ["Andre Lyon", "Jamal Lyon", "Hakeem Lyon"]}, 

		"Mr. Robot" => { 'characters' => {main: [], support: Array.new} },
	  
		"Fear the Walking dead" => { 'characters' => {main: [], support: Array.new} }
	},

	imbD_top_3: {
		rank_1: {"name" => {}},
		rank_1: {"" => {}},
		rank_1: {"" =>{}}
	}

}



tv_shows[:recently_viewed]["Fear the Walking dead"]['characters'][:main] << "Nick"
p tv_shows[:recently_viewed]["Fear the Walking dead"]['characters']