using System;

namespace Pikad.Framework.UnitOfWork
{
    public interface IEntity<TPk> where TPk : IComparable 
    {
        TPk Id { get; set; }
    }
}
