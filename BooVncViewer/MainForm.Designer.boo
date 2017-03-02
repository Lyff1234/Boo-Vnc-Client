namespace BooVncViewer

partial class MainForm(System.Windows.Forms.Form):
	private components as System.ComponentModel.IContainer = null
	
	protected override def Dispose(disposing as bool) as void:
		if disposing:
			if components is not null:
				components.Dispose()
		super(disposing)
	
	// This method is required for Windows Forms designer support.
	// Do not change the method contents inside the source code editor. The Forms designer might
	// not be able to load this method if it was changed manually.
	private def InitializeComponent():
		resources as System.ComponentModel.ComponentResourceManager = System.ComponentModel.ComponentResourceManager(typeof(MainForm))
		self.menuStrip1 = System.Windows.Forms.MenuStrip()
		self.fileToolStripMenuItem = System.Windows.Forms.ToolStripMenuItem()
		self.disconnectToolStripMenuItem = System.Windows.Forms.ToolStripMenuItem()
		self.exitToolStripMenuItem = System.Windows.Forms.ToolStripMenuItem()
		self.toolStrip1 = System.Windows.Forms.ToolStrip()
		self.toolStripLabel1 = System.Windows.Forms.ToolStripLabel()
		self.SvrIPorName = System.Windows.Forms.ToolStripTextBox()
		self.toolStripSeparator1 = System.Windows.Forms.ToolStripSeparator()
		self.ConnectBtn = System.Windows.Forms.ToolStripButton()
		self.toolStripSeparator2 = System.Windows.Forms.ToolStripSeparator()
		self.ViewOnlyBtn = System.Windows.Forms.ToolStripButton()
		self.toolStripSeparator3 = System.Windows.Forms.ToolStripSeparator()
		self.ScaleBtn = System.Windows.Forms.ToolStripButton()
		self.rd = VncSharp.RemoteDesktop()
		self.menuStrip1.SuspendLayout()
		self.toolStrip1.SuspendLayout()
		self.SuspendLayout()
		# 
		# menuStrip1
		# 
		self.menuStrip1.Items.AddRange((of System.Windows.Forms.ToolStripItem: self.fileToolStripMenuItem))
		self.menuStrip1.Location = System.Drawing.Point(0, 0)
		self.menuStrip1.Name = "menuStrip1"
		self.menuStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.System
		self.menuStrip1.Size = System.Drawing.Size(630, 24)
		self.menuStrip1.TabIndex = 0
		self.menuStrip1.Text = "menuStrip1"
		# 
		# fileToolStripMenuItem
		# 
		self.fileToolStripMenuItem.DropDownItems.AddRange((of System.Windows.Forms.ToolStripItem: self.disconnectToolStripMenuItem, self.exitToolStripMenuItem))
		self.fileToolStripMenuItem.Name = "fileToolStripMenuItem"
		self.fileToolStripMenuItem.Size = System.Drawing.Size(37, 20)
		self.fileToolStripMenuItem.Text = "File"
		# 
		# disconnectToolStripMenuItem
		# 
		self.disconnectToolStripMenuItem.Name = "disconnectToolStripMenuItem"
		self.disconnectToolStripMenuItem.Size = System.Drawing.Size(133, 22)
		self.disconnectToolStripMenuItem.Text = "Disconnect"
		self.disconnectToolStripMenuItem.Click += self.DisconnectToolStripMenuItemClick as System.EventHandler
		# 
		# exitToolStripMenuItem
		# 
		self.exitToolStripMenuItem.Name = "exitToolStripMenuItem"
		self.exitToolStripMenuItem.Size = System.Drawing.Size(133, 22)
		self.exitToolStripMenuItem.Text = "Exit"
		self.exitToolStripMenuItem.Click += self.ExitToolStripMenuItemClick as System.EventHandler
		# 
		# toolStrip1
		# 
		self.toolStrip1.Items.AddRange((of System.Windows.Forms.ToolStripItem: self.toolStripLabel1, self.SvrIPorName, self.toolStripSeparator1, self.ConnectBtn, self.toolStripSeparator2, self.ViewOnlyBtn, self.toolStripSeparator3, self.ScaleBtn))
		self.toolStrip1.Location = System.Drawing.Point(0, 24)
		self.toolStrip1.Name = "toolStrip1"
		self.toolStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.System
		self.toolStrip1.Size = System.Drawing.Size(630, 25)
		self.toolStrip1.TabIndex = 1
		self.toolStrip1.Text = "toolStrip1"
		# 
		# toolStripLabel1
		# 
		self.toolStripLabel1.Name = "toolStripLabel1"
		self.toolStripLabel1.Size = System.Drawing.Size(107, 22)
		self.toolStripLabel1.Text = "Server Name or IP: "
		# 
		# SvrIPorName
		# 
		self.SvrIPorName.Name = "SvrIPorName"
		self.SvrIPorName.Size = System.Drawing.Size(100, 25)
		# 
		# toolStripSeparator1
		# 
		self.toolStripSeparator1.Name = "toolStripSeparator1"
		self.toolStripSeparator1.Size = System.Drawing.Size(6, 25)
		# 
		# ConnectBtn
		# 
		self.ConnectBtn.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
		self.ConnectBtn.Image = cast(System.Drawing.Image,resources.GetObject("ConnectBtn.Image"))
		self.ConnectBtn.ImageTransparentColor = System.Drawing.Color.Magenta
		self.ConnectBtn.Name = "ConnectBtn"
		self.ConnectBtn.Size = System.Drawing.Size(56, 22)
		self.ConnectBtn.Text = "Connect"
		self.ConnectBtn.Click += self.ConnectBtnClick as System.EventHandler
		# 
		# toolStripSeparator2
		# 
		self.toolStripSeparator2.Name = "toolStripSeparator2"
		self.toolStripSeparator2.Size = System.Drawing.Size(6, 25)
		# 
		# ViewOnlyBtn
		# 
		self.ViewOnlyBtn.CheckOnClick = true
		self.ViewOnlyBtn.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
		self.ViewOnlyBtn.Image = cast(System.Drawing.Image,resources.GetObject("ViewOnlyBtn.Image"))
		self.ViewOnlyBtn.ImageTransparentColor = System.Drawing.Color.Magenta
		self.ViewOnlyBtn.Name = "ViewOnlyBtn"
		self.ViewOnlyBtn.Size = System.Drawing.Size(64, 22)
		self.ViewOnlyBtn.Text = "View Only"
		self.ViewOnlyBtn.Click += self.ViewOnlyBtnClick as System.EventHandler
		# 
		# toolStripSeparator3
		# 
		self.toolStripSeparator3.Name = "toolStripSeparator3"
		self.toolStripSeparator3.Size = System.Drawing.Size(6, 25)
		# 
		# ScaleBtn
		# 
		self.ScaleBtn.CheckOnClick = true
		self.ScaleBtn.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
		self.ScaleBtn.Image = cast(System.Drawing.Image,resources.GetObject("ScaleBtn.Image"))
		self.ScaleBtn.ImageTransparentColor = System.Drawing.Color.Magenta
		self.ScaleBtn.Name = "ScaleBtn"
		self.ScaleBtn.Size = System.Drawing.Size(88, 22)
		self.ScaleBtn.Text = "Fit To Window"
		self.ScaleBtn.Click += self.ScaleBtnClick as System.EventHandler
		# 
		# rd
		# 
		self.rd.AutoScroll = true
		self.rd.AutoScrollMinSize = System.Drawing.Size(608, 427)
		self.rd.Dock = System.Windows.Forms.DockStyle.Fill
		self.rd.Location = System.Drawing.Point(0, 49)
		self.rd.Name = "rd"
		self.rd.Size = System.Drawing.Size(630, 433)
		self.rd.TabIndex = 2
		# 
		# MainForm
		# 
		self.AutoScaleDimensions = System.Drawing.SizeF(6, 13)
		self.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		self.ClientSize = System.Drawing.Size(630, 482)
		self.Controls.Add(self.rd)
		self.Controls.Add(self.toolStrip1)
		self.Controls.Add(self.menuStrip1)
		self.MainMenuStrip = self.menuStrip1
		self.MinimizeBox = false
		self.Name = "MainForm"
		self.ShowIcon = false
		self.ShowInTaskbar = false
		self.Text = "Boo Vnc Viewer"
		self.menuStrip1.ResumeLayout(false)
		self.menuStrip1.PerformLayout()
		self.toolStrip1.ResumeLayout(false)
		self.toolStrip1.PerformLayout()
		self.ResumeLayout(false)
		self.PerformLayout()
	private rd as VncSharp.RemoteDesktop
	private ScaleBtn as System.Windows.Forms.ToolStripButton
	private toolStripSeparator3 as System.Windows.Forms.ToolStripSeparator
	private ViewOnlyBtn as System.Windows.Forms.ToolStripButton
	private toolStripSeparator2 as System.Windows.Forms.ToolStripSeparator
	private ConnectBtn as System.Windows.Forms.ToolStripButton
	private toolStripSeparator1 as System.Windows.Forms.ToolStripSeparator
	private SvrIPorName as System.Windows.Forms.ToolStripTextBox
	private toolStripLabel1 as System.Windows.Forms.ToolStripLabel
	private toolStrip1 as System.Windows.Forms.ToolStrip
	private exitToolStripMenuItem as System.Windows.Forms.ToolStripMenuItem
	private disconnectToolStripMenuItem as System.Windows.Forms.ToolStripMenuItem
	private fileToolStripMenuItem as System.Windows.Forms.ToolStripMenuItem
	private menuStrip1 as System.Windows.Forms.MenuStrip

