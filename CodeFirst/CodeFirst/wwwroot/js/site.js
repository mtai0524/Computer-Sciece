﻿
$(() => {
    LoadNotificationData();
    LoadChatData(chatRoomId);
    LoadChatDataToChatBox();

    var connection = new signalR.HubConnectionBuilder().withUrl("/chatHub").build();
    connection.start().then(function () {
        console.log('connected to hub');
    }).catch(function (err) {
        return console.error(err.toString());
    });

    connection.on("ReceiveNotificationRealtime", function (notifications) {
        LoadNotificationData();
        LoadChatDataToChatBox();
        LoadChatData(chatRoomId);
    });




    var chatRoomId = "";
    $(document).ready(function () {
        $.ajax({
            type: 'GET',
            url: '/ChatRoom/GetChatRooms',
            success: function (data) {
                var chatRoomList = $('<div>').addClass('chat-room-list');
                data.forEach(function (chatRoom) {
                    var chatRoomItem = $('<div>').addClass('chat-room-item').attr('data-id', chatRoom.Id);
                    var chatRoomName = $('<span>').addClass('chat-room-name').text("# " + chatRoom.Name);
                    chatRoomItem.append(chatRoomName);
                    chatRoomList.append(chatRoomItem);
                });
                $('.list-room-chat').empty().append(chatRoomList);

                // Thêm sự kiện click vào mỗi thành phần div
                $('.chat-room-item').on('click', function () {
                    chatRoomId = $(this).data('id'); // Lấy chatRoomId từ thuộc tính data-id
                    console.log(chatRoomId);
                    LoadChatData(chatRoomId);
                    $('#chatRoomId').val(chatRoomId);
                });
            },
            error: function (error) {
                console.error('Error:', error);
            }
        });
    });







    var isFirstLoad = true;
    var isFirstLoadToChatBox = true;

    function LoadChatDataToChatBox() {
        $.ajax({
            url: '/Chat/GetMessages',
            method: 'GET',
            success: (result) => {
                console.log(result);

                $(".chat-box").empty(); // Xóa nội dung hiện tại của chat box trước khi thêm mới

                $.each(result, (k, v) => {
                    // Tạo các phần tử DOM
                    var chatMessage = $('<div>').addClass('chat-message user2 d-flex');
                    var img = $('<img>').addClass('avatar').attr('src', v.AvatarChat).attr('alt', `${v.FirstNameChat} ${v.LastNameChat}`);

                    var messageBubble = "";
                    if (v.Email == v.UserNameCurrent) {
                        var messageBubble = $('<div>').addClass('message-bubble').css({
                            'overflow': 'auto',
                            'background-color': '#E6E6E6',
                            'border': '3px solid #3F3F41',
                            'border-radius': '0px 13px 13px 13px'
                        });
                    }
                    else {
                        var messageBubble = $('<div>').addClass('message-bubble').css({
                            'overflow': 'auto',
                            'background-color': '#E6E6E6',
                            'border': '1px solid transparent',
                            'border-radius': '0px 13px 13px 13px'
                        });
                    }
                    var fontBold = $('<div>').addClass('font-weight-bold').css('text-color', '#8CB2B2').text(`${v.FirstNameChat} ${v.LastNameChat}`);
                    var messageContent = $('<div>').text(v.Message);
                    var messageTime = $('<div>').addClass('message-time').css({
                        'float': 'right',
                        'margin-top': '5px',
                        'font-size': '10px',
                        'font-weight': '700',
                        'color': 'gray'
                    }).text(v.NotificationDateTime);

                    // Thêm các phần tử con vào messageBubble
                    messageBubble.append(fontBold, messageContent, messageTime);

                    // Thêm các phần tử vào chatMessage
                    chatMessage.append(img, messageBubble);

                    // Thêm chatMessage vào chat box
                    $(".chat-box").append(chatMessage);
                });

                if (isFirstLoadToChatBox) {
                    scrollToBottomWhenSendMessage();
                    isFirstLoadToChatBox = false;
                }
            },
            error: (error) => {
                console.log(error);
            }
        });
    }



    function LoadChatData(chatRoomId) {
        $.ajax({
            url: '/Chat/GetMessages',
            method: 'GET',
            data: { chatRoomId: chatRoomId },
            success: (result) => {
                console.log(result);
                var chatMessagesList = $(".chat-messages-list");
                chatMessagesList.empty(); // Xóa nội dung hiện tại của chat-messages-list
                $.each(result, (k, v) => {
                    if (v.ChatRoom == chatRoomId) {

                        var boxMessagesDiv = "";
                        var chatMessageRightDiv = "";
                        var avatarImg = "";
                        var imgDiv = "";
                        var fontBoldDiv = "";
                        var messageDiv = "";
                        var dateTimeDiv = "";
                        var messageDetailsDiv = "";

                        if (v.Email == v.UserNameCurrent) {
                            var chatMessageRightDiv = $("<div>").addClass("chat-message-right pb-4").css({
                                "display": "block"
                            });

                            var imgDiv = $("<div>").css({
                                "float": "right", // Chuyển sang bên phải
                                "margin-left": "20px" // Giá trị margin có thể thay đổi tùy theo mong muốn
                            });

                            var avatarImg = $("<img>").attr({
                                src: v.AvatarChat,
                                class: "rounded-circle mr-1",
                                alt: v.FirstNameChat + " " + v.LastNameChat,
                                width: "40",
                                height: "40",
                            }).css("float", "right"); // Chuyển hình ảnh sang bên phải

                            imgDiv.append(avatarImg);
                            chatMessageRightDiv.append(imgDiv);

                            var boxMessagesDiv = $("<div>").addClass("flex-shrink-1 box-messages email-matches rounded py-2 px-3 ml-3").css({
                                "max-width": "90%",
                                "background-color": "#E6E6E6",
                                "border": "3px solid #3F3F41",
                                "border-radius": "0px 13px 13px 13px",
                                "float": "right" // Chuyển sang bên phải
                            });
                            var fontBoldDiv = $("<div>").addClass("font-weight-bold mb-1").css({
                                "color": "black",
                                "float": "right" // Chuyển sang bên phải
                            }).text(v.FirstNameChat + " " + v.LastNameChat);

                            var messageDiv = $("<div>")
                                .text(v.Message)
                                .css({
                                    "float": "left", // Chuyển sang bên phải
                                    "clear": "both",
                                    "word-wrap": "break-word", // Xuống dòng 
                                    "word-break": "break-all"
                                });

                            // Tạo messageDetailsDiv và áp dụng clear: both
                            var messageDetailsDiv = $("<div>").addClass("message-details").css("clear", "both");

                            // Tạo dateTimeDiv và áp dụng float: right
                            var dateTimeDiv = $("<div>").addClass("text-muted small text-nowrap mt-2 date-time").css("float", "left").text(v.NotificationDateTime);
                        }
                        else {
                            var chatMessageRightDiv = $("<div>").addClass("chat-message-right pb-4");
                            imgDiv = $("<div>");
                            avatarImg = $("<img>").attr({
                                src: v.AvatarChat,
                                class: "rounded-circle mr-1",
                                alt: v.FirstNameChat + " " + v.LastNameChat,
                                width: "40",
                                height: "40"
                            });
                            imgDiv.append(avatarImg);
                            chatMessageRightDiv.append(imgDiv);

                            boxMessagesDiv = $("<div>").addClass("flex-shrink-1 box-messages email-matches rounded py-2 px-3 ml-3").css({
                                "max-width": "90%",
                                "background-color": "#E6E6E6",
                                "border": "1px solid transparent",
                                "border-radius": "0px 13px 13px 13px"
                            });
                            fontBoldDiv = $("<div>").addClass("font-weight-bold mb-1").css("color", "black").text(v.FirstNameChat + " " + v.LastNameChat);
                            messageDiv = $("<div>").text(v.Message);
                            messageDetailsDiv = $("<div>").addClass("message-details");
                            dateTimeDiv = $("<div>").addClass("text-muted small text-nowrap mt-2 date-time").css("float", "right").text(v.NotificationDateTime);
                        }


                        messageDetailsDiv.append(dateTimeDiv);
                        boxMessagesDiv.append(fontBoldDiv, messageDiv, messageDetailsDiv);
                        chatMessageRightDiv.append(boxMessagesDiv);

                        chatMessagesList.append(chatMessageRightDiv);
                    }

                });

                if (isFirstLoad) {
                    scrollToBottom();
                    isFirstLoad = false;
                }
            },
            error: (error) => {
                console.log(error);
            }
        });
    }

    $(document).ready(function () {
        // Bắt sự kiện submit của form
        $(".chatForm").submit(function (e) {
            e.preventDefault(); // Ngăn chặn việc gửi form theo cách thông thường

            // Lấy dữ liệu từ form
            var formData = $(this).serialize();

            // Gửi yêu cầu AJAX
            $.ajax({
                url: $(this).attr('action'), // Lấy đường dẫn từ thuộc tính action của form
                type: $(this).attr('method'), // Lấy phương thức từ thuộc tính method của form
                data: formData,
                success: function (response) {
                    console.log("Message sent successfully!");
                    console.log(response);

                    // Xóa nội dung của input sau khi gửi thành công
                    $(".chatForm input[name='Message']").val('');

                    // Cuộn xuống cuối trang
                    scrollToBottomWhenSendMessage();
                },
                error: function (xhr, status, error) {
                    console.error("AJAX Error:", error);
                }
            });
        });
    });

    function scrollToBottomWhenSendMessage() {
        setTimeout(() => {
            const chatMessagesList = document.querySelector('.chat-messages-list');
            if (chatMessagesList) {
                chatMessagesList.scrollTop = chatMessagesList.scrollHeight;
            }
            const chatMessagesListMini = document.querySelector('.chat-box');
            if (chatMessagesListMini) {
                chatMessagesListMini.scrollTop = chatMessagesListMini.scrollHeight;
            }
        }, 1000);
    }
    function scrollToBottom() {
        setTimeout(() => {
            const chatMessagesList = document.querySelector('.chat-messages-list');
            if (chatMessagesList) {
                chatMessagesList.scrollTop = chatMessagesList.scrollHeight;
            }
        }, 1000);
    }
    function LoadNotificationData() {
        $.ajax({
            url: '/Notification/GetNotifications',
            method: 'GET',
            success: (result) => {
                console.log(result);
                var li = '';
                $.each(result, (k, v) => {
                    li += `<li class="py-2 mb-1 border-bottom">
                    <a href="javascript:void(0);" class="d-flex">

                        <img class="avatar rounded-circle" src="${v.Avatar}" alt="img">
                        <div class="flex-fill ms-2">
                            <p class="d-flex justify-content-between mb-0">
                                <span class="font-weight-bold">${v.Username}</span>
                                <small>${v.NotificationDateTime}</small>
                            </p>
                            <span>${v.Message} </span>
                        </div>
                    </a>
                </li>`;
                });
                $("#notification-list").html(li);

                // Đếm số lượng thông báo
                var notificationCount = result.length;
                $(".badge-count").text(notificationCount);
            },
            error: (error) => {
                console.log(error);
            }
        });
    }
    var isTyping = false; // Biến đánh dấu liệu người dùng có đang nhập hay không

    document.querySelector('.btn-chat').addEventListener('click', function () {
        isTyping = false;
        connection.invoke("NotifyTyping", false).catch(function (err) {
            return console.error(err.toString());
        });
    });
    document.querySelector('.btn-chat-mini').addEventListener('click', function () {
        isTyping = false;
        connection.invoke("NotifyTyping", false).catch(function (err) {
            return console.error(err.toString());
        });
    });
    // chat box mini
    document.querySelector('.input-current-user').addEventListener('input', function () {
        var messageInput = this.value.trim(); // Lấy giá trị của input và loại bỏ các khoảng trắng ở đầu và cuối
        if (messageInput === '') {
            isTyping = false;
            connection.invoke("NotifyTyping", false).catch(function (err) {
                console.error(err.toString());
            });
        } else {
            if (!isTyping) {
                isTyping = true;
                connection.invoke("NotifyTyping", true).catch(function (err) {
                    console.error(err.toString());
                });
            }

        }
    });
    document.querySelector('.input-current-user').addEventListener('blur', function () {
        if (isTyping) {
            isTyping = false;
            connection.invoke("NotifyTyping", false).catch(function (err) {
                return console.error(err.toString());
            });
        }
    });


    // chat box main

    document.querySelector('input[name="Message"]').addEventListener('input', function () {
        var messageInput = this.value.trim(); // Lấy giá trị của input và loại bỏ các khoảng trắng ở đầu và cuối
        if (messageInput === '') {
            isTyping = false;
            connection.invoke("NotifyTyping", false).catch(function (err) {
                console.error(err.toString());
            });
        } else {
            if (!isTyping) {
                isTyping = true;
                connection.invoke("NotifyTyping", true).catch(function (err) {
                    console.error(err.toString());
                });
            }

        }
    });


    // Xử lý khi người dùng ngừng nhập
    document.querySelector('input[name="Message"]').addEventListener('blur', function () {
        if (isTyping) {
            isTyping = false;
            connection.invoke("NotifyTyping", false).catch(function (err) {
                return console.error(err.toString());
            });
        }
    });

    connection.on("OnConnected", function () {
        OnConnected();
        LoadChatData(chatRoomId);
        LoadChatDataToChatBox();
    });

    connection.on("ReceiveTypingNotification", function (userCurrent, isTyping) {
        var userCurrentChatElement = document.querySelector('.user-current-chat');
        var userCurrentChatMiniElement = document.querySelector('.user-current-chatmini');
        var avatarUserCurrentChat = document.querySelector('.avatar-user-current-chat');
        var dotChatContainer = document.querySelector('.dot-chat-container');
        var dotChatMiniContainer = document.querySelector('.dot-chatmini-container');
        if (isTyping) {
            console.log(userCurrent.firstName + " is typing...");
            userCurrentChatElement.textContent = userCurrent.firstName + " " + userCurrent.lastName;
            userCurrentChatMiniElement.textContent = userCurrent.firstName + " " + userCurrent.lastName;
            avatarUserCurrentChat.style.visibility = "visible";
            dotChatContainer.style.visibility = "visible";
            dotChatMiniContainer.style.visibility = "visible";
            avatarUserCurrentChat.src = userCurrent.avatar;
        } else {
            console.log(userCurrent.firstName + " stopped typing.");
            avatarUserCurrentChat.src = "";
            userCurrentChatElement.textContent = "";
            userCurrentChatMiniElement.textContent = "";
            avatarUserCurrentChat.style.visibility = "hidden";
            dotChatContainer.style.visibility = "hidden";
            dotChatMiniContainer.style.visibility = "hidden";
        }
    });

    function LoadPrivateMessages(senderUserId, receiverUserId) {
        $.ajax({
            url: '/ChatPrivate/GetPrivateMessages',
            method: 'GET',
            data: {
                senderUserId: senderUserId,
                receiverUserId: receiverUserId
            },
            success: (result) => {
                console.log(result);
                var chatMessagesList = $(".chat-messages-list");
                chatMessagesList.empty(); // Xóa nội dung hiện tại của chat-messages-list
                $.each(result, (k, v) => {
                    var senderInfo = v.SenderUser; // Đây là đối tượng chứa thông tin của người gửi
                    var senderName = senderInfo.FirstName + " " + senderInfo.LastName;
                    var senderEmail = senderInfo.Email;
                    var senderAvatar = senderInfo.Avatar;

                    var senderInfo = v.SenderUser; // Đây là đối tượng chứa thông tin của người gửi
                    var senderName = senderInfo.FirstName + " " + senderInfo.LastName;
                    var senderEmail = senderInfo.Email;
                    var senderAvatar = senderInfo.Avatar;

                    var receiverInfo = v.ReceiverUser; // Đây là đối tượng chứa thông tin của người nhận
                    var receiverName = receiverInfo.FirstName + " " + receiverInfo.LastName;
                    var receiverEmail = receiverInfo.Email;
                    var receiverAvatar = receiverInfo.Avatar;

                    var boxMessagesDiv = "";
                    var chatMessageRightDiv = "";
                    var avatarImg = "";
                    var imgDiv = "";
                    var fontBoldDiv = "";
                    var messageDiv = "";
                    var dateTimeDiv = "";
                    var messageDetailsDiv = "";
                    if (senderUserId == v.SenderUserId) {
                        var chatMessageRightDiv = $("<div>").addClass("chat-message-right pb-4").css({
                            "display": "block"
                        });

                        var imgDiv = $("<div>").css({
                            "float": "right", // Chuyển sang bên phải
                            "margin-left": "20px" // Giá trị margin có thể thay đổi tùy theo mong muốn
                        });

                        var avatarImg = $("<img>").attr({
                            src: senderAvatar,
                            class: "rounded-circle mr-1",
                            alt: senderName,
                            width: "40",
                            height: "40",
                        }).css("float", "right"); // Chuyển hình ảnh sang bên phải

                        imgDiv.append(avatarImg);
                        chatMessageRightDiv.append(imgDiv);

                        var boxMessagesDiv = $("<div>").addClass("flex-shrink-1 box-messages email-matches rounded py-2 px-3 ml-3").css({
                            "max-width": "90%",
                            "background-color": "#E6E6E6",
                            "border": "3px solid #3F3F41",
                            "border-radius": "0px 13px 13px 13px",
                            "float": "right" // Chuyển sang bên phải
                        });
                        var fontBoldDiv = $("<div>").addClass("font-weight-bold mb-1").css({
                            "color": "black",
                            "float": "right" // Chuyển sang bên phải
                        }).text(senderName);

                        var messageDiv = $("<div>")
                            .text(v.Message)
                            .css({
                                "float": "left", // Chuyển sang bên phải
                                "clear": "both",
                                "word-wrap": "break-word", // Xuống dòng 
                                "word-break": "break-all"
                            });

                        // Tạo messageDetailsDiv và áp dụng clear: both
                        var messageDetailsDiv = $("<div>").addClass("message-details").css("clear", "both");

                        // Tạo dateTimeDiv và áp dụng float: right
                        var dateTimeDiv = $("<div>").addClass("text-muted small text-nowrap mt-2 date-time").css("float", "left").text(v.NotificationDateTime);
                    }
                    else {
                        var chatMessageRightDiv = $("<div>").addClass("chat-message-right pb-4");
                        imgDiv = $("<div>");
                        avatarImg = $("<img>").attr({
                            src: senderAvatar,
                            class: "rounded-circle mr-1",
                            alt: senderName,
                            width: "40",
                            height: "40"
                        });
                        imgDiv.append(avatarImg);
                        chatMessageRightDiv.append(imgDiv);

                        boxMessagesDiv = $("<div>").addClass("flex-shrink-1 box-messages email-matches rounded py-2 px-3 ml-3").css({
                            "max-width": "90%",
                            "background-color": "#E6E6E6",
                            "border": "1px solid transparent",
                            "border-radius": "0px 13px 13px 13px"
                        });
                        fontBoldDiv = $("<div>").addClass("font-weight-bold mb-1").css("color", "black").text(senderName);
                        messageDiv = $("<div>").text(v.Message);
                        messageDetailsDiv = $("<div>").addClass("message-details");
                        dateTimeDiv = $("<div>").addClass("text-muted small text-nowrap mt-2 date-time").css("float", "right").text(v.NotificationDateTime);
                    }


                    messageDetailsDiv.append(dateTimeDiv);
                    boxMessagesDiv.append(fontBoldDiv, messageDiv, messageDetailsDiv);
                    chatMessageRightDiv.append(boxMessagesDiv);

                    chatMessagesList.append(chatMessageRightDiv);

                });

                if (isFirstLoad) {
                    scrollToBottom();
                    isFirstLoad = false;
                }
            },
            error: (error) => {
                console.log(error);
            }
        });
    }

    connection.on("UpdateUsersOfflineList", function (userList) {
        var listGroupOnline = document.querySelector('.list-group-offline');
        listGroupOnline.innerHTML = ""; // Xóa hết các thẻ a cũ trước khi cập nhật
        userList.forEach(function (item) {
            var listGroupItem = document.createElement("a");
            listGroupItem.href = "#";
            listGroupItem.classList.add("list-group-item", "list-group-item-action", "border-0");

            listGroupItem.addEventListener("click", function (event) {
                event.preventDefault();
                console.log("Username:", item.id + " " + item.currUserId);
                LoadPrivateMessages(item.currUserId, item.id)
            });

            var dFlexContainer = document.createElement("div");
            dFlexContainer.classList.add("current-user");

            var spanStatus = document.createElement("span");
            spanStatus.classList.add("status", "offline");

            var avatarImg = document.createElement("img");
            avatarImg.src = item.avatar ? item.avatar : "https://as2.ftcdn.net/v2/jpg/04/10/43/77/1000_F_410437733_hdq4Q3QOH9uwh0mcqAhRFzOKfrCR24Ta.jpg";
            avatarImg.classList.add("rounded-circle", "mr-1", "img-list-user");
            avatarImg.alt = item.firstName ? item.lastName : "hehe";
            avatarImg.width = "40";
            avatarImg.height = "40";
            avatarImg.title = item.email;

            var flexGrowContainer = document.createElement("div");
            flexGrowContainer.classList.add("flex-grow-1", "ml-3");

            var usernameDiv = document.createElement("div");
            usernameDiv.classList.add("username");
            usernameDiv.textContent = item.firstName + " " + item.lastName;

            var textStatusDiv = document.createElement("div");
            textStatusDiv.classList.add("text-status");

            var onlineStatusSpan = document.createElement("span");
            onlineStatusSpan.classList.add("small", "online-status", "chat-offline");
            onlineStatusSpan.textContent = 'Offline';

            textStatusDiv.appendChild(onlineStatusSpan);

            flexGrowContainer.appendChild(usernameDiv);
            flexGrowContainer.appendChild(textStatusDiv);
            flexGrowContainer.appendChild(spanStatus);

            dFlexContainer.appendChild(avatarImg);
            dFlexContainer.appendChild(flexGrowContainer);

            listGroupItem.appendChild(dFlexContainer);
            listGroupOnline.appendChild(listGroupItem);
        });
    });



    connection.on("UpdateUsersOnlineList", function (userList) {
        var listGroupOnline = document.querySelector('.list-group-online');
        listGroupOnline.innerHTML = ""; // Xóa hết các thẻ a cũ trước khi cập nhật


        userList.forEach(function (item) {
            var listGroupItem = document.createElement("a");
            listGroupItem.href = "#";
            listGroupItem.classList.add("list-group-item", "list-group-item-action", "border-0");

            var spanStatus = document.createElement("span");
            spanStatus.classList.add("status", "online");

            var dFlexContainer = document.createElement("div");
            dFlexContainer.classList.add("current-user");

            var avatarImg = document.createElement("img");
            avatarImg.src = item.avatar ? item.avatar : "https://as2.ftcdn.net/v2/jpg/04/10/43/77/1000_F_410437733_hdq4Q3QOH9uwh0mcqAhRFzOKfrCR24Ta.jpg";
            avatarImg.classList.add("rounded-circle", "mr-1", "img-list-user");
            avatarImg.alt = item.username ? item.username : "hehe";
            avatarImg.width = "40";
            avatarImg.height = "40";
            avatarImg.title = item.email;
            avatarImg.appendChild(spanStatus);
            var emailPopup = document.createElement("div");
            emailPopup.classList.add("email-popup");
            emailPopup.textContent = item.email;
            emailPopup.style.display = "none";
            avatarImg.addEventListener("click", function () {
                emailPopup.style.display = emailPopup.style.display === "none" ? "block" : "none";
            });
            dFlexContainer.appendChild(emailPopup);


            var flexGrowContainer = document.createElement("div");
            flexGrowContainer.classList.add("flex-grow-1", "ml-3");

            var usernameDiv = document.createElement("div");
            usernameDiv.classList.add("username");
            usernameDiv.textContent = item.firstName + " " + item.lastName;

            var textStatusDiv = document.createElement("div");
            textStatusDiv.classList.add("text-status");

            var onlineStatusSpan = document.createElement("span");
            onlineStatusSpan.classList.add("small", "online-status", "chat-online");
            onlineStatusSpan.textContent = 'Online';

            textStatusDiv.appendChild(onlineStatusSpan);

            flexGrowContainer.appendChild(usernameDiv);
            flexGrowContainer.appendChild(textStatusDiv);
            flexGrowContainer.appendChild(spanStatus);

            dFlexContainer.appendChild(avatarImg);
            dFlexContainer.appendChild(flexGrowContainer);

            listGroupItem.appendChild(dFlexContainer);
            listGroupOnline.appendChild(listGroupItem);
        });
    });


    //noti
    connection.on("UpdateUsersList", function (userList) {
        var avatarList = document.querySelector('.avatar-list');
        avatarList.innerHTML = ""; // Xóa hết các thẻ img cũ trước khi cập nhật
        console.log("this is userList", userList);
        userList.forEach(function (user) {
            if (user.avatar) {
                var avatarImg = document.createElement("img");
                avatarImg.src = user.avatar;
                avatarImg.alt = user.email + "'s Avatar";
                avatarImg.classList.add("avatar");
                avatarImg.title = user.email; // Hiển thị email khi hover vào ảnh

                avatarList.appendChild(avatarImg);
            }
        });
    });

    connection.on("ReceivedNotificationWelcome", function (message) {
        console.log("Received Notification Welcome: ", message);
        // Hiển thị thông báo chào mừng
        DisplayGeneralNotification(message, 'quéo cơm');

    });
    connection.on("ReceivedNotificationUserOnline", function (message) {
        console.log("Received Notification Welcome: ", message);
        // Hiển thị thông báo user online
        DisplayGeneralNotificationUserOnline(message, 'cốc cốc cốc');
    });

    // Send All user
    connection.on("ReceivedNotification", function (message) {
        console.log("hehehe");
        DisplayGeneralNotification(message, 'General Message');
    });

    //connection.on("ReceivedPersonalNotification", function (message, username) {
    //    DisplayPersonalNotification(message, 'Hey ' + username);
    //});

    //connection.on("ReceivedGroupNotification", function (message, username) {
    //    DisplayGroupNotification(message, 'Team ' + username);
    //});
});