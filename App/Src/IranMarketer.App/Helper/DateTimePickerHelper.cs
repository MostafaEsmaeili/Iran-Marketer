using System;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Properties;
using Kendo.Mvc.UI;
using Kendo.Mvc.UI.Fluent;

namespace IranMarketer.App.Helper
{
    public static class DateTimePickerHelper
    {
        public static IHtmlString PersianDateTimePicker(this HtmlHelper helper, string name,bool enableTime=false,bool isGregorian=false,string format= "yyyy/MM/dd")
        {

            var inputName = name + "_input";
            var result =
                $"<input class='form-control ui-wizard-content' name='{name}' id='{name}' data-englishnumber='true' data-format='{format}' data-isgregorian='{isGregorian}' data-MdDateTimePicker='true' data-TargetSelector='#{name}' data-EnableTimePicker='{enableTime}' data-Placement='bottom' data-Trigger='click'> ";

            return new MvcHtmlString(result);
            //TagBuilder tb = new TagBuilder("input");
            //tb.Attributes.Add("type", "file");
            //tb.Attributes.Add("id", id);
            //return new MvcHtmlString(tb.ToString());
        }
    }
}