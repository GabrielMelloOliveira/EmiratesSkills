using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmiratesSkills_S1.Model
{
    public static class Access
    {
        private static DataModel data = null;

        private static void act(Action<DataModel> act)
        {
            data?.Dispose();
            using (data = new DataModel())
            {
                act(data);
                data.SaveChanges();
            }
            data = null;
        }

        public static void Add<T>(this T entity) where T : class
        {
            act(a => a.Set<T>().Add(entity));
        }

        public static void Edit<T>(this T entity) where T : class
        {
            act(a => a.Entry<T>(entity).State = System.Data.Entity.EntityState.Modified);
        }

        public static void Delete<T>(this T entity) where T : class
        {
            act(a => a.Entry<T>(entity).State = System.Data.Entity.EntityState.Deleted);
        }

        public static IQueryable<T> Select<T>() where T : class
        {
            data = new DataModel();
            return data.Set<T>();
        }
    }
}
