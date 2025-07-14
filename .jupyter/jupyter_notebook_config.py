# Configuration file for jupyter_notebook.
c = get_config()

# disable token requirement (localhost docker use case, so we can relax security)
c.NotebookApp.token = ''
c.NotebookApp.password = u''

# Containerized, so don't open the browser
c.NotebookApp.open_browser = False
c.NotebookApp.ip = '0.0.0.0'
