# ar_replace_commas

This gem adds two class methods to ActiveRecord::Base for automatically handling the conversion of strings with commas ("1,203") to the intended value (1.203) on numeric columns.

## Installation

Add this line to your application's Gemfile:

    gem 'ar_replace_commas', '0.0.1', :git => 'https://github.com/jannikolai/ar_replace_commas.git'

And then execute:

    $ bundle install
    
## Usage

__self.replace_commas_from(*columns)__

Remove commas on the specified column. e.g.

	class Item < ActiveRecord::Base
	  replace_commas_from :price
	end
	Item.new(:price => "1,200").price == 1.2    # true

__self.replace_commas_from_all_numbers__

Remove commas from all numeric columns. e.g.

	class Item < ActiveRecord::Base
	  replace_commas_from_all_numbers
	end
	item = Item.new(:price => "1,200", :weight => "1,872")
	item.price == 1.2     # true
	item.weight == 1.872  # true