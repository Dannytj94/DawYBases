$(function() {
    $("#search").on("click", function(){
       var searchTerm=$("#searchTerm").val();
        var url = "https://en.wikipedia.org/w/api.php?action=opensearch&search="+ searchTerm +"&format=json&callback=?";
        $.ajax({
           url: url,
            type: 'GET',
            contentType:"application/json; charset=utf-8",
            async: false,
            dataType: 'json',
            success: function(data, status, jqXHR){
                var color=['pink darken-1','purple darken-2', 'deep-purple darken-2', 'indigo darken-2', 'green darken-1'];
                var output = document.getElementById("output");
                var str='';
                console.log(data);
                for(var i=1;i<10;i++){
                    let rand= Math.floor(Math.random()*5);
                    
                        str+='<div class="row">';
                    
                    str+='<div class="col s12"><div class="card '+color[rand]+'">';
                    str+='<div class="card-content white-text"><span class="card-title">'+data[1][i]+'</span><p>'+data[2][i]+'</p></div><div class="card-action"><a href="'+data[3][i]+'">This is a link</a></div>';
                    str+='</div></div>';
                    
                        str+='</div>';
                    
                }
                output.innerHTML = str;
          console.log(str);
            }
            
                 })
            .done(function(){
                  console.log("success");
                  })
            .fail(function(){
        console.log("error");
    })
            .always(function(){
                console.log("complete");
                    
        });
        
        
    });
});
