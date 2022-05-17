using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography; // Make sure to inlcude this on your utils class
using System.Data.SqlClient;

namespace WebApplication1
{
    public class utils
    {
        public static string hashPassword(string password)
        {
            SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();

            byte[] password_bytes = Encoding.ASCII.GetBytes(password);
            byte[] encrypted_bytes = sha1.ComputeHash(password_bytes);
            return Convert.ToBase64String(encrypted_bytes);
        }


    }
}


//# With in your Form, encode the password texbox by calling the class name utils to use the hashpassword method.

//Example(On your registration Form where you would save username and password, the encoding shown below would be found in your save button)

//// the password textbox passed as an argument into the hashPassword method after calling the utils method 

//- utlis.hashPassword(txtpassword.text);  