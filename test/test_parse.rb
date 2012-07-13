require 'test_helper'

# test the XML mapping objects
# and see that they parse OK
# against the captured samples
class TestParse < Test::Unit::TestCase
  def open_sample(file)
    File.open(File.join(File.dirname(__FILE__), file)) do |f|
      return REXML::Document.new f
    end
  end
  def test_request_url
    api = OpenAustralia::Api.new 'ASDF'

    url = api.send(:request_url, 'getDivisions', { :postcode => '2032'})
    assert_equal('http://www.openaustralia.org/api/getDivisions?key=ASDF&output=xml&postcode=2032', url)
  end

  def test_parse_debate_search_reps
    doc = open_sample('debate_search_reps.xml')
    srch = OpenAustralia::DebateSearch.load_from_xml doc.root

    assert(srch != nil, 'should have parsed the search results object')
    assert(srch.search_description != nil, "search description didn't parse")
    assert(srch.results.count > 0, 'should have multiple results')
  end

  def test_parse_debate_search_senate
    doc = open_sample('debate_search_senate.xml')
    srch = OpenAustralia::DebateSearch.load_from_xml doc.root

    assert(srch != nil, 'should have parsed the search results object')
    assert(srch.search_description != nil, "search description didn't parse")
    assert(srch.results.count > 0, 'should have multiple results')
  end

  def test_hansard_utegate_search
    doc = open_sample('hansard_utegate_search.xml')
    srch = OpenAustralia::HansardSearch.load_from_xml doc.root

    assert(srch != nil, 'should have parsed the search results object')
    assert(srch.search_description != nil, "search description didn't parse")
    assert(srch.results.count > 0, 'should have multiple results')
  end
end
