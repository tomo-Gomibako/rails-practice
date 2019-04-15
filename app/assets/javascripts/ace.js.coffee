$(document).on("turbolinks:load", ->
	content_el = document.querySelector("#article_content")
	editor_el = document.querySelector("#editor")
	preview_el = document.querySelector("#preview")
	if(!editor_el)
		return
	editor = ace.edit("editor")
	editor.setShowPrintMargin(false)
	editor.getSession().setMode("ace/mode/markdown")
	editor.getSession().setValue(content_el.value)

	ref = ->
		value = editor.getSession().getValue()
		content_el.value = value
		preview_el.innerHTML = marked(value)
	
	editor.on("change", ref)
	ref()
)
