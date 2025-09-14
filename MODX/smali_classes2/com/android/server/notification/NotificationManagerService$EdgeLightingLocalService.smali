.class public final Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;
.super Lcom/samsung/android/edge/EdgeManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/edge/EdgeManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final hideForNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForNotification(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final hideForWakeLock(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 13
    .line 14
    sget-object p2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "hideForWakeLock packageName="

    .line 25
    .line 26
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const-string p0, "hideForWakeLock is no more used"

    .line 40
    .line 41
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 12
    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForWakeLockByWindow(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final setSuppressed(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 8
    .line 9
    return-void
.end method

.method public final showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final showForResumedActivity(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iput-wide v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final showForToast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForToast(ILjava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final showForWakeLock(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v3, "showForWakeLock : packageName = "

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v2, 0x4

    .line 41
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLockInternal(IILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 12
    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLockByWindow(ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final showForWakeUp(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeUp(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v0, "showForWakeUpByWindow is not supported : packageName = "

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final statusBarDisabled(II)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->statusBarDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method
