.class public final Lcom/android/server/devicestate/DeviceStateNotificationController;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CHANNEL_ID:Ljava/lang/String; = "DeviceStateManager"

.field static final INTENT_ACTION_CANCEL_STATE:Ljava/lang/String; = "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

.field static final NOTIFICATION_ID:I = 0x1

.field static final NOTIFICATION_TAG:Ljava/lang/String; = "DeviceStateManager"


# instance fields
.field public final mCancelStateRunnable:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    .line 8
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mCancelStateRunnable:Ljava/lang/Runnable;

    .line 10
    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

    .line 12
    iput-object p5, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    iput-object p6, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 16
    new-instance v2, Landroid/content/IntentFilter;

    .line 18
    const-string/jumbo p3, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    .line 21
    invoke-direct {v2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v3, "android.permission.CONTROL_DEVICE_STATE"

    .line 26
    const/4 v5, 0x4

    .line 27
    move-object v0, p1

    .line 28
    move-object v1, p0

    .line 29
    move-object v4, p2

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 33
    return-void
.end method


# virtual methods
.method public final getNotificationInfos()Landroid/util/SparseArray;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 19
    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

    .line 22
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->refreshNotificationInfos(Ljava/util/Locale;)V

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedNotificationInfos:Landroid/util/SparseArray;

    .line 41
    monitor-exit v1

    .line 42
    return-object p0

    .line 43
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    const-string/jumbo p1, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mCancelStateRunnable:Ljava/lang/Runnable;

    .line 18
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 21
    :cond_0
    return-void
.end method

.method public final showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    .line 3
    const-string v1, "DeviceStateManager"

    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v0, v1, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 9
    new-instance v2, Landroid/app/Notification$Builder;

    .line 11
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 13
    invoke-direct {v2, v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 40
    move-result-object p1

    .line 41
    const-string/jumbo p2, "sys"

    .line 44
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 47
    move-result-object p1

    .line 48
    if-eqz p6, :cond_0

    .line 50
    if-eqz p7, :cond_0

    .line 52
    new-instance p2, Landroid/app/Notification$Action$Builder;

    .line 54
    const/4 p3, 0x0

    .line 55
    invoke-direct {p2, p3, p7, p6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 58
    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance p3, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;

    .line 69
    invoke-direct {p3, p0, v0, p1}, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateNotificationController;Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V

    .line 72
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
