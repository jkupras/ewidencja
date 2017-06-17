json.extract! ewidencja, :id, :data, :nr, :przychod, :wydatki, :uwagi, :created_at, :updated_at
json.url ewidencja_url(ewidencja, format: :json)