require 'csv'

def hashable_csv_data(file)
  @data = CSV.open(file, headers: :first_row).map(&:to_h)
end

p hashable_csv_data('lost-leads.csv')
