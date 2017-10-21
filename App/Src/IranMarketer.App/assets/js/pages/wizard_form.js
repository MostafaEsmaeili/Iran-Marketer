/* ------------------------------------------------------------------------------
*
*  # Form wizard
*
*  Specific JS code additions for wizard_form.html page
*
*  Version: 1.1
*  Latest update: Dec 25, 2015
*
* ---------------------------------------------------------------------------- */

$(function() {


    // AJAX form submit
    $(".form-ajax").formwizard({
        disableUIStyles: true,
        formPluginEnabled: true,
        disableInputFields: false,
        validationEnabled: true,
        inDuration: 150,
        outDuration: 150,
        formOptions: {
            success: function (data) {
                swal({
                    title: "Congratulations!",
                    text: "You are registered now!",
                    type: "success",
                    timer: 2000,
                    confirmButtonColor: "#43ABDB"
                });
            },
			beforeSubmit: function (data) {
			    debugger;
                $("#ajax-data").css({ borderTop: '1px solid #ddd', padding: 15 })
                    .html("<span class='text-semibold'>Data sent to the server:</span> " + $.param(data));
            },
            dataType: "json",
            resetForm: true
        }
    });

    debugger;
    var remoteAjax = {}; // empty options object
    $(".form-ajax .step").each(function () { // for each step in the wizard, add an option to the remoteAjax object...
        remoteAjax[$(this).attr("id")] = {
            url: "/Profile/SaveBasicPartyInformarion", // the url which stores the stuff in db for each step
            dataType: 'json',
            beforeSubmit: function (data) {
                debugger;
                $("#data").html("data sent to the server: " + $.param(data));


            },
            success: function (data) {
                debugger;
                if (data) { //data is either true or false (returned from store_in_database.html) simulating successful / failing store
                    $("#data").append("    .... store done successfully");
                } else {
                    alert("Server-side validation returned errors, nothing was stored.");
                }

                return data; //return true to make the wizard move to the next step, false will cause the wizard to stay on the CV step (change this in store_in_database.html)
            }
        };
    });
    $(".form-ajax").formwizard("option", "remoteAjax", remoteAjax); // set the remoteAjax option for the wizard







    // Initialize plugins
    // ------------------------------

    // Select2 selects
    $('.select').select2();


    // Simple select without search
    $('.select-simple').select2({
        minimumResultsForSearch: Infinity
    });


    // Styled checkboxes and radios
    $('.styled').uniform({
        radioClass: 'choice'
    });


    // Styled file input
    $('.file-styled').uniform({
        fileButtonClass: 'action btn bg-blue'
    });


    // Uncomment if you use styled checkboxes/radios to update them dynamically when step changed
    $(".form-basic, .form-validation, .form-add-steps, .form-ajax").on("step_shown", function (event, data) {
        //$.uniform.update();
    });


});

