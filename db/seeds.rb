
Post.find_or_create_by(title: "Hello World", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et urna eu lorem dignissim fermentum. Aenean nec ante laoreet, luctus diam ut, accumsan dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus sit amet tortor justo. Mauris semper, neque vel bibendum tristique, eros orci euismod nisl, sed placerat sapien metus dignissim enim. Nulla suscipit ut ligula at ullamcorper. Donec maximus sollicitudin nulla eu porttitor. Quisque non congue lorem.")

pid = Post.first.id

comments = [
	{
		name: "Steff",
		text: "Nice stuff!",
		post_id: pid
	},
  { 
    name: "WoqluJokxv",
    text: "Your requirements, Very best balance in you having the legal right to defend ones self and also also the right to get familiar with activities that are actually totally correct and legal, And the amount of marker that would be banned? Proclaimed mister. ",
    post_id: pid
  },
  { 
    name: "asMobey0cfdk",
    text: "Skoric et ‘s(2009) Indicated that match obsession is normally separate from the amount time got golfing, And exactly how intrigued youngsters are with the online wow. Inside of research, Obsession fashion obtained in a wrong way connected to scholastic capability, And correct variety of partnership is discovered for one of two times stayed doing offers and dvd and blu-ray diamond. The exact same style most typically associated with dvd and blu-ray compulsion truly detrimentally tied to scholastic sexual effort once was located in a different study ",
    post_id: pid
  },
  { 
    name: "asMobe0q8oca",
    text: "[url=http://buylasix.accountant/]buy lasix cheap[/url] [url=http://amoxil500mgantibiotics.se/]amoxil[/url] [url=http://tadalafil.party/]tadalafil tablets[/url] [url=http://buy-phenergan.science/]buy phenergan[/url] [url=http://buycolchicine.nu/]probenecid colchicine tablets[/url] [url=http://buy-augmentin.top/]generic augmentin price[/url] [url=http://diclofenacsodium100mg.nu/]diclofenac[/url]",
    post_id: pid
  },
]

comments.each do |c|
	Comment.create(c)
end
