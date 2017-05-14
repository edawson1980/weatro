$("#showButton").on("click", () => {
  // Make sure to add your API key to the URL!
  var city = $("#city").html()
  var state = $("#state").html()
  var url ='http://api.wmata.com/StationPrediction.svc/json/GetPrediction/A10?api_key=02b1eb26253441d595d21f22bd9ede68'

  $.ajax({
    url: url,
    type: "get",
    dataType: "json"
  }).done((response) => {
    console.log("done")
    train = trains.cars
    $("div#train").text(train);
  }).fail(() => {
    console.log("Ajax request fails!")
  }).always(() => {
    console.log("This always happens regardless of successful ajax request or not.")
  })
})
