json.call(lesson, :id, :name, :banner, :description)

json.banner polymorphic_url(lesson.banner) if lesson.banner.attached?