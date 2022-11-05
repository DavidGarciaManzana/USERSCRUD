using examen_backend_DAVID_GARCIA.Models;
using PointOfSaexamen_backend_TU_NOMBRE.Context;

namespace examen_backend_DAVID_GARCIA.Services
{
    public class UserService : IUserService
    {
        private examen_backend_TU_NOMBREContext context;
        public UserService  (examen_backend_TU_NOMBREContext context)
        {
            this.context = context;
        }

        public IEnumerable<UserModel> Get()
        {
            return context.UserModels;
        }
    }
    public interface IUserService
    {
        IEnumerable<UserModel> Get();
    }
}
