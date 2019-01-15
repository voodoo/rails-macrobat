json.extract! meal, :id, :user_id, :carbs, :fats, :prots, :calories, :fiber, :created_at, :updated_at
json.url meal_url(meal, format: :json)
