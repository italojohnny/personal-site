from flask import render_template
from . import major


@major.route('/')
def index ():
    return render_template('index.html')


@major.route('/about')
def about ():
    return render_template('about.html')


@major.route('/blog')
def blog ():
    return render_template('blog.html')
