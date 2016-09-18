music_library = {
	genre_rap:{
		genre_name: 'RAP',
		recently_viewed:{
			kendrick_lamar: ['King Kunta','Alright',],
			'Young Jeezy' => 'Forgive Me'
		},
		top_5_2016: {
			rank_1: 'Drake',
			rank_2: 'The Weekend',
			rank_3: 'Fetty Wap',
			rank_4: 'Nicki Man',
			rank_5: 'J Cole',
		}
	},

	genre_rock:{
		genre_name: 'ROCK',
		recently_viewed:{
			'She Wants Revenge' => 'Tear You Apart',
			coheed_cambria: ['The Suffering', 'Blood Red Summer']
		},
		top_5_2016: {
			rank_1: 'Fall Out Boy',
			rank_2: 'Hozier',
			rank_3: 'Walk The Moon',
			rank_4: 'Twenty One Pilots',
			rank_5: 'Imagine Dragons',
		}
	},

	genre_edm:{
		genre_name: 'ELECTRONIC DANCE MUSIC',
		recently_viewed: {
			'Karen Harding' => 'Say Something',
			'Lorn' => '555-5555',
			'Gorgon City' => 'Imagination'
		},
		top_5_2016: {
			rank_1: 'David Guetta',
			rank_2: 'Calvin Harris',
			rank_3: 'DJ Snake',
			rank_4: 'Major Lazer',
			rank_5: 'Zedd',
		}

	}
}

p music_library[:genre_rap][:recently_viewed]['Young Jeezy']
p music_library[:genre_rock][:recently_viewed]
p music_library[:genre_edm][:genre_name]
p music_library[:genre_edm][:top_5_2016]

music_library[:genre_edm][:recently_viewed][:porter_robinson] = ['shelter','sad machine']
p music_library[:genre_edm][:recently_viewed]

music_library[:genre_rap][:recently_viewed][:kendrick_lamar] << 'dive in'

p music_library[:genre_rap][:recently_viewed]

