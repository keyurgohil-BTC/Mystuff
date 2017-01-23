class Matrix
  attr_reader :rows, :columns

  def initialize(string_matrix)
    @string_matrix = string_matrix
    @rows = fetch_rows
    @columns = fetch_rows.transpose
  end

  def fetch_rows
    @string_matrix.split("\n").map { |e| e.split(' ').map { |e| e.to_i  } }
  end
end
