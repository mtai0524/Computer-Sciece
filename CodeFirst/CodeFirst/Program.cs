using CodeFirst.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using CodeFirst.Models;
using CodeFirst.Service;
using CloudinaryDotNet;
using System.Configuration;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.Extensions.Options;
using Microsoft.AspNetCore.Identity.UI.Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();
builder.Services.AddDbContext<ApplicationDbContext>(options =>
options.UseSqlServer(builder.Configuration.GetConnectionString("CodeFirst")));

// đăng ký service
builder.Services.AddScoped<EmployeeService>();
builder.Services.AddScoped<CloudinaryService>();

builder.Services.AddDefaultIdentity<ApplicationUser>(options => options.SignIn.RequireConfirmedAccount = true)
    .AddRoles<IdentityRole>()
    .AddEntityFrameworkStores<ApplicationDbContext>(); ;

//builder.Services.AddDefaultIdentity<IdentityUser>()
//    .AddDefaultTokenProviders()
//    .AddRoles<IdentityRole>()
//    .AddEntityFrameworkStores<ApplicationDbContext>();

// thay đổi razor cshtml runtime F5
builder.Services.AddControllersWithViews().AddRazorRuntimeCompilation();

// Cấu hình tài khoản Cloudinary
var configuration = builder.Configuration;

var cloudName = configuration["Cloudinary:CloudName"];
var apiKey = configuration["Cloudinary:ApiKey"];
var apiSecret = configuration["Cloudinary:ApiSecret"];

var cloudinaryAccount = new Account(cloudName, apiKey, apiSecret);
var cloudinary = new Cloudinary(cloudinaryAccount);

builder.Services.AddSingleton(cloudinary);

builder.Services.AddAuthentication().AddGoogle(googleOptions =>
{
    googleOptions.ClientId = configuration["Authentication:Google:ClientId"];
    googleOptions.ClientSecret = configuration["Authentication:Google:ClientSecret"];
});

//builder.Services.AddAuthentication().AddFacebook(option =>
//{
//    option.AppId = "1016279636383657";
//    option.AppSecret = "14661687021dceb69eee4ea69fd64dc9";
//    option.AccessDeniedPath = "/AccessDeniedPathInfo";
//});


builder.Services.Configure<IdentityOptions>(options =>
{
    options.Password.RequiredLength = 6; // Điều chỉnh độ dài mật khẩu tối thiểu
    options.Password.RequireLowercase = true; // Yêu cầu ký tự thường
    options.Password.RequireUppercase = true; // Yêu cầu ký tự hoa
    options.Password.RequireDigit = true; // Yêu cầu chứa ít nhất một số
    options.Password.RequireNonAlphanumeric = true; // Yêu cầu ký tự đặc biệt
    options.SignIn.RequireConfirmedEmail = true; // Yêu cầu xác nhận email trước khi đặt lại mật khẩu
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapRazorPages();



app.Run();
