(require 'ox-publish)

(setq org-publish-project-alist
      '(("org-sample-homepage"
         :base-directory "source"
         :publishing-function org-html-publish-to-html
         :publishing-directory "dist"
         :language "ja"
         :section-numbers t
         :with-title nil
         :with-date nil
         :html-head-include-default-style nil
         :html-head "<link rel=\"stylesheet\"
                         href=\"main.css\"
                         type=\"text/css\"/>"
         :html-preamble "
<h1 class=title>%t</h1>
<ul>
<li><a href=\"index.html\">TOP</a></li>
<li><a href=\"this_site.html\">このサイトについて</a></li>
<li><a href=\"contact.html\">連絡先</a></li>
</ul>
"
         :html-postamble "
<ul>
<li>著者: %a</li>
<li>更新日時: %d</li>
</ul>
")))

(org-publish-all)
