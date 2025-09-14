.class public final Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCb:Landroid/os/IBinder;

.field public final mIsPrivileged:Z

.field public mMode:I

.field public final mPackage:Ljava/lang/String;

.field public final mPid:I

.field public mPlaybackActive:Z

.field public mRecordingActive:Z

.field public final mUid:I

.field public mUpdateTime:J

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;IIZLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    .line 10
    .line 11
    iput p7, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 14
    .line 15
    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    .line 16
    .line 17
    iput p4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 18
    .line 19
    iput-object p6, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 20
    .line 21
    iput-boolean p5, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    iput-wide p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUpdateTime:J

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    const-string v1, "AS.AudioService"

    .line 9
    .line 10
    const-string v2, "SetModeDeathHandler client died"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    const-string p0, "AS.AudioService"

    .line 26
    .line 27
    const-string/jumbo v1, "unregistered SetModeDeathHandler client died"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 56
    .line 57
    iget v2, v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, -0x1

    .line 61
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/audio/AudioServiceExt;->updateCallGuardInfo(IIZ)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 65
    .line 66
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 67
    .line 68
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    const/16 v3, 0x24

    .line 81
    .line 82
    const/4 v4, 0x2

    .line 83
    const/4 v5, -0x1

    .line 84
    const/4 v8, 0x0

    .line 85
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    monitor-exit v0

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0
.end method

.method public final dump(ILjava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss:SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "  Requester # "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ":"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "  - Mode: "

    .line 37
    .line 38
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 42
    .line 43
    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "  - Binder: "

    .line 60
    .line 61
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "  - Pid: "

    .line 79
    .line 80
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    .line 84
    .line 85
    const-string v2, "  - Uid: "

    .line 86
    .line 87
    invoke-static {p1, v1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 92
    .line 93
    const-string v2, "  - Package: "

    .line 94
    .line 95
    invoke-static {p1, v1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 100
    .line 101
    const-string v2, "  - Privileged: "

    .line 102
    .line 103
    invoke-static {p2, v1, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    .line 108
    .line 109
    const-string v2, "  - Active: "

    .line 110
    .line 111
    invoke-static {p1, v1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, "    Playback active: "

    .line 132
    .line 133
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    .line 137
    .line 138
    const-string v2, "    Recording active: "

    .line 139
    .line 140
    invoke-static {p1, v1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    .line 145
    .line 146
    const-string v2, "  - update time: "

    .line 147
    .line 148
    invoke-static {p1, v1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v1, Ljava/util/Date;

    .line 153
    .line 154
    iget-wide v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUpdateTime:J

    .line 155
    .line 156
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final isActive()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    .line 12
    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    .line 16
    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    :cond_0
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x4

    .line 22
    if-ne v0, p0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :cond_2
    :goto_0
    return v1
.end method
