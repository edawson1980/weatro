# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Station.destroy_all
Vote.destroy_all

Station.create(
  locationCode: "A01",
  city: "Washington",
  state: "DC",
  name: "Metro Center",
  address: "607 13th St. NW",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "A02",
  city: "Washington",
  state: "DC",
  name: "Farragut North",
  address: "1001 Connecticut Avenue NW",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "A03",
  city: "Washington",
  state: "DC",
  name: "Dupont Circle",
  address: "1525 20th St. NW",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "A04",
  city: "Washington",
  state: "DC",
  name: "Woodley Park-Zoo/Adams Morgan",
  address: "2700 Connecticut Ave., NW",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "A05",
  city: "Washington",
  state: "DC",
  name: "Cleveland Park",
  address: "3599 Connecticut Avenue NW",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "A06",
  city: "Washington",
  state: "DC",
  name: "Van Ness-UDC",
  address: "4200 Connecticut Avenue NW",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "A07",
  city: "Washington",
  state: "DC",
  name: "Tenleytown-AU",
  address: "4501 Wisconsin Avenue NW",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "A08",
  city: "Washington",
  state: "DC",
  name: "Friendship Heights",
  address: "5337 Wisconsin Avenue NW",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "A09",
  city: "Bethesda",
  state: "MD",
  name: "Bethesda",
  address: "7450 Wisconsin Avenue",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "A10",
  city: "Bethesda",
  state: "MD",
  name: "Medical Center",
  address: "8810 Rockville Pike",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "A11",
  city: "Bethesda",
  state: "MD",
  name: "Grosvenor-Strathmore",
  address: "10300 Rockville Pike",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "A12",
  city: "Rockville",
  state: "MD",
  name: "White Flint",
  address: "5500 Marinelli Road",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "A13",
  city: "Rockville",
  state: "MD",
  name: "Twinbrook",
  address: "1600 Chapman Avenue",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "A14",
  city: "Rockville",
  state: "MD",
  name: "Rockville",
  address: "251 Hungerford Drive",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "A15",
  city: "Rockville",
  state: "MD",
  name: "Shady Grove",
  address: "15903 Somerville Drive",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "B01",
  city: "Washington",
  state: "DC",
  name: "Gallery Pl-Chinatown",
  address: "630 H St. NW",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "B02",
  city: "Washington",
  state: "DC",
  name: "Judiciary Square",
  address: "450 F Street NW",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "B03",
  city: "Washington",
  state: "DC",
  name: "Union Station",
  address: "701 First St. NE",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "B04",
  city: "Washington",
  state: "DC",
  name: "Rhode Island Ave-Brentwood",
  address: "919 Rhode Island Avenue NE",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "B05",
  city: "Washington",
  state: "DC",
  name: "Brookland-CUA",
  address: "801 Michigan Avenue NE",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "B06",
  city: "Washington",
  state: "DC",
  name: "Fort Totten",
  address: "550 Galloway Street NE",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "B07",
  city: "Washington",
  state: "DC",
  name: "Takoma",
  address: "327 Cedar Street NW",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "B08",
  city: "Silver Spring",
  state: "MD",
  name: "Silver Spring",
  address: "8400 Colesville Road",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "B09",
  city: "Forest Glen",
  state: "MD",
  name: "Forest Glen",
  address: "9730 Georgia Avenue",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "B10",
  city: "Silver Spring",
  state: "MD",
  name: "Wheaton",
  address: "11171 Georgia Avenue",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "B11",
  city: "Silver Spring",
  state: "MD",
  name: "Glenmont",
  address: "12501 Georgia Avenue",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "B35",
  city: "Washington",
  state: "DC",
  name: "NoMa-Gallaudet U",
  address: "200 Florida Ave N.E.",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "C01",
  city: "Washington",
  state: "DC",
  name: "Metro Center",
  address: "607 13th St. NW",
  photo_url: "photo_url "
)
Station.create(
  locationCode: "C02",
  city: "Washington",
  state: "DC",
  name: "McPherson Square",
  address: "1400 I St. NW",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "C03",
  city: "Washington",
  state: "DC",
  name: "Farragut West",
  address: "900 18th St. NW",
  photo_url: " photo_url"
)
Station.create(
  locationCode: "C04",
  city: "Washington",
  state: "DC",
  name: "Foggy Bottom-GWU",
  address: "2301 I St. NW",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C05",
  city: "Arlington",
  state: "VA",
  name: "Rosslyn",
  address: "1850 N. Moore Street",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C06",
  city: "Arlington",
  state: "VA",
  name: "Arlington Cemetery",
  address: "1000 North Memorial Drive",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C07",
  city: "Arlington",
  state: "VA",
  name: "Pentagon",
  address: "2 South Rotary Road",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C08",
  city: "Arlington",
  state: "VA",
  name: "Pentagon City",
  address: "1250 South Hayes St.",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C09",
  city: "Arlington",
  state: "VA",
  name: "Crystal City",
  address: "1750 South Clark St.",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C10",
  city: "Arlington",
  state: "VA",
  name: "Ronald Reagan Washington National Airport",
  address: "2400 S. Smith Blvd.",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C12",
  city: "Alexandria",
  state: "VA",
  name: "Braddock Road",
  address: "700 N. West St.",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C13",
  city: "Alexandria",
  state: "VA",
  name: "King St-Old Town",
  address: "1900 King Street",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C14",
  city: "Alexandria",
  state: "VA",
  name: "Eisenhower Avenue",
  address: "2400 Eisenhower Avenue",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "C15",
  city: "Huntington",
  state: "VA",
  name: "Huntington",
  address: "2501 Huntington Ave",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "D01",
  city: "Washington",
  state: "DC",
  name: "Federal Triangle",
  address: "302 12th St. NW",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "D02",
  city: "Washington",
  state: "DC",
  name: "Smithsonian",
  address: "1200 Independence Avenue SW",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "D03",
  city: "Washington",
  state: "DC",
  name: "L'Enfant Plaza",
  address: "600 Maryland Avenue SW",
  photo_url: "photo_url"
)
Station.create(
  locationCode: "D04",
  city: "Washington",
  state: "DC",
  name: "Federal Center SW",
  address: "401 3rd Street SW",
  photo_url: "photo_url"
)
# >>>>>>> ick_seeds
