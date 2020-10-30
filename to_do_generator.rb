user_tasks_generated = []
self_focus_task_triggers = ["Personal values, vision", "Personal goals", "Physical health: exercise", "Physical health: nutrition", "Mental health", "Spiritual health", "Doctors, dentists, specialists", "Waiting for: medical data", "Personal trainers/coaches/mentors", "Books to read", "Education", "Hobbies", "Talents to develop", "Stress management", "Commitments/promises to self", "Meditation", "Ideas for recreation", "Dreams"]

puts "Think about these triggers. If any unresolved tasks come to mind, type them in."
puts "If nothing, or nothing else, comes to mind, type \"next\". Repeat this process until you have completed the exercise."

self_focus_task_triggers.each do
  |task_trigger|
  puts task_trigger
  user_input = nil
  while user_input != "next" do
    user_input = gets.chomp
    if user_input == "next"
      break
    else
      user_tasks_generated.append(user_input)
      puts "That task has been added to your list!"
      puts "Your current tasks: "
      puts user_tasks_generated
      puts "If \"#{task_trigger}\" brings anything else to mind, type it in. Otherwise, type \"next\"."
    end
  end
end
