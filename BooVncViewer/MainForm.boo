namespace BooVncViewer

import System
import System.Collections
import System.Drawing
import System.Windows.Forms

partial class MainForm:
	public def constructor():
		// The InitializeComponent() call is required for Windows Forms designer support.
		InitializeComponent()
	
	private def ExitToolStripMenuItemClick(sender as object, e as System.EventArgs):
		// Tells the form to close when exit was clicked.
		self.Close()
	
	private def ConnectBtnClick(sender as object, e as System.EventArgs):
		// Tells remote desktop to connect to the ip or name in the textbox and shows a error if failed.
		try:
			rd.Connect(SvrIPorName.Text)
		except ValueError:
			MessageBox.Show("Failed to connect to vnc server. check networking", 
							"FATAL ERROR", 
							MessageBoxButtons.OK, 
							MessageBoxIcon.Error)			
	
	private def DisconnectToolStripMenuItemClick(sender as object, e as System.EventArgs):
		// Tells remote desktop to disconnect from the server and exits.
		if (rd.IsConnected):
			rd.Disconnect()
		self.Close()	
	
	private def ViewOnlyBtnClick(sender as object, e as System.EventArgs):
		// Enables or disables the input for the viewer.
		if (ViewOnlyBtn.Checked == true):
			rd.SetInputMode(true)
		else:
			rd.SetInputMode(false)
	
	private def ScaleBtnClick(sender as object, e as System.EventArgs):
		// fits the viewer in the window.
		if (ScaleBtn.Checked == true):
			rd.SetScalingMode(true)
		else:
			rd.SetScalingMode(false)			

[STAThread]
public def Main(argv as (string)) as void:
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(MainForm())

