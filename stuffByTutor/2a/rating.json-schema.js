{"description":"A rating on a photo, made by a single user.",
 "type":"object",
 "properties":{
	"id":{"type":"number","description":"ID of this rating."},
	"value":{"type":"number","description":"The value of this rating, from 1 to 5 (Amazon style)."},
	"user":{"type":"number","description":"ID of the user who submitted this rating."},
	"photo":{"type":"number","description":"ID of the photo this rating was submitted for."}
	}
}