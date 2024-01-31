$(function(){
    getCartQuantity();
    $('.addToCartButton').on('click', function(e){
        e.preventDefault();
        const productID = $(this).data('productid');
        $.ajax({
            url: '../functions.php',
            method: 'POST',
            data: {
                action: 'addToCart', 
                productID: productID
            },
            cache: false,
            dataType: 'text',
            success: function() {
                $(`#success_${productID}`).show();
                setTimeout(function() {
                    $(`#success_${productID}`).fadeOut('slow', function() {
                      
                    });
                }, 3000);
                getCartQuantity();
            },
            error: function(errorThrown) {
                $(`#failure_${productID}`).show();
                setTimeout(function() {
                    $(`#failure_${productID}`).fadeOut('slow', function() {
                      
                    });
                }, 3000);
                $.error(errorThrown);
                $('#successMessage').hide();
                $('#errorMessage').show();
            }
        });
    });

    $('#orderForm').on('submit', function(){
        let orderObject = {};
        $('.productCell').each(function() {
            const thisProductID = $(this).data('productid');
            const thisQuantity = $(this).data('quantity');
            orderObject[thisProductID] = thisQuantity;
        });
        $('#productData').val(JSON.stringify(orderObject));
    });

    $('.removeButton').on('click', function(e) {
        e.preventDefault();
        const productID = $(this).data('productid');
        $.ajax({
            method: 'POST',
            url: '../functions.php',
            data: {
                action: 'deleteFromCart',
                productID: productID
            },
            cache: false,
            dataType: 'text',
            success: function() {
                $(`#row_${productID}`).remove();
                $('.productsRow').each(function() {
                    var total = 0;
                    $('.productCost').each(function() {
                        var cost = $(this).data('productcost');
                        total += parseFloat(cost);
                    
                        $('#totalCost').html('<strong>$' + +total.toFixed(2) + '</strong>');
                    });
                });
                getCartQuantity();
                if ($('.productsRow').length === 0) {
                    $('#totalCost').html('<strong>$' + 0 + '</strong>');
                    $('#quantityCountBadge').html('0');
                };
            },
            error: function(errorThrown) {
                $.error(errorThrown);
                $('#successMessage').hide();
                $('#errorMessage').show();
            }
        });
    });
});

function getCartQuantity() {
    $.ajax({
        url: '../functions.php',
        method: 'POST',
        data: {
            action: 'getCartQuantity'
        },
        cache: false,
        dataType: 'text',
        success: function(data) {
            if (data > 0) {
                $('#quantityCountBadge').html(data);
            } else {
                $('#quantityCountBadge').html('0');
                $('.submitButton').prop('disabled', true);
            }
        },
        error: function(errorThrown) {
            $.error(errorThrown);
            $('#successMessage').hide();
            $('#errorMessage').show();
        }
    });
}