using System;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

namespace FluentAdo.SqlServer
{
    public partial class FluentCommand<T> 
    {
        public FluentCommand<T> SetDirection(ParameterDirection direction)
        {
            if (_command.Parameters.Count == 0) return this;

            DbParameter parameter = _command.Parameters[_command.Parameters.Count - 1];
            parameter.Direction = direction;

            return this;
        }

        public object GetParamValue(string paramName)
        {
            return _command.Parameters[paramName].Value;
        }

        public DbParameter CreateParam(string name, SqlDbType dataType, object value)
        {
            var param = new SqlParameter(name, dataType);
            param.Value = SetParamValue(value); 
            _command.Parameters.Add(param);
            return param;
        }

        public DbParameter CreateParam(string name, SqlDbType dataType)
        {
            var param = new SqlParameter(name, dataType);
            _command.Parameters.Add(param);
            return param;
        }

        public FluentCommand<T> Add<TV>(string name, TV value)
        {
            var param = new SqlParameter(name, value);
            _command.Parameters.Add(param);
            return this;
        }

        public FluentCommand<T> AddInt(string name)
        {
            CreateParam(name, SqlDbType.Int);
            return this;
        }

        public FluentCommand<T> AddInt(string name, int value)
        {
            CreateParam(name, SqlDbType.Int, value);
            return this;
        }

        public FluentCommand<T> AddInt(string name, int? value)
        {
            CreateParam(name, SqlDbType.Int, value);
            return this;
        }

        public FluentCommand<T> AddDecimal(string name)
        {
            CreateParam(name, SqlDbType.Decimal);
            return this;
        }

        public FluentCommand<T> AddDecimal(string name, decimal value)
        {
            CreateParam(name, SqlDbType.Decimal, value);
            return this;
        }

        public FluentCommand<T> AddDecimal(string name, decimal? value)
        {
            CreateParam(name, SqlDbType.Decimal, value);
            return this;
        }


        public FluentCommand<T> AddDateTime(string name)
        {
            CreateParam(name, SqlDbType.DateTime);
            return this;
        }

        public FluentCommand<T> AddDateTime(string name, DateTime value)
        {
            CreateParam(name, SqlDbType.DateTime, value);
            return this;
        }

        public FluentCommand<T> AddDateTime(string name, DateTime? value)
        {
            CreateParam(name, SqlDbType.DateTime, value);
            return this;
        }

        public FluentCommand<T> AddDateTime2(string name, DateTime value)
        {
            CreateParam(name, SqlDbType.DateTime2, value);
            return this;
        }

        public FluentCommand<T> AddDateTime2(string name, DateTime? value)
        {
            CreateParam(name, SqlDbType.DateTime2, value);
            return this;
        }

        public FluentCommand<T> AddString(string name, int size, string value)
        {
            CreateParam(name, SqlDbType.NVarChar, size);
            return this;
        }

        public FluentCommand<T> AddString(string name)
        {
            CreateParam(name, SqlDbType.NVarChar);
            return this;
        }

        public FluentCommand<T> AddString(string name, int size)
        {
            var param = CreateParam(name, SqlDbType.NVarChar);
            param.Size = size;
            return this;
        }

        public FluentCommand<T> AddString(string name, string value)
        {
            CreateParam(name, SqlDbType.NVarChar, value);
            return this;
        }

        public FluentCommand<T> AddGuid(string name)
        {
            CreateParam(name, SqlDbType.UniqueIdentifier);
            return this;
        }

        public FluentCommand<T> AddGuid(string name, Guid value)
        {
            var param = CreateParam(name, SqlDbType.UniqueIdentifier);
            param.Value = SetGuidParamValue(value);
            return this;
        }
        public FluentCommand<T> AddGuidID(string name)
        {
            var param = CreateParam(name, SqlDbType.UniqueIdentifier);
            param.Value = SetGuidParamValue(Guid.NewGuid());
            return this;
        }

        public FluentCommand<T> AddBoolean(string name)
        {
            CreateParam(name, SqlDbType.Bit);
            return this;
        }
        public FluentCommand<T> AddBoolean(string name, bool value)
        {
            CreateParam(name, SqlDbType.Bit, value);
            return this;
        }


    }
}