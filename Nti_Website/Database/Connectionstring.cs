﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Nti_Website.Database
{
    public class Connectionstring
    {
        public static string con = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
        
    }
}