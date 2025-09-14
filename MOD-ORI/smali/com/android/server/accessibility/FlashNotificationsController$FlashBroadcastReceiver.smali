.class Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eq p1, p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 27
    .line 28
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string/jumbo v2, "camera_flash_notification"

    .line 35
    .line 36
    .line 37
    const/4 v3, -0x2

    .line 38
    invoke-static {p2, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, v1

    .line 46
    :goto_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 49
    .line 50
    iget-boolean p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-class p2, Landroid/media/AudioManager;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/media/AudioManager;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 80
    .line 81
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    const-class v0, Landroid/hardware/camera2/CameraManager;

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Landroid/hardware/camera2/CameraManager;

    .line 90
    .line 91
    iput-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 96
    .line 97
    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCallbackHandler:Landroid/os/Handler;

    .line 100
    .line 101
    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    const-string/jumbo p1, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    const-string v2, "FlashNotifController"

    .line 117
    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    const-string p1, "ACTION_FLASH_NOTIFICATION_START_PREVIEW"

    .line 121
    .line 122
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    const-string/jumbo p1, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_COLOR"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    const-string/jumbo p1, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-ne p1, v0, :cond_5

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 142
    .line 143
    new-instance p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    const-string/jumbo v6, "preview"

    .line 148
    .line 149
    .line 150
    const-string/jumbo v7, "preview"

    .line 151
    .line 152
    .line 153
    const/4 v3, 0x3

    .line 154
    move-object v2, p1

    .line 155
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    if-nez p1, :cond_7

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 165
    .line 166
    new-instance p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 167
    .line 168
    iget-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference$2()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    const-string/jumbo v5, "preview"

    .line 175
    .line 176
    .line 177
    const/4 v1, 0x1

    .line 178
    const-string/jumbo v4, "preview"

    .line 179
    .line 180
    .line 181
    move-object v0, p1

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    const-string/jumbo p1, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_7

    .line 201
    .line 202
    const-string p1, "ACTION_FLASH_NOTIFICATION_STOP_PREVIEW"

    .line 203
    .line 204
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 208
    .line 209
    const-string/jumbo p1, "preview"

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_7
    :goto_2
    return-void
.end method
