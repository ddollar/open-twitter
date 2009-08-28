@xml = xml

@xml.instruct!

@xml.response do
  @xml.startIndex   1
  @xml.itemsPerPage 1
  @xml.totalResults 1
  @xml.entry do
    builder :'people/person'
  end
end
