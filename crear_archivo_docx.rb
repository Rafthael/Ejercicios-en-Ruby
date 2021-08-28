require 'docx'

# Create a Docx::Document object for our existing docx file
doc = Docx::Document.open('test.docx')

# Insert a single line of text after one of our bookmarks
doc.bookmarks['example_bookmark'].insert_text_after("Hello world.")

# Insert multiple lines of text at our bookmark
doc.bookmarks['example_bookmark_2'].insert_multiple_lines_after(['Hello', 'World', 'foo'])


# Save document to specified path
doc.save('example-edited.docx')
