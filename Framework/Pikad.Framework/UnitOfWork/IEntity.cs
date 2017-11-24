using System;

namespace Bargozideh.Framework.UnitOfWork
{
    public interface IEntity<TPk> where TPk : IComparable 
    {
        TPk Id { get; set; }
    }
}
