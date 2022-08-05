# Dependent Models
# Category.destroy_all
Expense.destroy_all

# Independent Models
User.destroy_all


puts "🌱 Seeding..."

# Users
bethany = User.create(first_name: "Bethany", last_name: "Moabs", username: "bethmoabs12", password: "iluvmoney", salary: 40000)
caleb = User.create(first_name: "Caleb", last_name: "Adkins", username: "calebiscool123", password: "password123", salary: 35000)
mallory = User.create(first_name: "Mallory", last_name: "Lycke", username: "mallycke90", password: "bella4ever", salary: 120000)
katie = User.create(first_name: "Katie", last_name: "Cruz", username: "kkc1993", password: "cannotst0pspending", salary: 60000)
john = User.create(first_name: "John", last_name: "Smith", username: "jsmith22", password: "htimsj321", salary: 75000)
justin = User.create(first_name: "Justin", last_name: "McArthur", username: "justmcar", password: "5572034", salary: 85000)
rebecca = User.create(first_name: "Rebecca", last_name: "Williams", username: "bekwill2", password: "volleyball4Ever", salary: 57000)
levi = User.create(first_name: "Levi", last_name: "Little", username: "ll234", password: "helpiambankrupt", salary: 49000)
sarah = User.create(first_name: "Sarah", last_name: "Owens", username: "sarahowens", password: "popcorn123", salary: 90000)
josie = User.create(first_name: "Josie", last_name: "Peters", username: "jospet1992", password: "heather011", salary: 150000)
# Users

# Categories
rent = Category.create(category_name: "rent")
food = Category.create(category_name: "food")
clothes = Category.create(category_name: "clothes")
vacation = Category.create(category_name: "vacation")
gas = Category.create(category_name: "gas")
bills = Category.create(category_name: "bills")
# Categories

# Expenses
Expense.create(date:"1/1/22",  expense_name:"This Months Rent",amount: 1500.00, user_id: bethany.id, category_id: rent.id)
Expense.create(date:"1/1/22",  expense_name:"Taco Bell",amount: 13.00, user_id: bethany.id, category_id: food.id)
Expense.create(date:"1/1/22",  expense_name:"Target",amount: 32.00, user_id: bethany.id, category_id: clothes.id)
Expense.create(date:"1/3/22",  expense_name:"Groceries",amount: 56.00, user_id: bethany.id, category_id: food.id)
Expense.create(date:"1/4/22",  expense_name:"Electricity Bill",amount: 50.34, user_id: bethany.id, category_id: bills.id)
Expense.create(date:"1/9/22",  expense_name:"Shell",amount: 65.21, user_id: bethany.id, category_id: gas.id)
Expense.create(date:"1/3/22",  expense_name:"Five Guys",amount: 80.32, user_id: bethany.id, category_id: food.id)
Expense.create(date:"1/9/22",  expense_name:"Macy's",amount: 120.33, user_id: bethany.id, category_id: clothes.id)
Expense.create(date:"1/5/22",  expense_name:"Hawaii Trip",amount: 390.87, user_id: bethany.id, category_id: vacation.id)
Expense.create(date:"1/16/22", expense_name:"This Months Gas Bill", amount: 60.34, user_id: caleb.id, category_id: gas.id)
Expense.create(date:"1/17/22", expense_name:"This Months Power Bill", amount: 84.02, user_id: mallory.id, category_id: bills.id)
Expense.create(date:"2/24/22", expense_name:"This Months Internet Bill", amount: 63.77, user_id: john.id, category_id: bills.id)
Expense.create(date:"2/26/22", expense_name:"This Months Phone Bill", amount: 120.65, user_id: sarah.id, category_id: bills.id)
Expense.create(date:"3/1/22",  expense_name:"This Months Rent",amount: 1750.00, user_id: josie.id, category_id: rent.id)
Expense.create(date:"3/15/22", expense_name:"This Months Rent", amount: 2300.00, user_id: levi.id, category_id: rent.id)
# Expenses




puts "✅ Done seeding!"
