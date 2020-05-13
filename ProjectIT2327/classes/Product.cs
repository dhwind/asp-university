using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson.Serialization.Attributes;

namespace ProductProp
{
    public class Product
    {
        [BsonId]
        public Guid Id { get; set; }
        public string Photo { get; set; }
        public string Title { get; set; }
        public string[] Composition { get; set; }
        public int Price { get; set; }
        public int Weight { get; set; }
        public string Product_id { get; set; }
    }
}