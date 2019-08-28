# smashing-bitbucket-repo-count


# Description
Widget for [Smashing](https://smashing.github.io) that shows the number of repositories in your Bitbucket Account.

# Usage
To use this widget, copy `aare.html`, `aare.coffee`, and `aare.scss` into a `/widgets/aare` directory, and copy the `repo_count.rb` file into your `/jobs` folder. Also copy the wave svg into the `assets` folder.

To include the widget in a dashboard, add the following snippet to the dashboard layout file:
```html
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
    <div data-id="aare" data-view="Aare"></div>
</li>
```
