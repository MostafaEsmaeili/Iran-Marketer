using System;
using System.Data;

namespace IranMarketer.UserManagement
{

    public class DapperIdentityDbContext<TUser, TRole> : IdentityDbContext<TUser, TRole, string, string>
        where TUser : IdentityUser<string>
        where TRole : IdentityRole<string>
    {
        public DapperIdentityDbContext(IDbConnection connection) : base(connection, null)
        {

        }
        public DapperIdentityDbContext(IDbConnection connection, IDbTransaction transaction) : base(connection, transaction)
        {
        }
    }

    public class IdentityDbContext<TUser, TRole, TKey, TRoleKey> : IDisposable
        where TUser : IdentityUser<TKey>
        where TRole : IdentityRole<TRoleKey>
    {
        private IDbConnection _conn;
        private IDbTransaction _transaction;


        private IDapperRepository<TUser, TKey> _userRepository;
        private IDapperRepository<IdentityUserLogin<TKey>> _userLoginDapperRepository;
        private IDapperRepository<IdentityUserClaim<TKey>> _userClaimDapperRepository;
        private IDapperRepository<TRole, TRoleKey> _roleRepository;
        private IDapperRepository<IdentityUserRole<TKey, TRoleKey>> _userRoleDapperRepository;

        public IDapperRepository<TUser, TKey> UserRepository => _userRepository ?? (_userRepository = new DapperRepository<TUser, TKey>(DbConnection, DbTransaction));

        public IDapperRepository<TRole, TRoleKey> RoleRepository => _roleRepository ?? (_roleRepository = new DapperRepository<TRole, TRoleKey>(DbConnection, DbTransaction));

        public IDapperRepository<IdentityUserRole<TKey, TRoleKey>> UserRoleDapperRepository => _userRoleDapperRepository ?? (_userRoleDapperRepository = new DapperDapperRepository<IdentityUserRole<TKey, TRoleKey>>(DbConnection, DbTransaction));
        public IDapperRepository<IdentityUserLogin<TKey>> UserLoginDapperRepository => _userLoginDapperRepository ?? (_userLoginDapperRepository = new DapperDapperRepository<IdentityUserLogin<TKey>>(DbConnection, DbTransaction));

        public IDapperRepository<IdentityUserClaim<TKey>> UserClaimDapperRepository => _userClaimDapperRepository ?? (_userClaimDapperRepository = new DapperDapperRepository<IdentityUserClaim<TKey>>(DbConnection, DbTransaction));

        public IDbConnection DbConnection => _conn;

        public IDbTransaction DbTransaction => _transaction;

        public IdentityDbContext(IDbConnection connection) : this(connection, null)
        {

        }
        public IdentityDbContext(IDbConnection connection, IDbTransaction transaction)
        {
            if (connection == null)
                throw new ArgumentNullException("connection");
            _conn = connection;
            _transaction = transaction;
        }

        public void Dispose()
        {
            if (_conn.State != ConnectionState.Closed)
            {
                _conn.Close();
            }
        }
    }
}
