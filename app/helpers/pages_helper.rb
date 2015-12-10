module PagesHelper
  def link_toggle_accordion(section)
    link_to section.capitalize, '#' + section_results(section),
            class: 'accordion-toggle', 'data-toggle' => 'collapse'
  end

  def section_results(section)
    "#{section}-resultados"
  end
end
