using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Runtime.InteropServices;
using System.Windows.Interop;

namespace MiniMediaPlayer
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        double m_volume = 0.2;
        TimeSpan _duration = new TimeSpan();

        System.Windows.Threading.DispatcherTimer tm1 = new System.Windows.Threading.DispatcherTimer();
        [StructLayout(LayoutKind.Sequential)]
        public struct MARGINS
        {
            public int cxLeftWidth;
            public int cxRightWidth;
            public int cyTopHeight;
            public int cyBottomHeight;
        };

        [DllImport("dwmapi.dll")]
        public static extern int DwmExtendFrameIntoClientArea(IntPtr hWnd, ref MARGINS pMargins);
        [DllImport("dwmapi.dll", PreserveSig = false)]
        public static extern bool DwmIsCompositionEnabled(); 

        public MainWindow()
        {
            InitializeComponent();
        }

        void tm1_Tick(object sender, EventArgs e)
        {
            //初始化_duration
            //显示音量和时间
            if (mediaElement1.NaturalDuration.HasTimeSpan)
            {
                _duration = mediaElement1.NaturalDuration.TimeSpan;
                textBox1.Text =
                    mediaElement1.Position.Hours.ToString("00")
                    + ":" + mediaElement1.Position.Minutes.ToString("00")
                    + ":" + mediaElement1.Position.Seconds.ToString("00")
                    + "/"
                    + string.Format("{0:00}:{1:00}:{2:00}", _duration.Hours, _duration.Minutes, _duration.Seconds)
                    + "\nVolume:" + (Int32)(sliderVolume.Value * 100);
                //进度条同步暂时无法解决
                sliderProgress.Value = mediaElement1.Position.TotalSeconds / _duration.TotalSeconds;
            }
            
        }



        private void buttonOpen_Click(object sender, RoutedEventArgs e)
        {
            //打开文件
            Microsoft.Win32.OpenFileDialog ofd = new Microsoft.Win32.OpenFileDialog();
            ofd.Filter = "All Files(*.*)|*.*|WMV Files(*.wmv)|*.wmv|MP4 Files(*.mp4)|*.mp4|AVI Files(*.avi)|*.avi";
            if ((bool)ofd.ShowDialog())
            {
                mediaElement1.Source = new Uri(ofd.FileName);
                mediaElement1.Play();
                buttonPlay.IsEnabled = true;
                buttonPlay.Content = "Pause";
                SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Red);
                buttonPlay.Foreground = mybrush;
                this.Title = ofd.FileName;
            }
        }

        private void buttonBack_Click(object sender, RoutedEventArgs e)
        {
            TimeSpan ts = new TimeSpan(0, 0, 10);
            mediaElement1.Position -= ts;
        }

        private void buttonPlay_Click(object sender, RoutedEventArgs e)
        {
            //开始暂停按钮实现
            if (buttonPlay.Content.ToString() == "Play")
            {
                mediaElement1.Play();
                buttonPlay.Content = "Pause";
                SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Red);
                buttonPlay.Foreground = mybrush;
            }
            else
            {
                mediaElement1.Pause();
                buttonPlay.Content = "Play";
                SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Blue);
                buttonPlay.Foreground = mybrush;
            }
        }

        private void buttonForward_Click(object sender, RoutedEventArgs e)
        {
            TimeSpan ts = new TimeSpan(0, 0, 10);
            mediaElement1.Position += ts;
        }

        private void buttonStop_Click(object sender, RoutedEventArgs e)
        {
            mediaElement1.Stop();
            buttonPlay.Content = "Play";
            SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Blue);
            buttonPlay.Foreground = mybrush;
        }

        private void sliderVolume_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            //音量调节
            //mediaElement1.IsMuted = false;
            //textBlock1.Text = "Volume";
            //textBlock1.ToolTip = "Click To Mute";
            //mediaElement1.Volume = sliderVolume.Value;
        }

        private void textBlock1_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //静音功能
            if (!mediaElement1.IsMuted)
            {
                mediaElement1.IsMuted = true;
                textBlock1.Text = "Muted";
                textBlock1.ToolTip = "Volume";
            }
            else
            {
                mediaElement1.IsMuted = false;
                textBlock1.Text = "Volume";
                textBlock1.ToolTip = "Click To Mute";
            }
        }

        private void mediaElement1_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //单击画面暂停功能
            if (buttonPlay.Content.ToString() == "Play")
            {
                mediaElement1.Play();
                buttonPlay.Content = "Pause";
                SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Red);
                buttonPlay.Foreground = mybrush;
            }
            else
            {
                mediaElement1.Pause();
                buttonPlay.Content = "Play";
                SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Blue);
                buttonPlay.Foreground = mybrush;
            }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Thanks Using MiniMediaPlayer !\nWritten By Tevic.TT\nE-Mail : tevic.tt@gmail.com","About MiniMediaPlayer",MessageBoxButton.OK,MessageBoxImage.Information);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //启动Aero Glass效果
            if (Environment.OSVersion.Version.Major >= 6 && DwmIsCompositionEnabled())
            {
                //获得当前窗口句柄
                IntPtr mainWindowPtr = new WindowInteropHelper(this).Handle;
                HwndSource mainWindowSrc = HwndSource.FromHwnd(mainWindowPtr);
                mainWindowSrc.CompositionTarget.BackgroundColor = Colors.Transparent;

                this.Background = Brushes.Transparent;

                // Set the proper margins for the extended glass part
                MARGINS margins = new MARGINS();
                margins.cxLeftWidth = -1;
                margins.cxRightWidth = -1;
                margins.cyTopHeight = -1;
                margins.cyBottomHeight = -1;

                int result = DwmExtendFrameIntoClientArea(mainWindowSrc.Handle, ref margins);

                if (result < 0)
                {
                    MessageBox.Show("Aero Glass Is Not Supported On This Operating System!");
                }

            }

            //启动计时器
            tm1.Tick += new EventHandler(tm1_Tick);
            tm1.Interval = System.TimeSpan.FromSeconds(1.0);
            tm1.Start();

        }

        private void sliderProgress_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
   
        }


        private void sliderProgress_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            tm1.Stop();
            mediaElement1.Pause();
        }

        private void sliderProgress_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            //进度条同步 
        
            this.mediaElement1.Position = new TimeSpan((long)(mediaElement1.NaturalDuration.TimeSpan.Ticks * this.sliderProgress.Value));
            tm1.Start();
            mediaElement1.Play();
        }

        private void sliderVolume_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //音量调节
            mediaElement1.IsMuted = false;
            textBlock1.Text = "Volume";
            textBlock1.ToolTip = "Click To Mute";
        }

        private void sliderVolume_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
        }


    }
}
