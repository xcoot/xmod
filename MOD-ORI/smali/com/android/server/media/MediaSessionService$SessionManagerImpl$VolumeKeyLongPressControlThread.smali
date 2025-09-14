.class public final Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDirection:I

.field public mFlags:I

.field public mNeedToRun:Z

.field public final mOpPackageName:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Landroid/os/PowerManager;

.field public mSleepDuration:I

.field public mStream:I

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo v0, "power"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/os/PowerManager;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mPm:Landroid/os/PowerManager;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mPackageName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mOpPackageName:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 5
    .line 6
    int-to-long v3, v3

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v3

    .line 17
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mPm:Landroid/os/PowerManager;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_4

    .line 24
    .line 25
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    const/16 v4, 0xc8

    .line 30
    .line 31
    if-lt v2, v4, :cond_0

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_0
    add-int/2addr v2, v0

    .line 35
    const-string v4, "MediaSessionService"

    .line 36
    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v6, "volumekey long press repeat:"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 59
    .line 60
    const/16 v5, 0x1f4

    .line 61
    .line 62
    if-ne v4, v5, :cond_1

    .line 63
    .line 64
    const/16 v4, 0x32

    .line 65
    .line 66
    iput v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_5

    .line 71
    :cond_1
    :goto_1
    iget v12, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    .line 72
    .line 73
    and-int/lit16 v4, v12, 0x200

    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    move v13, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move v13, v1

    .line 80
    :goto_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mPackageName:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mOpPackageName:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v7, v4, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 87
    .line 88
    iget v7, v7, Lcom/android/server/media/MediaSessionService;->mSystemServerPid:I

    .line 89
    .line 90
    iget v10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    .line 91
    .line 92
    iget v11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    .line 93
    .line 94
    const/16 v8, 0x3e8

    .line 95
    .line 96
    const/4 v9, 0x1

    .line 97
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 98
    .line 99
    .line 100
    monitor-exit v3

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    :goto_3
    monitor-exit v3

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 107
    .line 108
    sget v1, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    const-string p0, "MediaSessionService"

    .line 121
    .line 122
    const-string/jumbo v0, "screen is on"

    .line 123
    .line 124
    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    monitor-exit v3

    .line 129
    :goto_4
    return-void

    .line 130
    :goto_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    throw p0
.end method
