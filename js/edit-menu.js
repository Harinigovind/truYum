
	function Validate(){
		var titie=document.getElementById("food").value;
		var pri=document.getElementById("price").value;
		var da=document.getElementById("dateOfLaunch").value;
		
		var dateOfLaunch=Date.parse(da);
		if((titie.length)>=2 && (titie.length)<=65){
			
			window.open("edit-menu-item-status.html", "_self");
		}

		else{
			if(isNAN(dateOfLaunch))
			{
			   alert("Invalid date type");	
		    }

			alert("Invalid Inputs");
		}
		
		return false;
	}

