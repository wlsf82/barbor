#encoding: utf-8

Quando /^no campo '(.+)' é selecionada a opção '(.+)'$/ do |field_label, option|
  on ArborFieldPage do |page| page.choose_by_label field_label, option end
end

Quando /^é definido para o campo '(.+)' o valor '(.+)'$/ do |field_label, field_value|
  visit ArborFieldPage do |page| page.set_field field_label, field_value end
end

Quando /^o botão '(.+)' é pressionado$/ do |button_label|
  on ArborFieldPage do |button| button.click_button button_label end
end

Quando /^o elemento com a etiqueta '(.+)' com o conteúdo '(.+)' é pressionado$/ do |button_tag, button_tag_value|
  on ArborFieldPage do |button| button.click_element_by_tag button_tag, button_tag_value end
end

Quando /^o botão '(.+)' é pressionado por '(.+)' vezes$/ do |button_label, button_times|
  on ArborFieldPage do |page|
    puts button_times
    times = button_times.to_i
    puts times
    while 0 < times do
      page.click_button button_label end
      times -=1
      puts times
    end
end

# Quando /^o botão '(.+)' é pressionado$/ do |button_label|
#   on ArborFieldPage do |button| button.click_button button_label end
# end

Dado /^que é digitada a tecla '(.+)'$/ do |key|
  on ArborFieldPage do |page| page.press key end
end

E /^o elemento com a identificação '(.+)' é enviado$/ do |id|
  on ArborFieldPage do |page| page.submit id end
end

Dado /^que o elemento com a etiqueta '(.+)', de conteúdo '(.+)' recebe o valor '(.+)'$/ do |html_tag, tag_content, value|
  on ArborFieldPage do |page| page.set_element_value_by_tag_content html_tag, tag_content, value end
end
