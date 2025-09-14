.class public final Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCameraFlashNotificationUri:Landroid/net/Uri;

.field public final mScreenFlashNotificationUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "camera_flash_notification"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo p1, "screen_flash_notification"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, -0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 13
    .line 14
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string/jumbo v3, "camera_flash_notification"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 34
    .line 35
    iget-boolean p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iput-boolean v2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    .line 44
    .line 45
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    .line 57
    .line 58
    const-string p0, "FlashNotifController"

    .line 59
    .line 60
    const-string/jumbo p1, "mIsCameraFlashNotificationRunning false in onChange"

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string/jumbo p2, "screen_flash_notification"

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p2, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move v0, v2

    .line 94
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 95
    .line 96
    :cond_5
    :goto_2
    return-void
.end method
