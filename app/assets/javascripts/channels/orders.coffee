App.orders = App.cable.subscriptions.create "OrdersChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	$(".orders #main").html(data.html)
