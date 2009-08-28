@xml = xml

@xml.instruct!

@xml.response do
  @xml.startIndex   1
  @xml.itemsPerPage @entries.length
  @xml.totalResults @entries.length
  @xml.entry do
    @entries.each do |entry|
      @entry = entry
      builder :'people/person'
    end
  end
end
