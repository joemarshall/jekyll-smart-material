module Jekyll
  module FigureMaker
    def figuremaker(str)
        # find all image tags
        # wrap them with figure tags and figcaption tags
        # first catch images that are inside links, we don't want the caption inside the link
        wrappedStr=str.gsub(/(<a .+?<img.+? title\s*=\s*\"([^"]*).*?\/>.*?<\/a>)|(<img.+? title\s*=\s*\"([^"]*).*?\/>)/, '<figure>\1\3<figcaption>\2\4</figcaption></figure>')
        return wrappedStr
    end
  end
end

Liquid::Template.register_filter(Jekyll::FigureMaker)