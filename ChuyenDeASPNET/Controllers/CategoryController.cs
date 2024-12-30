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
        ASPNETEntities3 objASPNETEntities = new ASPNETEntities3();

        public ActionResult Index()
        {

            return View();
        }
        public ActionResult AllCategory()

        {
            var lstCategory = objASPNETEntities.Categories.ToList();

            return View(lstCategory);
        }
        public ActionResult ProductByCategory(int id)

        {
            var listProduct = objASPNETEntities.Products.Where(n => n.CategoryID == id).ToList();
            return View(listProduct);
        }
    }
}