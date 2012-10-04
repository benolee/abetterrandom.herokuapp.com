require 'csv'
LINKS = CSV.read("links.csv")

app = -> env do
  name, href = LINKS.sample
  [302, {"Content-Type" => "text/html", "Location" => href}, [%|Redirecting to <a href="#{href}">#{name}</a>|]]
end

run app

