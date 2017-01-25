class ETL
  def self.transform(hsh)
    expected = {}
    hsh.each { |k,v| v.each { |v1| expected.merge!(v1.downcase => hsh.key(v)) } }
    expected
  end
end
