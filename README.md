website
=======

Source for Nikola-built website for bccp.berkeley.edu.

With [nikola](http://getnikola.com) (v7.0+) installed:

- `nikola build` will build the site in the `output` directory.
- `nikola serve` will start a local webserver to preview the site.

The site uses a custom theme based on nikola's built-in bootstrap3 theme. The custom theme allows us to:

-  use a drop-in bootstrap.css replacement from bootswatch.
-  Tweak various aspects of the generated HTML, such as titles, links
   and listings.