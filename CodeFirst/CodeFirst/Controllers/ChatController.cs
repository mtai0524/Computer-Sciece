﻿using CodeFirst.Data;
using CodeFirst.Hubs;
using CodeFirst.Models;
using CodeFirst.Models.Entities;
using CodeFirst.Models.Notifications;
using CodeFirst.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;

namespace CodeFirst.Controllers
{
    public class ChatController : Controller
    {
        private readonly IHubContext<ChatHub> hubContext;
        private readonly ApplicationDbContext dbContext;
        private readonly UserManager<ApplicationUser> _userManager;

        public ChatController(ApplicationDbContext dbContext, IHubContext<ChatHub> hubContext, UserManager<ApplicationUser> userManager)
        {
            this.hubContext = hubContext;
            this.dbContext = dbContext;
            _userManager = userManager;
        }
        [HttpGet]
        public async Task<IActionResult> GetMessages()
        {
            try
            {
                var listChatData = await dbContext.Chats.ToListAsync();
                var currentUser = await _userManager.GetUserAsync(User);
                string emailUserCurr = User.Identity.Name ?? "DefaultEmail@example.com";
                var chatDataWithUsers = await dbContext.Chats
                  .Include(c => c.Id)
                  .OrderBy(c => c.NotificationDateTime)
                  .ToListAsync();

                var formattedNotifications = chatDataWithUsers.Select(n => new
                {
                    n.ChatId,
                    n.UserId,
                    n.Message,
                    n.MessageType,
                    NotificationDateTime = n.NotificationDateTime.ToString("HH:mm dd/MM/yyyy"),
                    User = n.Id,
                    Email = n.Id.Email,
                    AvatarChat = n.Id.Avatar,
                    FirstNameChat = n.Id.FirstName,
                    LastNameChat = n.Id.LastName,
                    UserNameCurrent = emailUserCurr,
                    ChatRoom = n.ChatRoomDataId,
                });


                return Ok(formattedNotifications);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }
        [HttpPost]
        public async Task<IActionResult> SendMessages(ChatViewModel model)
        {
            var user = await _userManager.GetUserAsync(User);
            if (user != null)
            {
                if (ModelState.IsValid)
                {
                    var notification = new Chat
                    {
                        UserId = user.Id,
                        Message = model.Message,
                        MessageType = "All",
                        NotificationDateTime = DateTime.Now,
                        Avatar = !string.IsNullOrEmpty(user.Avatar) ? user.Avatar : "https://i.pinimg.com/736x/0d/64/98/0d64989794b1a4c9d89bff571d3d5842.jpg",
                        ChatRoomDataId = model.ChatRoomId,
                    };
                    dbContext.Chats.Add(notification);
                    await dbContext.SaveChangesAsync();
                    await hubContext.Clients.All.SendAsync("ReceiveNotificationRealtime", notification);

                    return Json(new { success = true, notification });
                }

            }

            return Json(new { success = false, errors = ModelState.Values.SelectMany(v => v.Errors) });
        }

    
        public IActionResult Index()
        {
            return View();
        }
    }
}
