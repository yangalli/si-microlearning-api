json.call(course, :id, :name, :description, :banner)

json.banner polymorphic_url(course.banner) if course.banner.attached?

json.lessons do
  json.array!(course.lessons) do |lesson|
    if lesson
      json.call(lesson, :id, :name, :description, :banner)
      json.banner polymorphic_url(lesson.banner) if lesson.banner.attached?
    else
      json.nil!
    end
  end
end