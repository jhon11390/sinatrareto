jhon = [{"A"=> "a", "B"=> "b", "C"=> "c"}, {"A"=> "g", "B"=> "w", "C"=> "t"}, "a"]

variable = "b"

jhon.each do |item|
    if item["B"] == variable
        puts item["A"]
    end
end