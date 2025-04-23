module ApplicationHelper
  def svg_tag(svg_path, options = {})
    svg = File.open("app/assets/images/#{svg_path}", "rb") { |file| raw file.read }
    doc = Nokogiri::HTML::DocumentFragment.parse svg
    svg = doc.at_css "svg"
    svg["class"] = options.fetch(:class, "")
    svg["id"] = options.fetch(:id, "")
    options[:data].each { |key, value| svg["data-#{key.to_s.gsub('_', '-')}"] = value } if options[:data].present?
    raw svg
  end
end
