require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/sinatra_app' )

class TestWordformatter < Minitest::Test

  def setup
    @wordformatter = Wordformatter.new( 'abcde' )
    @string = Wordformatter.new('codeclan')
  end  

  def test_upcase
    assert_equal( 'ABCDE', @wordformatter.upcase() )
  end  

  def test_camel_case
    assert_equal( 'codeclan', @string.camel_case('CodeClan') )
  end  

end  