def sign_in_and_play
	visit('/')
	fill_in('player_one_name', with: 'John')
	fill_in('player_two_name', with: 'Bill')
	click_button('Submit')
end