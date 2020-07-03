require_relative 'plugin_helper'

module Jekyll
  module Datasheet

    class DatasheetIntro < Liquid::Block
      include Jekyll::PluginHelper
  
      # Used to create the header of the datasheet
      #
      # Takes one argument for the image of the product
      # and the short ingress is in the block
      #
      # {% datasheet_intro myimages/myimage.png; %}
      # Some ingress here for the product
      # {% enddatasheet_intro %}
      #

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end
  
      def render(context)
        '<div class="row">
            <div class="col-sm-6">
              <div class="ds-header-ingress">%3$s</div>
            </div>
            <div class="col-sm-6">
              <span class="pull-right">
                <img class="ds-img-header" src="%1$s/%2$s" />
              </span>
            </div>
          </div>
          ' % [context.registers[:site].config['url'], @params[0], markdownify(super, context)]
      end
    end

    class DatasheetImg < Liquid::Tag
      include Jekyll::PluginHelper

      # Used to insert centered images in document
      #
      # Takes one argument, the image
      #
      # Example
      # {% datasheet_img My Fancy image; medium; center; myimages/myimage.png; %}
      #
      # Supported alignment: center
      # Supported size: small, medium, large

      def initialize(tag_name, text, tokens)
        super
        params = parse_args(text)

        @title = params[0]
        @size = params[1]
        @alignment = params[2]
        @image = params[3]
      end

      def render(context)
        '<img class="ds-img-%1$s-%2$s" src="%3$s" />' % [@alignment, @size, @image]
      end
    end

    class DatasheetNotice < Liquid::Block
      include Jekyll::PluginHelper

      # Used to insert a note into the datasheet
      #
      # Takes one argument, the type and the markdown
      # is inside the block
      #
      # Example
      #
      # {% datasheet_notice warning; %}
      # Some notice here!
      # {% enddatasheet_notice %}
      #
      # Supported types: warning (yellow), danger (red), success (green)

      def initialize(tag_name, text, tokens)
        super
        params = parse_args(text)

        @type = params[0]
      end

      def render(context)
        '<div class="row">
          <div class="col-sm-1">
          </div>
          <div class="col-sm-10">
            <div class="alert alert-%1$s" role="alert">
              %2$s
            </div>
          </div>
          <div class="col-sm-1">
          </div>
        </div>' % [@type, markdownify(super, context)]
      end
    end
  end
end

Liquid::Template.register_tag('datasheet_intro', Jekyll::Datasheet::DatasheetIntro)
Liquid::Template.register_tag('datasheet_img', Jekyll::Datasheet::DatasheetImg)
Liquid::Template.register_tag('datasheet_notice', Jekyll::Datasheet::DatasheetNotice)

# Hooked used to inject notice depending on product status
# This can be either early-access, active or eol
Jekyll::Hooks.register :pages, :post_init do |page|
  early_access_text = "{% datasheet_notice success; %}
This product is in early access stage. It means that while the hardware is working and tested,
the software is still pretty much work in progress. For more information see our
[early access description page](https://www.bitcraze.io/early-access/).
{% enddatasheet_notice %}\n"

  eol_text = "{% datasheet_notice warning; %}
This product has reach end-of-life and is not longer being manufactured. Stock might still be available
in our online store or though retailers, but it's not recommended to be used for new set-ups.
{% enddatasheet_notice %}\n"
  if page.ext == ".md"
    first_header_index = page.content.index('##')
    if (page.data["status"] == "early-access")
      page.content = page.content.insert(first_header_index, early_access_text)
    end
    if (page.data["status"] == "eol")
      page.content = page.content.insert(first_header_index, eol_text)
    end
  end
end
