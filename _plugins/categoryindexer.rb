# needs to generate:
#
#  1)reset permalinks for all posts:
#
#  default permalink (and the link from front page) is:
#     /projects/projectname/post_name
#  for non-project things:
#     /projects/other/post_name
#
#  2)
#   for each of
#     /performances
#     /publications
#     /software
#  we need to generate copies of posts for each one - marked as 'not front page'
# 
# for each page, have a key with what should be open on left
#

module Jekyll

    @@renderingCopy=false

    def self.renderCopy(post,catname,foldername)
        if @@renderingCopy==false and post.data['categories'].include? catname
            @@renderingCopy=true
            
            safeTitle = post.data['title'].gsub(/[^a-zA-Z0-9]/,"_")
            newLink="/"+foldername+"/"+safeTitle+".html"
            puts "rendercopy:",newLink
            path=newLink
            path= post.site.dest+newLink
            post.data['permalink'] = newLink
            post.instance_variable_set(:@url,newLink)
            post.output = Jekyll::Renderer.new(post.site, post, post.site.site_payload).run
            puts "Dest:",post.data,post.url

            # FileUtils.mkdir_p(File.dirname(path))
            # File.write(path, output, :mode => "wb")

            post.write(post.site.dest)
            @@renderingCopy=false

            
            #            FileUtils.mkdir_p(File.dirname(path))
#            File.write(path, post, :mode => "wb")        
        end
    end
    
    Hooks.register :posts, :post_write do
        |post|
      renderCopy(post,"Performances","performances")
      renderCopy(post,"Publications","publications")
      renderCopy(post,"Games","games")
      renderCopy(post,"Software and Hardware","software")
    end

    class PermalinkRewriter < Generator
        safe true
        priority :low
        
        def generate(site)
            # find project:
            site.posts.docs.each do |item|
                if item['layout'].casecmp('post')==0
                    theProject='other'
                    item['categories'].each do |cat|
                        if cat.casecmp('Performances')!=0 and cat.casecmp('Projects')!=0 and cat.casecmp('Publications')!=0 and cat.casecmp('Software and Hardware')!=0 and cat.casecmp('Games')!=0
                            theProject=cat
                        end
                    end
                    safeTitle= item.data['title'].gsub(/[^a-zA-Z0-9]/,"_")
                    safeProject= theProject.gsub(/[^a-zA-Z0-9]/,"_")
                    newLink='/projects/' + safeProject + "/"+safeTitle+".html"
    #                puts newLink
                    item.data['permalink'] = newLink
                end
                if item['layout'].casecmp('nav_menu_item')==0
                    theCategory=item['tag'].gsub(/[^a-zA-Z0-9]/,"_")
                    if item['categories'].length > 0
                        # under a project
                        item.data['permalink']="/projects/"+theCategory+"/index.html"
                    else
                        # something else
                        categoryFolder=item.data['folder']
                        item.data['permalink']="/"+categoryFolder+"/index.html"
                    end
                    
                end
            end
        end
    end

    
end
