puts "🌱 Seeding data..."

# Seed database

category1 = Category.create(
    name: "WCA",
    color: "brown"
)

category2 = Category.create(
    name: "Flatiron",
    color: "black"
)

Task.create(
    description: "Grade papers",
    category_id: category1.id
)

Task.create(
    description: "Final Project",
    category_id: category2.id
)

puts "✅ Done seeding!"
