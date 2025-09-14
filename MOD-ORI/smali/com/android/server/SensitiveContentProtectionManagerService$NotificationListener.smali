.class Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SensitiveContentProtectionManagerService.onListenerConnected"

    .line 5
    .line 6
    const-wide/32 v1, 0x80000

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture()V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "SensitiveContentProtectionManagerService.onNotificationPosted"

    .line 5
    .line 6
    const-wide/32 v1, 0x80000

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-string p0, "SensitiveContentProtect"

    .line 15
    .line 16
    const-string p1, "Unable to parse null notification"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    if-nez p2, :cond_1

    .line 29
    .line 30
    :try_start_1
    const-string p0, "SensitiveContentProtect"

    .line 31
    .line 32
    const-string p1, "Ranking map not initialized."

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 47
    .line 48
    iget-boolean v3, v3, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->hasSensitiveContent()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    const/4 p2, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 p2, 0x0

    .line 78
    :goto_0
    const/4 v3, 0x0

    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    new-instance p2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-direct {p2, v5, v3, v4}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object v3, p2

    .line 95
    :cond_4
    if-eqz v3, :cond_5

    .line 96
    .line 97
    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 100
    .line 101
    new-instance v4, Landroid/util/ArraySet;

    .line 102
    .line 103
    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveContentImprovements()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_7

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 122
    .line 123
    if-eqz p0, :cond_7

    .line 124
    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 157
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 159
    .line 160
    .line 161
    throw p0
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "SensitiveContentProtectionManagerService.onNotificationRankingUpdate"

    .line 5
    .line 6
    const-wide/32 v1, 0x80000

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-string p0, "SensitiveContentProtect"

    .line 15
    .line 16
    const-string p1, "Ranking map not initialized."

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method
