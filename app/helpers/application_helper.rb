module ApplicationHelper
	def easy_checkbox(n, l = nil)
		"#{check_box_tag n, true, params[n]}#{label_tag n, (l ? l : n.to_s.humanize)}".html_safe
	end
	def icon(title, attribute, icon_name)
		"<i class=\"material-icons \" style=\"color:#{attribute ? '#2196F3' : 'lightgrey'}\">#{icon_name}</i>".html_safe
	end
end
