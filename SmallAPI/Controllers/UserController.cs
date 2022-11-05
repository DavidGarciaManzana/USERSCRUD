using examen_backend_DAVID_GARCIA.Services;
using Microsoft.AspNetCore.Mvc;

namespace examen_backend_DAVID_GARCIA.Controllers
{
    [Route("api/[controller]")]
    public class UserController: ControllerBase
    {
        IUserService userServiceParameter;
        public UserController(IUserService userServiceParameter)
        {
            this.userServiceParameter = userServiceParameter;
        }
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(userServiceParameter.Get());
        }
    }
}
