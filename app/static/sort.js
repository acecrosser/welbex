function sort_title() {
    let table = $('#tabel_sel');
    let tbody = $('#table_body');

    tbody.find('tr').sort(function(a, b) {
        if($('#title_order').val()=='asc') {
            return $('td:first', a).text().localeCompare($('td:first', b).text());
        }
        else {
            return $('td:first', b).text().localeCompare($('td:first', a).text());
        }
    }).appendTo(tbody);

    let sort_order = $('#title_order').val()
    if(sort_order=='asc') {
        document.getElementById("title_order").value='desc';
    }
    if(sort_order=='desc')
    {
        document.getElementById("title_order").value='asc';
    }
}

function sort_volume() {
    if($('#volume_order').val()=='asc') {
        let sortedRow = Array.from(tabel_sel.rows).slice(1).sort((rowA, rowB) => rowA.cells[2].innerHTML > rowB.cells[2].innerHTML ? 1 : -1);
        tabel_sel.tBodies[0].append(...sortedRow);
    }
    else {
        let sortedRow = Array.from(tabel_sel.rows).slice(1).sort((rowB, rowA) => rowB.cells[2].innerHTML > rowA.cells[2].innerHTML ? -1 : 1);
        tabel_sel.tBodies[0].append(...sortedRow);
    };

    let sort_order = $('#volume_order').val()
    if(sort_order=='asc') {
        document.getElementById('volume_order').value='desc';
    }
    if(sort_order=='desc')
    {
        document.getElementById('volume_order').value='asc';
    }
}

function sort_distance() {
    if($('#distance_order').val()=='asc') {
        let sortedRow = Array.from(tabel_sel.rows).slice(1).sort((rowA, rowB) => rowA.cells[3].innerHTML > rowB.cells[3].innerHTML ? 1 : -1);
        tabel_sel.tBodies[0].append(...sortedRow);
    }
    else {
        let sortedRow = Array.from(tabel_sel.rows).slice(1).sort((rowB, rowA) => rowB.cells[3].innerHTML > rowA.cells[3].innerHTML ? -1 : 1);
        tabel_sel.tBodies[0].append(...sortedRow);
    };

    let sort_order = $('#distance_order').val()
    if(sort_order=='asc') {
        document.getElementById('distance_order').value='desc';
    }
    if(sort_order=='desc')
    {
        document.getElementById('distance_order').value='asc';
    }
}