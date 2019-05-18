json.extract! book, :id, :title, :author, :description, :publisher, :isbn, :ed, :year, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
