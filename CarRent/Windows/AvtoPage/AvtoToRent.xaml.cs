using CarRent.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace CarRent.Windows.AvtoPage
{
    /// <summary>
    /// Логика взаимодействия для AvtoToRent.xaml
    /// </summary>
    public partial class AvtoToRent : Window
    {
        public Avto Avto { get; }
        public ObservableCollection<Klient> Klients { get; private set; }
        public AvtoToRent(Avto avto)
        {
            Avto = avto;
            Klients = new ObservableCollection<Klient>(Session.Instance.Context.Klients);
            InitializeComponent();
            this.Left = 0;
            this.Top = 0;            
        }

        private void exit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
