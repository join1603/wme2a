{"description":"A comment on a photo, made by a user.",
 "type":"object",
 "properties":{
	"id":{"type":"number","description":"ID of this comment."},
	"title":{"type":"string","optional":true,"description":"The title of this comment. Can be null (not set)."},
	"user":{"type":"number","optional":true,"description":"ID of the user who submitted this comment. Null (missing) for anonymous comments."},
	"photo":{"type":"number","description":"ID of the photo this comment was submitted for."},
	"created":{"type":"number","description":"The date when the comment was submitted. The format is UNIX timestamp."},
	"comment":{"type":"string","description":"The body of this comment."}
	}
}