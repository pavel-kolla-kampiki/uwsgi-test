#! /bin/env python
from time import sleep

from flask import Flask, Blueprint

views = Blueprint('default', __name__, url_prefix='/')


@views.route('')
def root():
    return 'OK'


# emulating long startup delay
sleep(30)

app = Flask(__name__)
app.register_blueprint(views)
