SimpleNavigation::Configuration.run do |navigation|  
  navigation.items do |primary|
    # TODO: is raw string good here?
    primary.item :home, 'Home', '/home/index'
    primary.item :results, 'Contest results', '/home/index'
    primary.item :solutions, 'Old solutions', '/home/index'
    primary.item :contact, 'Contact us', '/home/index'
    primary.item :about, 'About us', '/home/index'
  end
end
