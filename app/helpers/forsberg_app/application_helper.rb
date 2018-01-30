module ForsbergApp
  module ApplicationHelper
    # Renderer for components with or without block
    def component(name, *options, &block)
      options = options.blank? ? {} : options[0]
      if block_given?
        options.merge!(:body => capture(&block))
      else
        options.merge!(:body => nil)
      end
      render("components/#{name}", options)
    end

    # Navlink with svg icon included
    def nav_link(link_text, link_path, icon = nil)
      class_name = current_page?(link_path) ? 'active' : ''
      content_tag(:li, :class => class_name) do
        if !icon.blank?
          use_svg(icon) + link_to(link_text, link_path)
        else
          link_to(link_text, link_path)
        end
      end
    end

    # Use SVG internal link
    def use_svg(clazz, size = 20)
      content_tag(:svg, content_tag(:use, "", { "xlink:href" => '#i-' + clazz }), class: "icon icon-#{size}")
    end

  end
end
