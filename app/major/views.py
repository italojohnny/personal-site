from flask import render_template
from . import major


@major.route('/')
def index ():
    return render_template('index.html')
