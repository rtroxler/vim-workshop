# distance between two lat lons
def distance loc1, loc2
  rkm = 6371                  # Earth radius in kilometers
  rm = rkm * 1000             # Radius in meters

  # Delta, converted to rad
  dlat_rad = (loc2[0]-loc1[0]) * Math::PI/180
  dlon_rad = (loc2[1]-loc1[1]) * Math::PI/180

  lat1_rad, lon1_rad = loc1.map {|i| i * Math::PI/180 }
  lat2_rad, lon2_rad = loc2.map {|i| i * Math::PI/180 }

  a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
  c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

  # Delta in meters
  rm * c
end

result = distance [46.3625, 15.114444],[46.055556, 14.508333]
puts result
puts result == 57794.35510874035 ? 'SUCCESS' : 'fail'
