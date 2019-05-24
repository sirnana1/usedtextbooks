json.extract! book, :id, :title, :subject, :author, :description, :publisher, :isbn, :year, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
