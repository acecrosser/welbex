from flask import Flask, request
from flask import render_template
from .confg import Configuration
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

app = Flask(__name__)
app.config.from_object(Configuration)
db = SQLAlchemy(app)
migrate = Migrate(app, db)

from .model import SinglePageTable


@app.route('/')
def index():

    table = SinglePageTable.query.all()
    return render_template('index.html', table=table)


@app.route('/table')
def tabel_page():
    
    column = request.args.get('column')
    param = request.args.get('param')
    filter_item = request.args.get('text_input')

    if param == 'ilike':
        table = SinglePageTable.query.filter(
            getattr(SinglePageTable, f'{column}').ilike(f'%{filter_item}%')
        ).order_by(getattr(SinglePageTable, f'{column}'))
        return render_template('table.html', table=table)

    elif param == '==':
        table = SinglePageTable.query.filter(
            getattr(SinglePageTable, f'{column}') == (f'{filter_item}')
        ).order_by(getattr(SinglePageTable, f'{column}'))
        return render_template('table.html', table=table)

    elif param == '>':
        table = SinglePageTable.query.filter(
            getattr(SinglePageTable, f'{column}') > (f'{filter_item}')
        ).order_by(getattr(SinglePageTable, f'{column}'))
        return render_template('table.html', table=table)

    elif param == '<':
        table = SinglePageTable.query.filter(
            getattr(SinglePageTable, f'{column}') < (f'{filter_item}')
        ).order_by(getattr(SinglePageTable, f'{column}'))
        return render_template('table.html', table=table)

    table = SinglePageTable.query.all()
    return render_template('table.html', table=table)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port='8000')