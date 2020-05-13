using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Driver;
using MongoDB.Bson;
using Newtonsoft.Json;

namespace Database
{
    public class MongoCRUD
    {
        private IMongoDatabase db;

        public MongoCRUD(string database)
        {
            var client = new MongoClient();
            db = client.GetDatabase(database);
        }

        public void InsertRecord<T>(string table, T record)
        {
            var collection = db.GetCollection<T>(table);
            collection.InsertOne(record);
        }

        public List<T> LoadRecords<T>(string table)
        {
            var collection = db.GetCollection<T>(table);

            return collection.Find(new BsonDocument()).ToList();
        }

        public void loadDataFromDB<T>(string path, string table)
        {
            var collectionData = db.GetCollection<T>(table).Find(new BsonDocument()).ToList();
            string jsonData = JsonConvert.SerializeObject(collectionData, Formatting.Indented);
            File.WriteAllText(path, jsonData);
        }
    }
}