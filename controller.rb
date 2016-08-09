require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative( './models/sinatra_app' )
require( 'json' )

get('/') do
  erb( :home )
end  

get( '/address' ) do
  content_type( :json )
  result = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131 558030'
  }


postcode = Wordformatter.new(result[:postcode])
result[:postcode] = postcode.upcase
return result.to_json

building = Wordformatter.new(result[:building])
result[:building] = building.camel_case
return result.to_json

end




