.class public final Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-wide/32 v0, 0xea60

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    const-string p0, "AS.VolumeMonitor"

    .line 12
    .line 13
    const-string p1, "Not supported message"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {p1, v3, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 38
    .line 39
    iget-boolean v4, v3, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    iput v5, v3, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    .line 45
    .line 46
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    const-string v3, "AS.VolumeMonitor"

    .line 57
    .line 58
    const-string v4, "Music is playing"

    .line 59
    .line 60
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    .line 75
    .line 76
    monitor-exit p1

    .line 77
    return-void

    .line 78
    :cond_2
    const-string v0, "AS.VolumeMonitor"

    .line 79
    .line 80
    const-string v1, "Music is stopped"

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 88
    .line 89
    iput v5, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    .line 90
    .line 91
    monitor-exit p1

    .line 92
    goto :goto_1

    .line 93
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter p1

    .line 102
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 105
    .line 106
    iget v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    .line 107
    .line 108
    if-ne v3, v2, :cond_4

    .line 109
    .line 110
    monitor-exit p1

    .line 111
    return-void

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iput v2, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    .line 115
    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    .line 117
    .line 118
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    .line 124
    .line 125
    monitor-exit p1

    .line 126
    :goto_1
    return-void

    .line 127
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    throw p0
.end method
