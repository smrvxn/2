﻿using CarRent.Models;
using Microsoft.EntityFrameworkCore;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CarRent.Windows
{
    /// <summary>
    /// Логика взаимодействия для KlientPage.xaml
    /// </summary>
    public partial class KlientPage : Page
    {
        public ObservableCollection<Klient> Klients { get; private set; }
        public KlientPage()
        {
            Klients = new ObservableCollection<Klient>(Session.Instance.Context.Klients);
            InitializeComponent();
        }

        private void add_Click(object sender, RoutedEventArgs e)
        {
            AddKlient add = new AddKlient();
            add.Show();
        }

        private void info_Click(object sender, RoutedEventArgs e)
        {
            var klient = (sender as Button)?.DataContext as Klient;
            if (klient == null) return;
            KlientInfo info = new KlientInfo(klient);
            info.Show();
        }

        private void delete_Click(object sender, RoutedEventArgs e)
        {
            var klient = (sender as Button)?.DataContext as Klient;
            if (klient == null) return;

            var answer = MessageBox.Show("Вы уверены, что хотите удалить данные клиента?", "Подтверждение удаления",
                MessageBoxButton.YesNo, MessageBoxImage.Question);

            if (answer == MessageBoxResult.Yes)
            {
                try
                {
                    Session.Instance.Context.Klients.Remove(klient);
                    Session.Instance.Context.SaveChanges();
                    MessageBox.Show("Готово", "Удаление успешно",
                        MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch
                {
                    MessageBox.Show("Произошла ошибка при удалении!", "Ошибка",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void update_Click(object sender, RoutedEventArgs e)
        {
            var klient = (sender as Button)?.DataContext as Klient;
            if (klient == null) return;
            UpdateKlient update = new UpdateKlient(klient);
            update.Show();
        }

        private IQueryable<Klient> applySearch(IQueryable<Klient> query) =>
            query.Where(q => q.FirstName.Contains(poisk.Text) || q.LastName.Contains(poisk.Text)
            || q.Patronymic.Contains(poisk.Text) || q.Address.Contains(poisk.Text));

        private void applyFilters()
        {
            IQueryable<Klient> query = Session.Instance.Context.Klients.AsQueryable();
            query = applySearch(query);

            Klients.Clear();
            foreach (Klient klient in query)
            {
                Klients.Add(klient);
            }
        }

        private void poisk_SelectionChanged(object sender, RoutedEventArgs e)
        {
            applyFilters();
        }
    }
}
