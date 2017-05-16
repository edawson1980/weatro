$("#showButton").on("click", () => {
  var city = $("#city").html()
  var state = $("#state").html()
  var url = 'https://api.wunderground.com/api/928e6919af2dbe8a/geolookup/conditions/q/' + state + '/' + city + '.json'
  $.ajax({
    url: url,
    type: "get",
    dataType: "json"
  }).done((response) => {
    let temp= response.current_observation.temp_f;
    let pers = response.current_observation.precip_1hr_in;
    let wind = response.current_observation.wind_mph;
    $("div#temp").text(`Temputare: ${temp} °F`);
    $("div#pers").text(`Preciption:  ${pers}%`);
    $("div#wind").text(`Wind: ${wind} mph`);
  }).fail(() => {
    console.log("Ajax request fails!")
  }).always(() => {
    console.log("This always happens regardless of successful ajax request or not.")
  })
})
