$(document).ready(function(){
	BindEvents();
});

function BindEvents(){
	$('.user_check').click('.user_check', function(event){
		event.preventDefault();
		$(this).parent().parent().parent().attr('id', 'divresult')
		var user_delete = $(this).attr('href');
		deleteUser(user_delete);
	});
};

function deleteUser(user_delete){
	swal({
		title: "Are you sure?",
		text: "Are you sure that you want to delete this client's message?",
		type: "warning",
		showCancelButton: true,
		closeOnConfirm: false,
		closeonCancel: false,
		confirmButtonText: "Yes, delete client.",
		confirmButtonColor: "#ec6c62"
	}, 
	function(isConfirm){
		if (isConfirm){
			$.ajax ({
				type: "DELETE",
				url: user_delete,
				data: {"_method":"delete"},
			})
			.done(function(data) {
				swal("Deleted!", "Your client's comment was successfully deleted.", "success");
			})
			.error(function(data) {
				swal("Ooops", "We couldn't delete your client.", "error");
			})
			.success(function(){
				$('#divresult').load('/users #divresult');			
			});
			BindEvents();
		}
		else {
			swal("Cancelled", "Your client's requested has not been deleted.", "error");
		}
	});
};