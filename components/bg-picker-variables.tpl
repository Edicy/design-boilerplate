{% capture dont_render %}
  {% comment %}SITE BODY RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% if blog_article_page %}
    {% assign body_bg = article.data.body_bg %}
  {% else %}
    {% assign body_bg = page.data.body_bg %}
  {% endif %}

  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign body_bg_image = body_bg.image %}
  {% assign body_bg_image_sizes = body_bg.imageSizes %}
  {% assign body_bg_color = body_bg.color %}
  {% assign body_bg_color_data = body_bg.colorData %}
  {% assign body_bg_combined_lightness = body_bg.combinedLightness %}

  {% if body_bg_image == nil %}
    {% assign body_bg_image = "" %}
  {% endif %}

  {% if body_bg_image_sizes == nil %}
    {% assign body_bg_image_sizes_str = "" %}
  {% else %}
    {% assign body_bg_image_sizes_str = body_bg_image_sizes | json %}
  {% endif %}

  {% if body_bg_color == nil %}
    {% assign body_bg_color = "" %}
  {% endif %}

  {% if body_bg_color_data == nil %}
    {% assign body_bg_color_data_str = "" %}
  {% else %}
    {% assign body_bg_color_data_str = body_bg_color_data | json %}
  {% endif %}

  {% comment %}SITE CONTAINER RELATED VARIABLES.{% endcomment %}
  {% if blog_article_page %}
    {% assign container_bg = article.data.container_bg %}
  {% else %}
    {% assign container_bg = page.data.container_bg %}
  {% endif %}

  {% assign container_bg_color = container_bg.color %}
  {% assign container_bg_color_data = container_bg.colorData %}
  {% assign container_bg_combined_lightness = container_bg.combinedLightness %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if container_bg %}
    {% if container_bg_combined_lightness %}
      {% if container_bg_combined_lightness > 0.6 %}
        {% assign container_bg_type = "light-background" %}
      {% else %}
        {% assign container_bg_type = "dark-background" %}
      {% endif %}
    {% else %}
      {% if container_bg_color_data.a >= 0.6 %}
        {% if container_bg_color_data.lightness >= 0.6 %}
          {% assign container_bg_type = "light-background" %}
        {% else %}
          {% assign container_bg_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% assign container_bg_type = "light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign container_bg_type = "light-background" %}
  {% endif %}

  {% if container_bg_color == nil %}
    {% if front_page %}
      {% assign container_bg_color = "" %}
    {% else %}
      {% assign container_bg_color = "rgb(255,255,255)" %}
    {% endif %}
  {% endif %}

  {% if container_bg_color_data == nil %}
    {% assign container_bg_color_data_str = "" %}
  {% else %}
    {% assign container_bg_color_data_str = container_bg_color_data | json %}
  {% endif %}
{% endcapture %}