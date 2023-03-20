puts "🌱 Seeding data..."

# Seed database

category1 = Category.create(
    name: "WCA",
    color: "tan"
)

category2 = Category.create(
    name: "Flatiron",
    color: "grey"
)

category3 = Category.create(
    name: "Household",
    color: "lightgreen"
)

Task.create(
    description: "Grade papers",
    category_id: category1.id,
    high_priority: true
)

Task.create(
    description: "Pre-calc lesson plan",
    category_id: category1.id,
    high_priority: true
)

Task.create(
    description: "Final Project",
    category_id: category2.id,
    high_priority: true
)

Task.create(
    description: "Take trash out",
    category_id: category3.id,
    high_priority: false
)

Task.create(
    description: "Sweep floor",
    category_id: category3.id,
    high_priority: false
)

puts "✅ Done seeding!"
