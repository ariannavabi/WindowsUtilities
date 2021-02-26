using System;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using Microsoft.Win32;

namespace ProxyDisabler
{
    public partial class Form_ProxyDisabler : Form
    {
        public Form_ProxyDisabler()
        {
            InitializeComponent();
        }

        [DllImport("wininet.dll")]
        public static extern bool InternetSetOption(IntPtr hInternet, int dwOption, IntPtr lpBuffer, int dwBufferLength);
        public const int INTERNET_OPTION_SETTINGS_CHANGED = 39;
        public const int INTERNET_OPTION_REFRESH = 37;
        bool settingsReturn, refreshReturn;

        /// <summary>
        /// App Start
        /// </summary>        
        private void Form_ProxyDisabler_Load(object sender, EventArgs e)
        {
            disableProxy();
        }

        /// <summary>
        /// This function does all the job & it is called in the form load.
        /// </summary>
        void disableProxy()
        {
            try
            {
                RegistryKey RegKey = Registry.CurrentUser.OpenSubKey("Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings", true);
                //RegKey.SetValue("ProxyServer", YourIP);
                RegKey.SetValue("ProxyEnable", 0);

                // These lines implement the Interface in the beginning of program 
                // They cause the OS to refresh the settings, causing IP to realy update
                settingsReturn = InternetSetOption(IntPtr.Zero, INTERNET_OPTION_SETTINGS_CHANGED, IntPtr.Zero, 0);
                refreshReturn = InternetSetOption(IntPtr.Zero, INTERNET_OPTION_REFRESH, IntPtr.Zero, 0);


                MessageBox.Show(
                    "Proxy is succesfully disabled.",
                    "Proxy Disabled!",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Information,
                    MessageBoxDefaultButton.Button1
                    );

                Close();
            }
            catch (Exception exp)
            {
                DialogResult dr = MessageBox.Show(
                    exp.Message,
                    "Error!",
                    MessageBoxButtons.RetryCancel,
                    MessageBoxIcon.Error,
                    MessageBoxDefaultButton.Button1
                    );

                if (dr == DialogResult.Retry)
                {
                    disableProxy();
                }
                else
                {
                    Close();
                }
            }
        }

    }
}
