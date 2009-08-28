@xml.person(:xmlns => 'http://ns.opensocial.org/2008/opensocial') do
  @xml.id "twitter.com:#{@entry.screen_name}"
  @xml.display_name @entry.screen_name
  @xml.name do
    @xml.unstructured @entry.name
  end
  @xml.gender 'unspecified'
end