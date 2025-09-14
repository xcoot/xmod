.class public final Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
.super Landroid/media/tv/ITvInputServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/ITvInputServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 7

    .line 1
    const-string v0, "addHardwareInput: device id "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 36
    .line 37
    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    .line 38
    .line 39
    invoke-virtual {v4, v6, v5}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v4, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    :try_start_2
    const-string v4, "ServiceCallback"

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", "

    .line 75
    .line 76
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 96
    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 103
    .line 104
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    .line 105
    .line 106
    invoke-virtual {p1, p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v0, Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const/4 p2, 0x0

    .line 122
    invoke-virtual {p1, p0, p2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    const-string p1, "Invalid TvInputInfo"

    .line 140
    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public final addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 34
    .line 35
    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    .line 36
    .line 37
    invoke-virtual {v3, v5, v4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v3, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 65
    .line 66
    invoke-virtual {v3, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 72
    .line 73
    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    .line 74
    .line 75
    invoke-virtual {p1, v4, v3}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v3, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v3, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p1, v4, v3}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 95
    .line 96
    iget-object v3, p1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 121
    .line 122
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 123
    .line 124
    const/4 v5, 0x1

    .line 125
    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_2

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 154
    .line 155
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 156
    .line 157
    const/4 v3, 0x4

    .line 158
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string p1, "Invalid TvInputInfo"

    .line 176
    .line 177
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0
.end method

.method public final ensureHardwarePermission()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.TV_INPUT_HARDWARE"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string v0, "The caller does not have hardware permission"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final removeHardwareInput(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "removeHardwareInput "

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    const-string v4, "ServiceCallback"

    .line 17
    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " by "

    .line 27
    .line 28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 44
    .line 45
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    .line 46
    .line 47
    invoke-static {v0, p1, p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveHardwareInputLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method
