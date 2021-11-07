using Newtonsoft.Json;

namespace Back.Models.Account
{
    public class AddToCartForm
    {
        public string email { get; set; }
        public string password { get; set; }
        public string masanpham { set; get; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}