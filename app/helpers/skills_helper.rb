module SkillsHelper
  def title(name)
    name.gsub("_", " / ")
  end

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
        "Backend" => "bg-red-50 text-red-600 ring-red-500/10",
        "Native" => "bg-indigo-50 text-indigo-600 ring-indigo-500/10",
        "Pattern" => "bg-gray-50 text-gray-600 ring-gray-500/10",
        "UI" => "bg-cyan-50 text-cyan-600 ring-cyan-500/10",
        "UX" => "bg-yellow-50 text-yellow-600 ring-yellow-500/10",
        "TDD" => "bg-green-50 text-green-600 ring-green-500/10"
      }
    end
end
