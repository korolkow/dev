var LastViewedCities = function(callback) {
	this.localstorage = new Localstorage(callback);
	this.init = function() {
        if (callback) callback();
	};
	this.support = function() {
		if (this.localstorage.isLocalStorageAvailable() == true)
			return true;
		else return false;
	};
	this.add = function(data) {
		if (this.check(data) === false)
			this.localstorage.setItem('lastViewedCities', data);
		if (callback) callback();
	};
	this.setFavorite = function(data, isFavirite) {
		data.favorite = isFavirite;
		var items = this.getItems();
		items = items.map(function(item) {
			if (item.id === data.id) return data;
			else return item;
		});
        this.localstorage.updateItem('lastViewedCities', items);
	}
	this.remove = function(data) {
		var i = 0, j = 0,
				f = this.localstorage.getItem('lastViewedCities');
		if (f && f.length>0) {
			$.each(f, function(index) {
				if(f[index].id == data.id) j = i;
				i++;
			});
			f.splice(j, 1);
			localStorage.removeItem('lastViewedCities');
			if (f.length>0)
				$.each(f, $.proxy(function(index) {
					this.localstorage.setItem('lastViewedCities', f[index]);
				}, this));
			//jAlert((data.type == 't'?'Город (пункт) ':'Аэропорт ')+data.name+' удалён из списка избранных', 'метеонова');
            if (callback) callback();
		}
	};
	this.check = function(data) {
		if (this.localstorage.isData('lastViewedCities', data)) return true;
		else return false;	
	};
	this.getItems = function() {
		var f = this.localstorage.getItem('lastViewedCities');
		if (f && f.length>0) return f;
		else return [];
	}
}


var Localstorage = function() {
	this.isLocalStorageAvailable = function() {
		try {
			return 'localStorage' in window && window['localStorage'] !== null;
		} catch (e) {
			return false;
		}
	}
	this.isData = function(key, value) {
		var bIn = false;
		if (this.isLocalStorageAvailable()) {	
			var data = localStorage.getItem(key);
			if (data) {
				data = JSON.parse(data);
				$.each(data, function(index) {
					if (data[index].id == value.id) bIn = true;
				});
			}
		}
		return bIn;
	}
	this.setItem = function(key, value, bClear) {
		if (this.isLocalStorageAvailable()) {
			if (bClear) localStorage.removeItem(key);
			var data = localStorage.getItem(key);
			if (data) {
				data = JSON.parse(data);
			}
			else data = [];
			data.push(value);
			localStorage.setItem(key, JSON.stringify(data));
		}		
	}
	this.getItem = function(key) {
		var str = localStorage.getItem(key);
		if (str) return JSON.parse(str);
		else return null;	
	}
	this.updateItem = function(key, value) {
        localStorage.setItem(key, JSON.stringify(value));
	}
}