namespace :db do
    desc "Erase and Fill Database"
    task :populate => :environment do
      Thingi.delete_all
      Post.delete_all
      Person.delete_all

      10.times do |i|
        t=Thingi.create(
                 { name: "Thing #{i}",
                   subname: "Subname for Thing #{i}",
                   description: "The quick brown fox jumped over the lazy dog" })

        3.times do |y|
          Post.create(
                 { title: "Post #{t.id} Title #{y}",
                   author: "Snuggs Thingi #{t.id}",
                   body: "The quick brown fox jumped over the lazy dog",
                   thingi_id: t.id })
        end
      end
    end
end