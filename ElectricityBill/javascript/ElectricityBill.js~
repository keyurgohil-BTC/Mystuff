function GenerateBill(){
	alert("Press Ok to see your Bill Amount");

	var varEnergyCharge=EnergyCharges();
	var FPPPA=FPPPACharge();
	var RCharge=RegulatoryCharge();
	var FCharge=FixedCharge();
	var tmp=varEnergyCharge+FPPPA+RCharge+FCharge;
	var govtDuty=GovtDuty(tmp);
	var meterRant=60;
	var chargeWithoutGD=tmp+meterRant;
	var currentBillAmount=chargeWithoutGD+govtDuty;

	document.getElementById("uname").innerHTML=document.frmElect.txtUsername.value;
	document.getElementById("adrs").innerHTML=document.frmElect.txtAddress.value;
	document.getElementById("setCategory").innerHTML=document.frmElect.category.value;
	document.getElementById("setLoad").innerHTML=document.frmElect.numSLoad.value;
	document.getElementById("setSType").innerHTML=document.frmElect.rbPhase.value;
	document.getElementById("setDate").innerHTML=document.frmElect.txtDate.value;
	document.getElementById("setEC").innerHTML=varEnergyCharge;
	document.getElementById("setFPPPA").innerHTML=FPPPA;
	document.getElementById("setRCharge").innerHTML=RCharge;
	document.getElementById("setFCharge").innerHTML=FCharge;
	document.getElementById("setgovtDuty").innerHTML=govtDuty;
	document.getElementById("setgovtDuty2").innerHTML=govtDuty;
	document.getElementById("setmeterRant").innerHTML=meterRant;
	document.getElementById("setchargeWithoutGD").innerHTML=chargeWithoutGD;
	document.getElementById("setcurrentBillAmount").innerHTML=currentBillAmount;
	document.getElementById("setAmountDue").innerHTML=currentBillAmount;
	

/*	alert("Energy Charge : "+varEnergyCharge);
	alert("FPPPA Charge : "+FPPPA);
	alert("Regulatory Charge : "+RCharge);
	alert("Fixed Charge : "+FCharge);
	alert("Govt Duty Charge : "+govtDuty);
	alert("Meter Rant : "+meterRant);
	alert("Without GD : "+chargeWithoutGD);
	alert("Current Bill Amount : "+currentBillAmount);*/
}

/* Method for : Calculating Energy charges based on unit consumped */
function EnergyCharges(){
	var tariffId=parseInt(document.frmElect.tariff.value);
	var presentUnit=document.frmElect.numPRR.value;
	var pastUnit=document.frmElect.numPAR.value;
	var connetionLoad=document.frmElect.numSLoad.value;
	var phase=document.frmElect.rbPhase.value;
	

	var unitConsumed=presentUnit-pastUnit;

	var energyCharge=0;
	switch (tariffId){
		case 1:
			if(unitConsumed<=50){
				energyCharge += (unitConsumed*3.2);
			}	
			else if(unitConsumed<=150){
				energyCharge += (50*3.2);
				unitConsumed -= 50;				
				energyCharge += (unitConsumed*3.9);									
			}
			else{
				energyCharge += (50*3.2);
				energyCharge += (150*3.9);
				unitConsumed -= 200;
				energyCharge += (unitConsumed*4.9);
			}
			if(phase==1){
				energyCharge += 25;
			}
			else if(phase==3){
				energyCharge += 65;				
			}
			break;
		case 2:
			if(unitConsumed<=30){
				energyCharge += (unitConsumed*1.5);
			}	
			else if(unitConsumed<=50){
				energyCharge += (30*1.5);
				unitConsumed -= 30;		
				energyCharge += (unitConsumed*3.2);
			}
			else if(unitConsumed<=200){
				energyCharge += (30*1.5);
				energyCharge += (20*3.2);
				unitConsumed -= 50;		
				energyCharge += (unitConsumed*3.9);				
			}
			else{
				energyCharge += (30*1.5);
				energyCharge += (20*3.2);
				energyCharge += (150*3.9);
				unitConsumed -= 200;
				energyCharge += (unitConsumed*4.9);
			}
			if(phase==1){
				energyCharge += 5;
			}
			else if(phase==3){
				energyCharge += 5;				
			}
			break;
		case 3:
			if(unitConsumed<=200){
				energyCharge += (unitConsumed*4.1);
			}	
			else{
				energyCharge += (200*4.1);
				unitConsumed -= 200;
				energyCharge += (unitConsumed*4.8);
			}
			if(phase==1){
				energyCharge += 30;
			}
			else if(phase==3){
				energyCharge += 70;				
			}
			break;
		case 4:
			if(connetionLoad<=5){
				energyCharge = energyCharge + (unitConsumed * 4.5) //left (Monthty fixed charges 70/pmonth Rupee)
			}	
			else{
				energyCharge = energyCharge + (unitConsumed*4.5) //left(Monthty fixed charges 90/pmonth Rupee)
			}
			break;
		case 5:
			energyCharge += (unitConsumed*3.3);
			break;
	}
	return energyCharge;
//	alert("Energy Charge : "+energyCharge);	
}

/* Method : Calculate FPPPA charge based of 2 Month as of now. */

function FPPPACharge(){
	var unitConsumed=(document.frmElect.numPRR.value)-(document.frmElect.numPAR.value);
	return unitConsumed*0.9;	
}

function RegulatoryCharge(){
	var unitConsumed=(document.frmElect.numPRR.value)-(document.frmElect.numPAR.value);
	return unitConsumed*0.18;
}

function FixedCharge(){
	var sanctionLoad=parseInt(document.frmElect.numSLoad.value);
	if(sanctionLoad<=5){
		return sanctionLoad*70*2;
	}
	else if(sanctionLoad>=5){
		return sanctionLoad*90*2;
	}
	var tariffId=parseInt(document.frmElect.tariff.value);
	if(tariffId==5){
		return sanctionLoad*10*2;
	}

}

function GovtDuty(tmp){
	var categoryId=parseInt(document.frmElect.category.value);
	
	switch(categoryId){
		case 1:
			return tmp*0.15;
			break;
		case 2:
			return tmp*0.25;
			break;
		case 3:
			return tmp*0.10;
			break;
		case 4:
			return tmp*0.25;
			break;
		case 5:
			return tmp*(0.1125);
			break;
	}
}

/* Method : Help in creating dynamic control based on Tariff*/
function setCategories(categoryId){
	if(categoryId==1 || categoryId==2 || categoryId==3){
		document.getElementById("category").innerHTML="<option value='1' readonly>Residential & Approved Educational Institutions</optin>";
		document.getElementById("sanctionLoad").innerHTML="";
	}
	else if(categoryId==4){
		document.getElementById("category").innerHTML="<option selected value=0>Select Category</option><option value='2'>Commercial</option><option value='3'>Industrial</option><option value='4'>Religious Place</option><option value='5'>Hostel</option>";

		document.getElementById("sanctionLoad").innerHTML="<div class='form-group'><label>Sanction Load (KW): </label><input type='number' name='numSLoad' class='form-control' max=15 min=1 placeholder='6.000' required></div>";
	}
	else if(categoryId==5){
		document.getElementById("category").innerHTML="<option selected value=0>Select Category</option><option value='2'>Commercial</option><option value='3'>Industrial</option><option value='4'>Religious Place</option><option value='5'>Hostel</option>";
		document.getElementById("sanctionLoad").innerHTML="<div class='form-group'><label>Sanction Load (KW): </label><input type='number' name='numSLoad' class='form-control' max=15 min=1 placeholder='6.000' required></div>";;
	}
	else{
		document.getElementById("category").innerHTML="<option selected value=0>Select Category</option>";
		document.getElementById("sanctionLoad").innerHTML="";
	}
}



