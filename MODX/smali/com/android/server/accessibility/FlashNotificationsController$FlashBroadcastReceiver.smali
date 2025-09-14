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

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 18
    move-result p1

    .line 19
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 22
    move-result p2

    .line 23
    if-eq p1, p2, :cond_0

    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 28
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object p2

    .line 34
    const-string/jumbo v2, "camera_flash_notification"

    .line 37
    const/4 v3, -0x2

    .line 38
    invoke-static {p2, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, v1

    .line 46
    :goto_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 48
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 50
    iget-boolean p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 52
    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 60
    if-eqz p2, :cond_3

    .line 62
    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    .line 64
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 67
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 69
    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 71
    const-class p2, Landroid/media/AudioManager;

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/media/AudioManager;

    .line 79
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 81
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 83
    const-class v0, Landroid/hardware/camera2/CameraManager;

    .line 85
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Landroid/hardware/camera2/CameraManager;

    .line 91
    iput-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 93
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 95
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 97
    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 99
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCallbackHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    const-string/jumbo p1, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 116
    const-string v2, "FlashNotifController"

    .line 118
    if-eqz p1, :cond_6

    .line 120
    const-string p1, "ACTION_FLASH_NOTIFICATION_START_PREVIEW"

    .line 122
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo p1, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_COLOR"

    .line 128
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 131
    move-result v4

    .line 132
    const-string/jumbo p1, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

    .line 135
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 138
    move-result p1

    .line 139
    if-ne p1, v0, :cond_5

    .line 141
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 143
    new-instance p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 145
    iget-object v5, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 147
    const-string/jumbo v6, "preview"

    .line 150
    const-string/jumbo v7, "preview"

    .line 153
    const/4 v3, 0x3

    .line 154
    move-object v2, p1

    .line 155
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 161
    goto :goto_2

    .line 162
    :cond_5
    if-nez p1, :cond_7

    .line 164
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 166
    new-instance p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 168
    iget-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference$2()I

    .line 173
    move-result v2

    .line 174
    const-string/jumbo v5, "preview"

    .line 177
    const/4 v1, 0x1

    .line 178
    const-string/jumbo v4, "preview"

    .line 181
    move-object v0, p1

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 188
    goto :goto_2

    .line 189
    :cond_6
    const-string/jumbo p1, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_7

    .line 202
    const-string p1, "ACTION_FLASH_NOTIFICATION_STOP_PREVIEW"

    .line 204
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 209
    const-string/jumbo p1, "preview"

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    .line 215
    :cond_7
    :goto_2
    return-void
.end method
