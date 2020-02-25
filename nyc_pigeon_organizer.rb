# goal{
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },

#original_data
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }


def nyc_pigeon_organizer(original_data)
    return_data = {}   #define a return hash 
    original_data.each do |key, value_1|
      value_1.each do |att, value_2|
        value_2.each do |name|
          
          if !return_data[name]
            return_data[name] = {}
          end 
          
          if !return_data[name][key]
            return_data[name][key] = []
          end 
          return_data[name][key] << att.to_s
        end 
      end 
    end 
     
    return_data
end 
    
    
