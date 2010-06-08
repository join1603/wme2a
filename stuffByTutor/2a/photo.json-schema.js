{"description":"Represents one single photo. A photo has some metadata like URI, width, height and creation date, but also contains tags and rating information.",
 "type":"object",
 "properties":{
	"id":{"type":"number","description":"The photo's unique id."},
	"uri":{"type":"string","description":"A URI that points to the actual file. May be a relative path or an arbitrary URL."},
	"title":{"type":"string","description":"A title as chosen by the photo's author."},
	"created":{"type":"number","description":"The date when the photo was submitted to PhotonPainter. The format is UNIX timestamp."},
	"width":{"type":"number","description":"The photo's width in pixel."},
	"height":{"type":"number","description":"The photo's height in pixel."},
	"geo_lat":{"type":"number","description":"Latitude coordinate where the photo was taken (-90° - 90°). Can be null (not set)."},
	"geo_long":{"type":"number","description":"Longitude coordinate where the photo was taken (-180° - 180°). Can be null (not set)."},
	"aperture":{"type":"string","description":"Aperture setting for this photo. Can be null (not set)."},
	"exposuretime":{"type":"string","description":"Exposure time for this photo. Can be null (not set)."},
	"focallength":{"type":"string","description":"Focal length for this photo. Can be null (not set)."},
	"views":{"type":"number","description":"Indicates how many users have viewed this photo."},
	"author":{"type":"number","optional":true,"description":"ID of the user who uploaded this photo. Missing for external photos."},
	"description":{"type":"string","description":"A short description by the photo's author."},
	"tags":{"type":"string","description":"Contains all tags that have been added to this photo."}
	}
}