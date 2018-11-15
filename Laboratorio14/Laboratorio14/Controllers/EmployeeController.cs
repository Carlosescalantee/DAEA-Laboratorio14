using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Laboratorio14.Controllers
{

    public class EmployeeController : Controller
    {

        // GET: Employee/GetAllEmpDetails  URL  
        public ActionResult GetAllEmpDetails()
        {
            EmpRepository EmpRepo = new EmpRepository();
            Modetate.Clear();
            return View(EmpRepo.GetAllEmployees());
        }
        // GET: Employee/AddEmployee    URL  
        public ActionResult AddEmployee()
        {
            return View();
        }
        lS




          // POST: Employee/AddEmployee    
          [HttpPost]
public ActionResult AddEmployee(EmpModel Emp)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    EmpRepository EmpRepo = new EmpRepository();
                    if (EmpRepo.AddEmployee(Emp))
                    {
                        ViewBag.Message =“Empleado agregado";    


}
                }
                return View();
            }
            catch
            {
                return View();
            }
        }



        // GET: Employee/EditEmpDetails/5    
        public ActionResult EditEmpDetails(int id)
        {
            EmpRepository EmpRepo = new EmpRepository();
            return View(EmpRepo.GetAllEmployees()
                    .Find(Emp => Emp.Empid == id));
        }

        // POST: Employee/EditEmpDetails/5    
        [HttpPost]
        public ActionResult EditEmpDetails(int id, EmpModel obj)
        {
            try
            {
                EmpRepository EmpRepo = new EmpRepository();
                EmpRepo.UpdateEmployee(obj);
                return RedirectToAction("GetAllEmpDetails");
            }
            catch
            {
                return View();
            }
        }





        // GET: Employee/DeleteEmp/5    
        public ActionResult DeleteEmp(int id)
        {
            try
            {
                EmpRepository EmpRepo = new EmpRepository();
                if (EmpRepo.DeleteEmployee(id))
                {
                    ViewBag.AlertMsg =“Empleado eliminado";    


}
                return RedirectToAction("GetAllEmpDetails");

            }
            catch
            {
                return View();
            }
        }
    }
    }
