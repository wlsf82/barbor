class ArborUserPage
  include PageObject

  direct_url BASE_URL + 'user'

  expected_element :class => 'page-title'
  h1 :user_name, :class => 'page-title'

end
