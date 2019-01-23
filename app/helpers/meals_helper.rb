module MealsHelper
    def time_ago_title obj
      content_tag :span, time_ago_in_words(obj.date) + ' ago', title: obj.date.to_s(:short)
    end
end
