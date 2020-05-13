/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package responsi;

/**
 *
 * @author ASUS
 */
import java.awt.*;
import java.awt.event.ActionEvent;
import javax.swing.*;

class Petunjuk extends JFrame {
    JLabel menu = new JLabel("APLIKASI PERHITUNGAN GAJI");
    JLabel lGambar = new JLabel(new ImageIcon(getClass().getResource("image/background.jpg")));
    JButton tombolHome = new JButton("HOME");
    JButton tombolGaji = new JButton("Gaji");
    JButton tombolData = new JButton("Data");
    JButton tombolPetunjuk = new JButton("Petunjuk");
    JButton tombolAdmin = new JButton("Admin");
    
    JLabel home = new JLabel ("<html>Klik Tombol Gaji untuk mengitung gaji anda<br/>Klik tombol data untuk melihat data sudah masuk atau belum</html", SwingConstants.CENTER);
    
    public Petunjuk() {
    
        setTitle("PETUNJUK");
        setDefaultCloseOperation(3);
        setSize(800,600);
        setLocation(300,75);
        setLayout(null);
        setVisible(true);

        add(menu);
        add(tombolHome);
        add(tombolGaji);
        add(tombolData);
        add(tombolPetunjuk);
        add(tombolAdmin);
//        add(lGambar);
        menu.setBounds(20,10,400,20);
        menu.setFont(new Font("",Font.CENTER_BASELINE, 20));
        tombolHome.setBounds(20,50,120,40);
        tombolAdmin.setBounds(640,50,120,40);
        tombolGaji.setBounds(20,100,120,40);
        tombolData.setBounds(20,150,120,40);
        tombolPetunjuk.setBounds(20,200,120,40);
        lGambar.setBounds(0, 0, 795, 500);
        tombolHome.addActionListener((ActionEvent e) -> {
            Menu a = new Menu();
            dispose();
        });
        tombolGaji.addActionListener((ActionEvent e) -> {
            Gaji b = new Gaji();
            dispose();
        });
        tombolData.addActionListener((ActionEvent e) -> {
            Data c = new Data();
            dispose();
        });
        tombolPetunjuk.addActionListener((ActionEvent e) -> {
            Petunjuk d = new Petunjuk();
            dispose();
        });
        
        tombolAdmin.addActionListener((ActionEvent e) -> {
            Admin d = new Admin();
            dispose();
        });
        
        add(home);
        home.setBounds(300,100,400,200);
        home.setFont(new Font("",Font.CENTER_BASELINE, 15));
        
    }
    
}
