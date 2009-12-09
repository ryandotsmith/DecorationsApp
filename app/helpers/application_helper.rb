# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def shorten( attr , len=24)
    attr.length <= len ? attr : attr[0..len] + "... "  
  end#shorten

  def n_a_ify( string )
    string.length.zero? ? %W( NA ) : string
  end
  
  def date_ify( date )
    date.strftime('%m/%d/%Y')
  end

  def get_css( controller )
    [ 
      controller.controller_name, 
      'application', 
      'facebox.css', 
    ]
  end
  
  def get_js( controller )
   [
      'application.js',
      'facebox.js',
      controller.controller_name 
   ]
  end

end
