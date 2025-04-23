module SkillsHelper
  def category_badge(category)
    tag.span(
      category,
      class: "inline-flex items-center rounded-md px-2 py-1 text-xs font-medium ring-1 ring-inset #{category_badge_colors[category]}"
    )
  end

  def library_badge(library)
    tag.span(
      class: "inline-flex items-center gap-x-1.5 rounded-md px-2 py-1 text-xs font-medium text-gray-900 ring-1 ring-gray-200 ring-inset"
    ) do
      svg_tag("icons/#{library['language']}.svg", class: "size-3") + library["name"]
    end
  end

  private
    def category_badge_colors
      {
        "Pattern" => "bg-gray-50 text-gray-600 ring-gray-500/10",
        "UI" => "bg-yellow-50 text-yellow-600 ring-yellow-500/10"
      }
    end
end
