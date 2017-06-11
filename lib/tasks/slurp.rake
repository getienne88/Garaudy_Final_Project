namespace :slurp do
  desc "TODO"
  task students: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "students.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      s = Student.new
      s.name = row["Name"]
      s.company = row["Company"]
      s.function = row["Function"]
      s.industry = row["Industry"]
      s.city = row["City"]
      s.state = row["State"]
      s.region = row["Region"]
      s.country = row["Country"]
      s.citizenship = row["Citizenship"]
      s.save

      puts "#{s.name}, #{s.company}, #{s.function}, #{s.industry}, #{s.city}, #{s.state}, #{s.region}, #{s.country}, #{s.citizenship} saved"
    end
    puts "There are now #{Student.count} rows in the students table"
  end


  desc "TODO"
  task companies: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "companies.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      c = Company.new
      c.logo = row["Logo"]
      c.company = row["Company"]
      c.industry = row["Industry"]
      c.save

      puts "#{c.logo}, #{c.company}, #{c.industry} saved"
  end
  puts "There are now #{Company.count} rows in the companies table"
  end

  desc "TODO"
  task industries: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "industries.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      i = Industry.new
      i.industry = row["Industry"]
      i.save

      puts "#{i.industry} saved"
    end
    puts "There are now #{Industry.count} rows in the industries table"
  end

  desc "TODO"
  task regions: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "regions.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      r = Region.new
      r.region = row["Region"]
      r.save

      puts "#{r.region} saved"
    end
    puts "There are now #{Region.count} rows in the regions table"
  end

  desc "TODO"
  task cities: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "cities.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = City.new
      t.city = row["City"]
      t.save

      puts "#{t.city} saved"
    end
    puts "There are now #{City.count} rows in the cities table"
  end




end
