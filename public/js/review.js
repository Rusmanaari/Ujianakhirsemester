$('#btn-add').click(function () {
    $('#btn-save').val("add");
    $('#clearForm').trigger("reset");
    $('#addReview').modal('show');
});
$('body').on('click', '.open-modal', function () {
    var rate_id = $(this).val();
    $.get('rates/' + rate_id, function (data) {
        $('#rate_id').val(data.id);
        $('#rate').val(data.url);
        $('#ckview').val(data.description);
        $('#btn-save').val("update");
        $('#addReview').modal('show');
    })
});
$("#btn-save").click(function (e) {
    e.preventDefault();
    var state = $('#btn-save').val();
    var rate_id = $('#rate_id').val();
    $.ajax({
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        type: 'POST',
        url: '{{route("review.store")}}',
        data: {
            url: $('#rate').val(),
            description: $('#ckview').val(),
        },
        dataType: 'json',
        success: function (data) {
            var rate = '<tr id="rate' + data.id + '"><td>' + data.id + '</td><td>' + data.url + '</td><td>' + data.description + '</td>';
            rate += '<td><button class="btn btn-info open-modal" value="' + data.id + '">Edit</button>&nbsp;';
            rate += '<button class="btn btn-danger delete-rate" value="' + data.id + '">Delete</button></td></tr>';
            if (state == "add") {
                $('#rates-list').append(rate);
            } else {
                $("#rate" + rate_id).replaceWith(rate);
            }
            $('#clearForm').trigger("reset");
            $('#addReview').modal('hide')
        },
        error: function (data) {
            console.log('Error:', data);
        }
    });
});
