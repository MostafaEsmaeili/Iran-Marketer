﻿using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using TadbirPardaz.Infrastructure.Utility;

namespace Sahra.MutualFund.UserManagement
{
    public class CustomIdentityEmailService : IIdentityMessageService
    {
        public async Task SendAsync(IdentityMessage message)
        {
            try
            {
                var mail = new MailMessage();
                //var smtpServer = new SmtpClient("smtp.gmail.com");
                var smtpServer = new SmtpClient(ConfigurationManager.AppSettings["SmtpClientAddress"].SafeString());

                mail.From = new MailAddress(ConfigurationManager.AppSettings["IdentityMailAddress"].SafeString());
                mail.To.Add(message.Destination);
                mail.Subject = message.Subject;
                mail.Body = message.Body;
                mail.IsBodyHtml = true;
                smtpServer.Port = ConfigurationManager.AppSettings["IdentityMailPort"].SafeInt();
                smtpServer.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["NetworkCredentialUsername"].SafeString(), ConfigurationManager.AppSettings["NetworkCredentialPassword"].SafeString());
                smtpServer.EnableSsl = true;
                //smtpServer.UseDefaultCredentials = true;
                smtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
