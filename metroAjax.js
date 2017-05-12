$("#showButton").on("click", () => {
  // Make sure to add your API key to the URL!
  var city = $("#city").html()
  var state = $("#state").html()
  var url = 'https://api.wunderground.com/api/6e29343528bfa584/geolookup/conditions/q/'+ state +'/' + city +'.json'
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
