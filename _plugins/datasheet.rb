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
  end
end

Liquid::Template.register_tag('datasheet_intro', Jekyll::Datasheet::DatasheetIntro)
Liquid::Template.register_tag('datasheet_img', Jekyll::Datasheet::DatasheetImg)
