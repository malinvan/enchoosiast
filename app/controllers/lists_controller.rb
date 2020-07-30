class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
    @todos = @list.todos
    @todo = Todo.new
    @reading_todos = @todos.where(category: "reading")
    @education_todos = @todos.where(category: "education")
    @online_content_todos = @todos.where(category: "online content")
  end

  def create
    @career = Career.find(params[:career_id])
    @list = List.create(user: current_user, career: @career)
    populate_list
    redirect_to list_path(@list)
  end

  private
  def populate_list
    book1 = Todo.create(
    title: 'The Influential Product Manager, (9781523087464), Ken Sandy',
    description: 'This book is a comprehensive and practical guide to the core skills, activities, and behaviors that are required of product managers in modern technology companies. Product management is one of the fastest growing and most sought-after roles by both job-seekers and companies alike.',
    completed: false,
    category: 'reading',
    list: @list
    )

    book2 = Todo.create(
    title: 'Agile Product Management with Scrum, (9780321605788), Roman Pichler',
    description: 'In Agile Product Management with Scrum,leading Scrum consultant Roman Pichler uses real-world examples to demonstrate how product owners can create successful products with Scrum.',
    completed: false,
    category: 'reading',
    list: @list
    )

    book3 = Todo.create(
    title: 'Product Management For Dummies, (9781119264026), Brian Lawley',
    description: 'Learn the basics of ethical hacking and gain insights into the logic, algorithms, and syntax of Python. This book will set you up with a foundation that will help you understand the advanced concepts of hacking in the future.',
    completed: false,
    category: 'reading',
    list: @list
    )

    edu1 = Todo.create(
    title: 'Udemy - Product Manager course',
    description: '',
    completed: false,
    category: 'education',
    list: @list
    )

    edu2 = Todo.create(
    title: 'University of Washington - Software Product Management',
    description: '',
    completed: false,
    category: 'education',
    list: @list
    )

    edu3 = Todo.create(
    title: 'LinkedIn Learning - Becoming a Product Manager',
    description: '',
    completed: false,
    category: 'education',
    list: @list
    )

    edu4 = Todo.create(
    title: 'LinkedIn Learning - How to Rock an Interview',
    description: '',
    completed: false,
    category: 'education',
    list: @list
    )

    online1 = Todo.create(
    title: 'The Ultimate Guide for Product Managers, Aha.io',
    description: '',
    completed: false,
    category: 'online content',
    list: @list
    )

    online2 = Todo.create(
    title: 'How to become a product manager - Career Explorer.com',
    description: '',
    completed: false,
    category: 'online content',
    list: @list
    )

    online3 = Todo.create(
    title: 'Product Manager - Wikipedia',
    description: '',
    completed: false,
    category: 'online content',
    list: @list
    )

    online3 = Todo.create(
    title: '15 Things You Should Know About Product Managers - medium.com',
    description: '',
    completed: false,
    category: 'online content',
    list: @list
    )
  end
end
