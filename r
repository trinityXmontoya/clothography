<!DOCTYPE html>
<html>
<head>
  <title>Clothography</title>
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>
<body>

<nav id='main-navbar'>

  <% unless current_user %>
    <a href=" <%= login_path %> "><li class='main-navbar-item'>Login</li></a>
  <% else %>
    <a href=" <%= search_listings_path %> "><li class='main-navbar-item'>Buy</li></a>
    <a href=" <%= new_user_listing_path(current_user) %> "><li class='main-navbar-item'>Sell</li></a>
    <a href=" <%= user_closet_path(current_user) %> "><li class='main-navbar-item'>Your Closet</li></a>
    <a href=" <%= user_messages_path(current_user) %> "><li class='main-navbar-item'>Messages</li></a>
    <a href=" <%= user_cart_path(current_user) %> "><li class='main-navbar-item'>Your Cart</li></a>
    <a href=" <%= logout_path %>"><li class='main-navbar-item'>Logout</li></a>
  <% end %>
</nav>


  <%= content_for :header %>
  <p id="notice"><%= notice %></p>
  <%= yield %>


</body>
</html>
