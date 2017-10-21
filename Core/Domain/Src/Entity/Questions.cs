// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do:
//
//    using IranMareer.Doamin;
//
//    var data = Questions.FromJson(jsonString);
//
namespace IranMarketer.Domain
{
    using System;
    using System.Net;
    using System.Collections.Generic;

    using Newtonsoft.Json;

    public partial class Questions
    {
        [JsonProperty("pages")]
        public List<Page> Pages { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }
    }

    public partial class Page
    {
        [JsonProperty("elements")]
        public List<Element> Elements { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }
    }

    public partial class Element
    {
        [JsonProperty("isRequired")]
        public bool IsRequired { get; set; }

        [JsonProperty("choicesByUrl")]
        public ChoicesByUrl ChoicesByUrl { get; set; }

        [JsonProperty("choices")]
        public List<Choice> Choices { get; set; }

        [JsonProperty("indent")]
        public long Indent { get; set; }

        [JsonProperty("requiredErrorText")]
        public string RequiredErrorText { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("type")]
        public string Type { get; set; }
    }

    public partial class ChoicesByUrl
    {
        [JsonProperty("titleName")]
        public string TitleName { get; set; }

        [JsonProperty("path")]
        public string Path { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("valueName")]
        public string ValueName { get; set; }
    }

    public partial class Choice
    {
        [JsonProperty("text")]
        public string Text { get; set; }

        [JsonProperty("value")]
        public string Value { get; set; }
    }

    public partial class Questions
    {
        public static Questions FromJson(string json) => JsonConvert.DeserializeObject<Questions>(json, Converter.Settings);
    }

    public static class Serialize
    {
        public static string ToJson(this Questions self) => JsonConvert.SerializeObject(self, Converter.Settings);
    }

    public class Converter
    {
        public static readonly JsonSerializerSettings Settings = new JsonSerializerSettings
        {
            MetadataPropertyHandling = MetadataPropertyHandling.Ignore,
            DateParseHandling = DateParseHandling.None,
        };
    }
}
