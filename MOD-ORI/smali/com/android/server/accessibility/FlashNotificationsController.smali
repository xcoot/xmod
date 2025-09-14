.class public final Lcom/android/server/accessibility/FlashNotificationsController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final ACTION_FLASH_NOTIFICATION_START_PREVIEW:Ljava/lang/String; = "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

.field static final ACTION_FLASH_NOTIFICATION_STOP_PREVIEW:Ljava/lang/String; = "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

.field static final ALL_FLASH_NOTIFICATION_TYPE:I = 0x3

.field static final CAMERA_FLASH_NOTIFICATION_ALL_APPS:Ljava/lang/String; = "all"

.field static final CAMERA_FLASH_NOTIFICATION_TYPE:I = 0x1

.field static final EXTRA_FLASH_NOTIFICATION_PREVIEW_COLOR:Ljava/lang/String; = "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_COLOR"

.field static final EXTRA_FLASH_NOTIFICATION_PREVIEW_TYPE:Ljava/lang/String; = "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

.field static final NONE_FLASH_NOTIFICATIONS_TYPE:I = 0x0

.field static final PREVIEW_TYPE_LONG:I = 0x1

.field static final PREVIEW_TYPE_SHORT:I = 0x0

.field static final SCREEN_FLASH_NOTIFICATION_COLOR_APPS_ITEM_SEPARATOR:C = '#'

.field static final SCREEN_FLASH_NOTIFICATION_COLOR_APPS_LIST_SEPARATOR:C = ';'

.field static final SCREEN_FLASH_NOTIFICATION_MODE_ALL_APPS:I = 0x0

.field static final SCREEN_FLASH_NOTIFICATION_MODE_CUSTOM:I = 0x1

.field static final SCREEN_FLASH_NOTIFICATION_TYPE:I = 0x2

.field static final SETTING_KEY_CAMERA_FLASH_NOTIFICATION:Ljava/lang/String; = "camera_flash_notification"

.field static final SETTING_KEY_CAMERA_FLASH_NOTIFICATION_APP_LIST:Ljava/lang/String; = "camera_flash_notification_app_list"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION:Ljava/lang/String; = "screen_flash_notification"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION_COLOR:Ljava/lang/String; = "screen_flash_notification_color_global"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION_COLOR_APPS:Ljava/lang/String; = "screen_flash_notification_color_apps"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION_COLOR_MODE:Ljava/lang/String; = "screen_flash_notification_color_mode"


# instance fields
.field public final mCallbackHandler:Landroid/os/Handler;

.field public mCameraId:Ljava/lang/String;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mContext:Landroid/content/Context;

.field public mCoverScreenNotificationOverlayView:Landroid/view/View;

.field public mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayState:I

.field final mFlashBroadcastReceiver:Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

.field public final mFlashNotificationHandler:Landroid/os/Handler;

.field public final mFlashNotifications:Ljava/util/LinkedList;

.field public mIsAlarming:Z

.field public mIsCameraFlashNotificationEnabled:Z

.field public mIsCameraFlashNotificationRunning:Z

.field public mIsCameraOpened:Z

.field public mIsScreenFlashNotificationEnabled:Z

.field public mIsTorchOn:Z

.field public mIsTorchTouched:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mScreenFlashNotificationOverlayView:Landroid/view/View;

.field public volatile mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

.field final mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$mdoCameraFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotification(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "doCameraFlashNotificationOn: isCameraFlashNotificationEnabled="

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isTorchOn="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", isTorchTouched="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    .line 42
    .line 43
    const-string v1, "FlashNotifController"

    .line 44
    .line 45
    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static -$$Nest$mdoScreenFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    :cond_2
    if-nez v0, :cond_3

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v1, "doScreenFlashNotificationOn: isScreenFlashNotificationEnabled="

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 49
    .line 50
    const-string v1, ", isDozeMode="

    .line 51
    .line 52
    const-string v2, ", color="

    .line 53
    .line 54
    invoke-static {p2, p0, v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "FlashNotifController"

    .line 69
    .line 70
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlashNotificationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FlashNotifController"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 38
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayState:I

    .line 9
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    .line 11
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    .line 12
    new-instance v3, Lcom/android/server/accessibility/FlashNotificationsController$1;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$1;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    .line 13
    new-instance v3, Lcom/android/server/accessibility/FlashNotificationsController$2;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$2;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 14
    new-instance v3, Lcom/android/server/accessibility/FlashNotificationsController$3;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$3;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 15
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 16
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    .line 17
    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotificationHandler:Landroid/os/Handler;

    .line 18
    iput-object p3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCallbackHandler:Landroid/os/Handler;

    .line 19
    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;

    invoke-direct {p2, p0, v3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 20
    iget-object v3, p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    const/4 v4, -0x1

    invoke-virtual {p3, v3, v0, p2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 21
    iget-object v3, p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    invoke-virtual {p3, v3, v0, p2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 22
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    const-string p3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    const-string/jumbo p3, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string/jumbo p3, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    new-instance p3, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object p3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashBroadcastReceiver:Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

    const/4 v0, 0x4

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 28
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 29
    const-string p3, "a11y:FlashNotificationsController"

    invoke-virtual {p2, v1, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 31
    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController$4;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/FlashNotificationsController$4;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1, p2, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public static fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move v1, v2

    .line 14
    :goto_1
    const/4 p1, 0x2

    .line 15
    new-array p1, p1, [F

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput v3, p1, v2

    .line 19
    .line 20
    aput v1, p1, v0

    .line 21
    .line 22
    const-string v1, "alpha"

    .line 23
    .line 24
    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v0, 0xc8

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final doCameraFlashNotification(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "doCameraFlashNotification: "

    .line 2
    .line 3
    .line 4
    const-string v1, " mCameraId : "

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "FlashNotifController"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "Failed to setTorchMode: "

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "Can not use camera flash notification, please check CameraManager!"

    .line 51
    .line 52
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final doCameraFlashNotificationOff()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotification(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "doCameraFlashNotificationOff: isCameraFlashNotificationEnabled="

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", isTorchOn="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", isTorchTouched="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    .line 38
    .line 39
    const-string v1, "FlashNotifController"

    .line 40
    .line 41
    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final doScreenFlashNotificationOff()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-wide/16 v2, 0xd2

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v1, "doScreenFlashNotificationOff: isScreenFlashNotificationEnabled="

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 40
    .line 41
    const-string v1, "FlashNotifController"

    .line 42
    .line 43
    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final getCameraId()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Ljava/lang/Boolean;

    .line 26
    .line 27
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 28
    .line 29
    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x1

    .line 50
    if-ne v4, v5, :cond_0

    .line 51
    .line 52
    const-string p0, "Found valid camera, cameraId="

    .line 53
    .line 54
    const-string v0, "FlashNotifController"

    .line 55
    .line 56
    invoke-static {p0, v3, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v3

    .line 60
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public final getCoverDisplayWindowManager()Landroid/view/WindowManager;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "display"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 11
    .line 12
    const-string/jumbo v1, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v1, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    aget-object v4, v0, v2

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x1

    .line 31
    if-ne v5, v6, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v4, v3

    .line 38
    :goto_1
    const-string v0, "FlashNotifController"

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    const-string/jumbo p0, "coverDisplay is not found."

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x2

    .line 54
    if-eq v1, v2, :cond_3

    .line 55
    .line 56
    const-string/jumbo p0, "coverDisplay is not STATE_ON"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p0, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string/jumbo v0, "window"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroid/view/WindowManager;

    .line 77
    .line 78
    return-object p0
.end method

.method public final getScreenFlashColorPreference$2()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x66ffff00

    .line 8
    .line 9
    .line 10
    const/4 v1, -0x2

    .line 11
    const-string/jumbo v2, "screen_flash_notification_color_global"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final prepareForCameraFlashNotification()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/hardware/camera2/CameraManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getCameraId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "FlashNotifController"

    .line 24
    .line 25
    const-string v2, "CameraAccessException"

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, p0, v1}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v3, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 31
    .line 32
    .line 33
    iget-object p0, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget-object p1, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_2
    :goto_0
    const-string/jumbo p0, "removeFlashNotificationLocked: tag="

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "FlashNotifController"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    :catch_1
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_6
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method

.method public final requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 7

    .line 1
    const-string v0, "FlashNotifController"

    .line 2
    .line 3
    const-string/jumbo v1, "requestStartFlashNotification"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "service.camera.running"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string/jumbo v4, "settings_flash_notifications"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v4, -0x2

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v5, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-string/jumbo v6, "camera_flash_notification"

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v6, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    move v5, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v5, v2

    .line 51
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string/jumbo v5, "screen_flash_notification"

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    move v2, v3

    .line 71
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 72
    .line 73
    iget v1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    .line 74
    .line 75
    if-ne v1, v3, :cond_3

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    .line 80
    .line 81
    new-instance v2, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v2, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-wide/16 v2, 0x12c

    .line 92
    .line 93
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 94
    .line 95
    .line 96
    const-string/jumbo p0, "give some delay for flash notification"

    .line 97
    .line 98
    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void
.end method

.method public final startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "FlashNotifController"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v4, "startFlashNotification: type="

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v4, ", tag="

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-boolean v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 38
    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    iget-boolean v3, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    .line 42
    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    const-string p0, "FlashNotifController"

    .line 46
    .line 47
    const-string p1, "Flash notification is disabled"

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    const-string p0, "FlashNotifController"

    .line 58
    .line 59
    const-string p1, "Since camera for torch is opened, block notification."

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    const/4 v3, 0x1

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    .line 69
    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    iget v2, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    .line 73
    .line 74
    and-int/2addr v2, v3

    .line 75
    if-ne v2, v3, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    .line 85
    .line 86
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    if-eq v0, v3, :cond_6

    .line 88
    .line 89
    const/4 v3, 0x3

    .line 90
    if-ne v0, v3, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v3, 0x2

    .line 94
    if-ne v0, v3, :cond_5

    .line 95
    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationLocked()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->startNextFlashNotificationLocked()V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    const-string p0, "FlashNotifController"

    .line 119
    .line 120
    const-string p1, "Unavailable flash notification type"

    .line 121
    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    const-string p0, "FlashNotifController"

    .line 131
    .line 132
    const-string p1, "Default type of flash notification can not work because previous flash notification is working"

    .line 133
    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    :catchall_1
    move-exception p0

    .line 149
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    .line 151
    .line 152
    throw p0
.end method

.method public final startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "startFlashNotificationLocked: type="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", tag="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "FlashNotifController"

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v0, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-string/jumbo p0, "startFlashNotificationLocked: flash notification cannot be started."

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    .line 45
    .line 46
    const-string/jumbo v0, "mIsCameraFlashNotificationRunning true in startFlashNotificationLocked"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 53
    .line 54
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotificationHandler:Landroid/os/Handler;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final startNextFlashNotificationLocked()V
    .locals 2

    .line 1
    const-string v0, "FlashNotifController"

    .line 2
    .line 3
    const-string/jumbo v1, "startNextFlashNotificationLocked"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final stopFlashNotification(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "FlashNotifController"

    .line 2
    .line 3
    const-string/jumbo v1, "stopFlashNotification: tag="

    .line 4
    .line 5
    .line 6
    invoke-static {v1, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationLocked()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->startNextFlashNotificationLocked()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final stopFlashNotificationLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FlashNotifController"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "stopFlashNotificationLocked: tag="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 25
    .line 26
    const-string v1, "FlashNotifController"

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v3, "run canceled: "

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, v1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 56
    .line 57
    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
