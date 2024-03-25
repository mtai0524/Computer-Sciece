﻿using CodeFirst.Models;
using CodeFirst.Models.Entities;
using CodeFirst.Models.Notifications;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
namespace CodeFirst.Data
{
    public class ApplicationDbContext : IdentityDbContext
    { 
   
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {

        }

        public DbSet<EmployeeEntity> Employee { get; set; }
        public DbSet<ApplicationUser> ApplicationUser { get; set; }
        public DbSet<ServiceCategory> ServiceCategory { get; set; }
        public DbSet<MenuCategory> MenuCategory { get; set; }
        public DbSet<ServiceEntity> ServiceEntity{ get; set; }
        public DbSet<MenuEntity> MenuEntity { get; set; }
        public DbSet<Hall> Hall{ get; set; }
        public DbSet<Branch> Branch { get; set; }
        public DbSet<Invoice> Invoice { get; set; }
        public DbSet<OrderMenu> OrderMenu { get; set; }
        public DbSet<OrderService> OrderService { get; set; }
        public DbSet<ComboMenuEntity> ComboMenuEntity{ get; set; }
        public DbSet<MenuItemComboMenu> MenuItemComboMenu { get; set; }
        public DbSet<Feedback> Feedback { get; set; }
        public DbSet<Code> Code { get; set; }
        public DbSet<InvoiceCode> InvoiceCode { get; set; }


        public DbSet<HubConnection> HubConnections { get; set; } = null!;
        public DbSet<Models.Notifications.Notification> Notifications { get; set; } = null!;
        public DbSet<CodeFirst.Models.Entities.Chat> Chats { get; set; } = null!;
        public DbSet<CodeFirst.Models.Entities.ChatRoom> ChatRooms { get; set; } = null!;
        public DbSet<CodeFirst.Models.Entities.ChatRoomUser> ChatRoomUsers { get; set; } = null!;

    }
}
