.class public abstract Lcom/android/server/wm/FreeformContainerServiceBinder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mIsServiceRunning:Z

.field public final mService:Landroid/content/Intent;

.field public final mServiceConnection:Lcom/android/server/wm/FreeformContainerServiceBinder$1;

.field public final mServiceHistory:Ljava/util/ArrayList;

.field public final mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mService:Landroid/content/Intent;

    .line 10
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/server/wm/FreeformContainerServiceBinder$1;-><init>(Lcom/android/server/wm/FreeformContainerServiceBinder;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceConnection:Lcom/android/server/wm/FreeformContainerServiceBinder$1;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final declared-synchronized bindServiceIfNeeded(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "BindService["

    .line 2
    .line 3
    const-string v1, "bind service failed, reason="

    .line 4
    .line 5
    const-string v2, "bind service success, reason="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    instance-of v3, p0, Lcom/android/server/wm/SmartPopupViewServiceBinder;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToBind()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string/jumbo v3, "startUser"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "Service running but not needed for this User"

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 50
    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToBind()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mService:Landroid/content/Intent;

    .line 64
    .line 65
    iget-object v5, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceConnection:Lcom/android/server/wm/FreeformContainerServiceBinder$1;

    .line 66
    .line 67
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 68
    .line 69
    const/4 v7, 0x1

    .line 70
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    iput-boolean v7, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p1, "] Success="

    .line 124
    .line 125
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-boolean p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 129
    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p1, " | "

    .line 134
    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 139
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .line 161
    .line 162
    :cond_2
    monitor-exit p0

    .line 163
    return-void

    .line 164
    :goto_1
    monitor-exit p0

    .line 165
    throw p1
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "]"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "    "

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " Running="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 41
    .line 42
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    const-string v0, "    * History"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x5

    .line 65
    if-lt v0, v1, :cond_0

    .line 66
    .line 67
    add-int/lit8 v1, v0, -0x5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 71
    :goto_0
    if-ge v1, v0, :cond_1

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "      #"

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v3, v1, 0x1

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, " "

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v2, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 99
    .line 100
    .line 101
    move v1, v3

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method public isServiceRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public abstract okToBind()Z
.end method

.method public abstract okToUnbind()Z
.end method

.method public final declared-synchronized unbindServiceIfNeeded(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "UnbindService["

    .line 2
    .line 3
    const-string/jumbo v1, "unbind service success, reason="

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToUnbind()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceConnection:Lcom/android/server/wm/FreeformContainerServiceBinder$1;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "] | "

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit p0

    .line 91
    throw p1
.end method
