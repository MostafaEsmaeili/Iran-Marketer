using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Validation;

namespace IranMarketer.Domain.Entity
{
    [Serializable()]
    public class VoucherDetailList : List<VoucherDetail>
    {
        public VoucherDetailList()
        {
            
        }

        public new VoucherDetail this[int index]
        {
            get
            {
                if ((uint)index >= (uint)Count)
                    return default(VoucherDetail);
                return base[index];
            }
            set { base[index] = value; }
        }

        #region Method Members

        public new void Add(VoucherDetail item)
        {
            if (((long)item.Credit == 0 && (long)item.Debit == 0) || ((long)item.Credit != 0 && (long)item.Debit != 0))
            {
                throw new BusinessRuleException("NoVouhcerDetail", "NoVouhcerDetail");
            }
            if (((long)item.Credit < 0 || (long)item.Debit < 0))
            {
                throw new BusinessRuleException("NoVouhcerDetail", "NoVouhcerDetail");
            }
            base.Add(item);

        }

        public void Add(VoucherDetail item, bool isSort)
        {
            if (!isSort)
            {
                this.Add(item);
            }
            else
            {
                if (((long)item.Credit == 0 && (long)item.Debit == 0) || ((long)item.Credit != 0 && (long)item.Debit != 0))
                {
                    throw new BusinessRuleException("NoVouhcerDetail", "NoVouhcerDetail");
                }
                if (((long)item.Credit < 0 || (long)item.Debit < 0))
                {
                    throw new BusinessRuleException("NoVouhcerDetail", "NoVouhcerDetail");
                }
                if (this.Count != 0)
                {
                    int idx = this.Count - 1;
                    if (base[idx].Debit != 0 && item.Debit != 0)
                    {
                        base.Add(item);
                    }
                    else if (this[idx].Credit != 0 && item.Credit != 0)
                    {
                        for (int i = 0; i < idx + 1; i++)
                        {
                            if (this[i].Credit != 0)
                            {
                                base.Add(this[i]);
                                base[i] = item;
                                break;
                            }
                        }
                    }
                    else if (base[idx].Credit != 0 && item.Credit != 0)
                    {
                        base.Add(item);
                    }
                    else if (base[idx].Debit != 0 && item.Credit != 0)
                    {
                        base.Add(item);
                    }
                }
                else
                {
                    base.Add(item);
                }
            }
        }

        public new void CopyTo(VoucherDetail[] array, int arrayIndex)
        {
            this.CopyTo(array, arrayIndex);
        }

        #endregion
    }
}
