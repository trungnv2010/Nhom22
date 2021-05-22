function getData(elem) {
    $.ajax({
        url: "../../../controller/admin/form_edit/form-admin.php",
        method: "post",
        data: {
            id: $(elem).data('id')
        },
        success: function (result) {
            $('#modal-popup-edit').html(result);
            $('#modal-popup-edit').modal();
        }
    });
}

function closeForm() {
    $.modal.close();
}


function askDelete(elem) {
    console.log(1);
    var result = confirm("Bạn chắc chắn muốn xóa");
    if(result)  {
        $.ajax({
            url: "../../../controller/admin/delete/admin.php",
            method: "post",
            data: {
                id: $(elem).data('id')
            },
            success: function (kq) {
                $(elem).html(kq);
                location.reload();
            }
        });
    }
}

