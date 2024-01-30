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
            error: function(errorThrown) {
                $.error(errorThrown);
                $('#successMessage').hide();
                $('#errorMessage').show();
            }
        });
    });

    $('.submitButton').on('click', function(e){
        e.preventDefault();
        let orderObject = {};
        $('.productCell').each(function() {
            const thisProductID = $(this).data('productid');
            const thisQuantity = $(this).data('quantity');
            orderObject[thisProductID] = thisQuantity;
        });
        $('#productData').val(JSON.stringify(orderObject));
        console.log(orderObject);
        $('#orderForm').submit();
        // $.ajax({
        //     url: '../functions.php',
        //     method: 'POST',
        //     data: {action: 'addToCart', productID: productID},
        //     cache: false,
        //     dataType: 'text',
        //     success: function(data) {
        //         console.log(data);
        //     },
        //     error: function(errorThrown) {
        //         $.error(errorThrown);
        //         $('#successMessage').hide();
        //         $('#errorMessage').show();
        //     }
        // });
    });
});