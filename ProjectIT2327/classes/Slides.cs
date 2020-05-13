using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson.Serialization.Attributes;

namespace SlideImages
{
    public class Slides
    {
        [BsonId]
        public Guid Id { get; set; }
        public string Url { get; set; }
        public string Slide_id { get; set; }

    }
}