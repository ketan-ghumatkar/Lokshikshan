require 'json'

json = File.read("db/alpha_final_list.json")
json = JSON.parse(json)

json.each do |d|
  j = d.values
  Matadar.create(name: j[1], list_index: j[2], age: j[3], page_number: j[4])
end