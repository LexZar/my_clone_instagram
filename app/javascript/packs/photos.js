$(function(){
    $(".photo-like").on("click", function(){
        var photo_id = $(this).data("id");

        $.ajax({
            url:"/photo/like/" + photo_id,
            method: "GET"
        }).done(function(response){
            console.log(response);
        })
    })
});

