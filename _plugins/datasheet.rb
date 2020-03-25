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
              %3$s
            </div>
            <div class="col-sm-6">
              <span class="pull-right">
                <img src="%1$s/%2$s" />
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
      # {% datasheet_img myimages/myimage.png; %}
      #

      def initialize(tag_name, text, tokens)
        super
        params = parse_args(text)

        @title = params[0]
        @image = params[1]
      end

      def render(context)
        '<img class="ds-img-center" src="%1$s" />' % [@image]
      end
    end
  end
end

Liquid::Template.register_tag('datasheet_intro', Jekyll::Datasheet::DatasheetIntro)
Liquid::Template.register_tag('datasheet_img', Jekyll::Datasheet::DatasheetImg)
