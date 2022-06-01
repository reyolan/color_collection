module ApplicationHelper
  def full_title(title = '')
    initial_title = 'Color Collection'
    if title.empty?
      initial_title
    else
      "#{title} | #{initial_title}"
    end
  end

  def format_auxiliary_verb(count)
    count == 1 ? 'is' : 'are'
  end
end
