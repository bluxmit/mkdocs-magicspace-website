## Theme and colors 

You can customize how your docummentation website looks, inncluding fonts, colors and even complete themes.  

!!! info "MkDocs themes" 
    [MkDocs has many themes](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes). The default boilerplate theme 
    is [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/getting-started/).   

Let's change colors in the file `mkdocs.yml`.

**mkdocs.yml**

```{.yaml hl_lines="21 22 27 28"}
# ===========================================================
# APPEARANCE
# ===========================================================

theme:
  name: 'material'
  favicon: 'assets/favicon.ico'
  logo: 'assets/Alnoda-logo.svg'
  custom_dir: overrides
  font:
    text: Lexend
  icon:
    repo: fontawesome/brands/github
  features:
    - search.suggest
  palette:
    - scheme: default
      toggle:
        icon: material/weather-sunny
        name: Switch to light mode
      primary: deep purple  
      accent: deep orange
    - scheme: slate
      toggle:
        icon: material/weather-night
        name: Switch to dark mode
      primary: deep purple
      accent: lime
```

Both primary and accent colors can be selected from this palette:  

**(Click on any of these buttons to try primary color out!)**{style="font-size: 0.75em; color: grey"}

<div class="mdx-switch">
  <button data-md-color-primary="red"><code style="color: white; background-color: var(--md-primary-fg-color);">red</code></button>
  <button data-md-color-primary="pink"><code style="color: white; background-color: var(--md-primary-fg-color);">pink</code></button>
  <button data-md-color-primary="purple"><code style="color: white; background-color: var(--md-primary-fg-color);">purple</code></button>
  <button data-md-color-primary="deep-purple"><code style="color: white; background-color: var(--md-primary-fg-color);">deep purple</code></button>
  <button data-md-color-primary="indigo"><code style="color: white; background-color: var(--md-primary-fg-color);">indigo</code></button>
  <button data-md-color-primary="blue"><code style="color: white; background-color: var(--md-primary-fg-color);">blue</code></button>
  <button data-md-color-primary="light-blue"><code style="color: white; background-color: var(--md-primary-fg-color);">light blue</code></button>
  <button data-md-color-primary="cyan"><code style="color: white; background-color: var(--md-primary-fg-color);">cyan</code></button>
  <button data-md-color-primary="teal"><code style="color: white; background-color: var(--md-primary-fg-color);">teal</code></button>
  <button data-md-color-primary="green"><code style="color: white; background-color: var(--md-primary-fg-color);">green</code></button>
  <button data-md-color-primary="light-green" style="color: white; background-color: var(--md-primary-fg-color);"><code>light green</code></button>
  <button data-md-color-primary="lime"><code style="color: black; background-color: var(--md-primary-fg-color);">lime</code></button>
  <button data-md-color-primary="yellow"><code style="color: black; background-color: var(--md-primary-fg-color);">yellow</code></button>
  <button data-md-color-primary="amber"><code style="color: black; background-color: var(--md-primary-fg-color);">amber</code></button>
  <button data-md-color-primary="orange"><code style="color: black; background-color: var(--md-primary-fg-color);">orange</code></button>
  <button data-md-color-primary="deep-orange"><code style="color: white; background-color: var(--md-primary-fg-color);">deep orange</code></button>
  <button data-md-color-primary="brown"><code style="color: white; background-color: var(--md-primary-fg-color);">brown</code></button>
  <button data-md-color-primary="grey"><code style="color: white; background-color: var(--md-primary-fg-color);">grey</code></button>
  <button data-md-color-primary="blue-grey"><code style="color: white; background-color: var(--md-primary-fg-color);">blue grey</code></button>
  <button data-md-color-primary="black"><code style="color: white; background-color: var(--md-primary-fg-color);">black</code></button>
  <button data-md-color-primary="white"><code style="color: black; background-color: var(--md-primary-fg-color);">white</code></button>
</div>

<script>
  var buttons = document.querySelectorAll("button[data-md-color-primary]")
  buttons.forEach(function(button) {
    button.addEventListener("click", function() {
      var attr = this.getAttribute("data-md-color-primary")
      document.body.setAttribute("data-md-color-primary", attr)
      var name = document.querySelector("#__code_2 code span:nth-child(7)")
      name.textContent = attr.replace("-", " ")
    })
  })
</script>   

!!! tip "Material MkDocs" 
    Material fo Mkdocs is beautiful and very customizable. [Check its documentation](https://squidfunk.github.io/mkdocs-material/setup/changing-the-colors/)


## Name and links

Change the name of the documentation website, and link it to your Git repository  

**mkdocs.yml**

```{.yaml hl_lines="5-7"}
# ===========================================================
# CONFIGURATION
# ===========================================================

site_name: MkDocs MagicSpace
repo_url: https://github.com/Alnoda/workspaces-in-docker/tree/main/workspaces/base-workspace
site_url: https://alnoda.org
edit_uri: ""
```