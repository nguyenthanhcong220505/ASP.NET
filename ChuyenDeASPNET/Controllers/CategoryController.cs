﻿using ChuyenDeASPNET.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ChuyenDeASPNET.Controllers
{
    public class CategoryController : Controller
    {
        // GET: Category
        public ActionResult AllCategory()
        {
            return View();
        }
        public ActionResult ProductByCategory()
        {
            return View();
        }
    }
}