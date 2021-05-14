from flask import Flask, request
from flask import render_template
from confg import Configuration
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

app = Flask(__name__)
app.config.from_object(Configuration)
db = SQLAlchemy(app)
migrate = Migrate(app, db)

from model import SinglePageTable

@app.route('/', methods=['GET', 'POST'])
def index_page():

    filter_item = request.form.get('text_input')
    column = request.form.get('column')
    param = request.form.get('param')
    page = request.args.get('page', 1, type=int)

    if param == 'ilike':
        table = SinglePageTable.query.filter(
            getattr(SinglePageTable, f'{column}').ilike(f'{filter_item}')
        ).paginate(page, 10, False)
        return render_template('index.html', table=table)

    elif param == '==':
        table = SinglePageTable.query.filter(
            getattr(SinglePageTable, f'{column}') == (f'{filter_item}')
        ).paginate(page, 10, False)
        return render_template('index.html', table=table)

    elif param == '>':
        table = SinglePageTable.query.filter(
            getattr(SinglePageTable, f'{column}') > (f'{filter_item}')
        ).paginate(page, 10, False)
        return render_template('index.html', table=table)

    elif param == '<':
        table = SinglePageTable.query.filter(
            getattr(SinglePageTable, f'{column}') < (f'{filter_item}')
        ).paginate(page, 10, False)
        return render_template('index.html', table=table)

    else:
        page = request.args.get('page', 1, type=int)
        table = SinglePageTable.query.paginate(page, 10, False)
        return render_template('index.html', table=table)
