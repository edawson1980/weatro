$("#showButton").on("click", () => {
  // Make sure to add your API key to the URL!
  var locationCode = $("#locationCode").html()
  var url = 'http://api.wmata.com/StationPrediction.svc/json/GetPrediction/' + locationCode + '?api_key=02b1eb26253441d595d21f22bd9ede68'

  $.ajax({
    url: url,
    type: "get",
    dataType: "json"
  }).done(function(data) {
    $('#train').html('')
    var trains = data.Trains;
    trains.forEach(train => {
      for (prop in train) {
        var header = prop;
        if (['Line', 'DestinationName', 'Min', ].includes(prop)) {
          var header = prop;
          if (header == 'Min') header = 'Arriving in'
          if (header == 'DestinationName') header = 'Destination'
          var div = $('<div/>').append('<h4/>').addClass(prop + 'style').text(`${header} : ${train[prop]}`);
          if (train[prop] == 'OR') div.addClass('orange');
          $('#train').append(div);
          if (train[prop] == 'GR') div.addClass('green');
          $('#train').append(div);
          if (train[prop] == 'RD') div.addClass('red');
          $('#train').append(div);
          if (train[prop] == 'BL') div.addClass('blue');
          $('#train').append(div);
          if (train[prop] == 'YL') div.addClass('yellow');
          $('#train').append(div);
          if (train[prop] == 'SV') div.addClass('silver');
          $('#train').append(div);
        }

      }

    })
  }).fail(() => {
    console.log("Ajax request fails!")
  }).always(() => {
    console.log("This always happens regardless of successful ajax request or not.")
  })
})
