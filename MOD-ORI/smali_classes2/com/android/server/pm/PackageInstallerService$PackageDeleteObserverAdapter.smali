.class public final Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
.super Landroid/app/PackageDeleteObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFlags:I

.field public final mNotification:Landroid/app/Notification;

.field public final mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

.field public final mPackageName:Ljava/lang/String;

.field public final mTarget:Landroid/content/IntentSender;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p1

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZILcom/android/server/pm/PackageArchiver;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZILcom/android/server/pm/PackageArchiver;I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 5
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7
    :try_start_0
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 8
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    const-string p4, "Core.PACKAGE_DELETED_BY_DO"

    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda7;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p4, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    invoke-static {p5, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    throw p0

    :cond_0
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    .line 14
    :goto_0
    iput p5, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mUserId:I

    .line 15
    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 16
    iput p7, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mFlags:I

    return-void
.end method


# virtual methods
.method public final onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne v0, p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string/jumbo v2, "notification"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/NotificationManager;

    .line 18
    .line 19
    const/16 v2, 0x15

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    if-eq v0, p2, :cond_1

    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mFlags:I

    .line 33
    .line 34
    and-int/lit8 v0, v0, 0x10

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mUserId:I

    .line 41
    .line 42
    iget-object v2, p1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 45
    .line 46
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 47
    .line 48
    monitor-enter v2

    .line 49
    :try_start_0
    iget-object v3, p1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 65
    .line 66
    throw p0

    .line 67
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 68
    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .line 73
    .line 74
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string p1, "android.content.pm.extra.PACKAGE_NAME"

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string p1, "android.content.pm.extra.STATUS"

    .line 85
    .line 86
    invoke-static {p2}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string p1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 94
    .line 95
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {v3, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const-string p1, "android.content.pm.extra.LEGACY_STATUS"

    .line 103
    .line 104
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    :try_start_2
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/4 p2, 0x0

    .line 112
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    const/4 v2, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    const/4 v5, 0x0

    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .line 129
    .line 130
    :catch_0
    return-void
.end method

.method public final onUserActionRequired(Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v4, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v0, "android.content.pm.extra.STATUS"

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v0, "android.intent.extra.INTENT"

    .line 25
    .line 26
    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-virtual/range {v1 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    return-void
.end method
