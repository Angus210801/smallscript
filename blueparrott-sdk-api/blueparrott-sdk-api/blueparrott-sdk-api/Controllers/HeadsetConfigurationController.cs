using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace blueparrott_sdk_api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HeadsetConfigurationController : ControllerBase
    {

        private readonly ILogger<HeadsetConfigurationController> _logger;

        public LocationInformation locationInformation { get; set; }
 
        private void GetLocationInformation()
        {
            try
            {
                locationInformation = new LocationInformation();
                //Get the IP address 
                IPAddress remoteIpAddress = Request.HttpContext.Connection.RemoteIpAddress;
                string result = "";
                if (remoteIpAddress != null)
                {
                    // If we got an IPV6 address, then we need to ask the network for the IPV4 address 
                    // This usually only happens when the browser is on the same machine as the server.
                    if (remoteIpAddress.AddressFamily == System.Net.Sockets.AddressFamily.InterNetworkV6)
                    {
                        remoteIpAddress = System.Net.Dns.GetHostEntry(remoteIpAddress).AddressList.First(x => x.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork);
                    }
                    result = remoteIpAddress.ToString();
                }
                // IP API URL
                var Ip_Api_Url = "http://ip-api.com/json/" + result;          

                // Use HttpClient to get the details from the Json response
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.DefaultRequestHeaders.Accept.Clear();
                    httpClient.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
                    // Pass API address to get the Geolocation details 
                    httpClient.BaseAddress = new Uri(Ip_Api_Url);
                    HttpResponseMessage httpResponse = httpClient.GetAsync(Ip_Api_Url).GetAwaiter().GetResult();
                    // If API is success and receive the response, then get the location details
                    if (httpResponse.IsSuccessStatusCode)
                    {
                        locationInformation = httpResponse.Content.ReadFromJsonAsync<LocationInformation>().GetAwaiter().GetResult();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex.ToString());   
            }
        }

        public HeadsetConfigurationController(ILogger<HeadsetConfigurationController> logger)
        {
            _logger = logger;
        }

        [HttpPost(Name = "PostHeadsetConfiguration")]
        public ActionResult<IEnumerable<HeadsetConfiguration>> Post(IEnumerable<HeadsetConfiguration> hsConfigurations)
        {
            try
            {
                this.GetLocationInformation();

                foreach (var hsConfiguration in hsConfigurations)
                {
                    DatabaseAdapter.Instance.WriteHeadsetConfiguration(hsConfiguration, locationInformation);
                }
                return StatusCode(StatusCodes.Status200OK);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError,
                    "Error creating new Headset Configuration record");
            }
        }
    }
}