using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;
using IranMarketer.Common.DLL;

namespace DllManagement
{
    class Program
    {
        static void Main(string[] args)
        {
            CopyDLLs("core");
            CopyDLLs("api");
        }

        private static void CopyDLLs(string path)
        {
            try
            {
                var folders = GetSourceAndDestinationFolders(path);

                var baseDir = GetBaseDir();
                var sources = folders.SourceFolder.Select(x => baseDir + "\\" + path + x + "\\bin");
                var dests = folders.DestinationFolder.Select(x => baseDir + x);
                foreach (var source in sources)
                {
                    foreach (var dest in dests)
                    {
                        if (!Directory.Exists(dest))
                        {
                            Directory.CreateDirectory(dest);
                        }
                        ProcessXcopy(source, dest, path);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private static DirectoryInfo GetBaseDir()
        {
            var exePath = Directory.GetParent((Directory.GetParent(Directory.GetCurrentDirectory()).FullName)).FullName +
                          "\\DllManagement\\Bin";
            var baseDIR = Directory.GetParent(Directory.GetParent((Directory.GetParent(exePath).FullName)).FullName);
            return baseDIR;
        }
        private static DLLConfig GetSourceAndDestinationFolders(string sourceSolution)
        {
            var xmlFile =
                Directory.GetParent((Directory.GetParent(Directory.GetCurrentDirectory()).FullName)).FullName +
                "\\DllManagement\\Bin\\Settings\\";
            switch (sourceSolution.ToLower())
            {
                case "core":
                    xmlFile += "DllConfigCore.xml";
                    break;
                case "api":
                    xmlFile += "DllConfigAPI.xml";
                    break;
            }

            var serializer = new XmlSerializer(typeof(DLLConfig));

            var fs = new FileStream(xmlFile, FileMode.Open);
            var reader = XmlReader.Create(fs);

            var obj = (DLLConfig)serializer.Deserialize(reader);

            fs.Close();

            return obj;
        }
        private static void ProcessXcopy(string solutionDirectory, string targetDirectory, string path)
        {



            try
            {
                if (path == "api")
                {
                    solutionDirectory = solutionDirectory + "\\*api.dll";
                    var startInfo = new ProcessStartInfo
                    {
                        CreateNoWindow = false,
                        UseShellExecute = false,
                        FileName = "xcopy",
                        WindowStyle = ProcessWindowStyle.Hidden,
                        Arguments = "\"" + solutionDirectory + "\"" + " " + "\"" + targetDirectory + "\"" + @"  /s /i /y"
                    };
                    using (Process exeProcess = Process.Start(startInfo))
                    {
                        exeProcess.WaitForExit();
                    }
                }
                else
                {
                    var startInfo = new ProcessStartInfo
                    {
                        CreateNoWindow = false,
                        UseShellExecute = false,
                        FileName = "xcopy",
                        WindowStyle = ProcessWindowStyle.Hidden,
                        Arguments = "\"" + solutionDirectory + "\"" + " " + "\"" + targetDirectory + "\"" + @"  /s /i /y"
                    };
                    using (Process exeProcess = Process.Start(startInfo))
                    {
                        exeProcess.WaitForExit();
                    }
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }

}
