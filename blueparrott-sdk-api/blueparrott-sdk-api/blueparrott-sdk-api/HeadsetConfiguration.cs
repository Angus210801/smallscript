namespace blueparrott_sdk_api
{
    public class HeadsetConfiguration
    {
        public string? type { get; set; }

        public string? platform { get; set; }

        public string? client_uuid { get; set; }

        public string? model { get; set; }

        public string? firmware { get; set; }

        public string? headset_uid { get; set; }

        public string? app_version { get; set; }

        public string? sdk_version { get; set; }

        public string? mode { get; set; }

        public string? app_id { get; set; }

        public string? proximity { get; set; }

        public string? country_code { get; set; }

    }

    public class LocationInformation
    {
        public string query { get; set; } = string.Empty;
        public string city { get; set; } = string.Empty;
        public string country { get; set; } = string.Empty;
        public string countryCode { get; set; } = string.Empty;
        public string isp { get; set; } = string.Empty;
        public double lat { get; set; } = 0.0;
        public double lon { get; set; } = 0.0;
        public string org { get; set; } = string.Empty;
        public string region { get; set; } = string.Empty;
        public string regionName { get; set; } = string.Empty;
        public string status { get; set; } = string.Empty; 
        public string timezone { get; set; } = string.Empty;
        public string zip { get; set; } = string.Empty;     
    }
}