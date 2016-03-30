var separateComma = function(num) {
	var newString = '';
	num = String(num);
	if (num.length === 4)
		for(var i = 0; i < num.length; i++)
			if( i === 1)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else if (num.length === 5)
		for(var i = 0; i < num.length; i++)
			if( i === 2)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else if (num.length === 6)
		for(var i = 0; i < num.length; i++)
			if( i === 3)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else if (num.length === 7)
		for(var i = 0; i < num.length; i++)
			if( i === 1 || i === 4)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else if (num.length === 8)
		for(var i = 0; i < num.length; i++)
			if( i === 2 || i === 5)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else
		for(var i = 0; i < num.length; i++)
			newString +=  num[i];
		return newString;
};
console.log(separateComma(123456789012345567));