$(function(){
    $('.addToCartButton').on('click', function(e){
        e.preventDefault();
        const productID = $(this).data('productid');
        $.ajax({
            url: '../functions.php',
            method: 'POST',
            data: {action: 'addToCart', productID: productID},
            cache: false,
            dataType: 'text',
            success: function(data) {
                console.log(data);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                $.error(errorThrown);
                $('#successMessage').hide();
                $('#errorMessage').show();
            }
        });
    });

});