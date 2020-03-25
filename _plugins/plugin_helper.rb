module Jekyll
  module PluginHelper
      def markdownify(md, context)
        site = context.registers[:site]
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)
        converter.convert(md)
      end

      def parse_args(str)
        parts = str.split(';')
        parts.map {|part| part.strip}
      end
  end
end