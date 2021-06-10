using Access;
using System;

namespace Access
{
    public class BaseContext : IDisposable
    {
        #region Attributes

        private RestauranteEntities _context;

        #endregion

        #region Methods

        public void LoadNewContext()
        {
            _context = new RestauranteEntities();
        }

        #endregion

        #region Properties

        public RestauranteEntities Context
        {
            get
            {
                if (_context == null)
                    _context = new RestauranteEntities();

                return _context;
            }
        }

        #endregion

        #region IDisposable

        public void Dispose()
        {
            _context.Dispose();
        }

        #endregion
    }
}






