$("#showButton").on("click", () => {
  // Make sure to add your API key to the URL!
  var city = $("#city").html()
  var state = $("#state").html()
   url: 'https://api.wmata.com/StationPrediction.svc/json/GetPrediction/' + stationCode + '/' + apiKey
  $.ajax({
    url: url,
    type: "get",
    dataType: "json"
  }).done((response) => {
    let gust = response.current_observation.wind_gust_mph;
    $("div#gust").text(`Current Wind Gust (mph): ${gust}`);
  }).fail(() => {
    console.log("Ajax request fails!")
  }).always(() => {
    console.log("This always happens regardless of successful ajax request or not.")
  })
})
