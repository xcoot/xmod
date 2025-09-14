.class public final Lcom/android/server/audio/AudioService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 8

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 10
    .line 11
    if-eqz p1, :cond_5

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 17
    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 37
    .line 38
    iget-object v5, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    sget-object v2, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    .line 52
    .line 53
    iget v6, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    .line 54
    .line 55
    iget-object v3, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 56
    .line 57
    const/4 v7, 0x3

    .line 58
    invoke-direct {v5, v7, v6, v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 62
    .line 63
    .line 64
    move v2, v4

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const/4 v1, 0x0

    .line 80
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p1, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p0

    .line 87
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    const-string/jumbo v0, "clear port id to piid map:\n"

    .line 94
    .line 95
    .line 96
    sget-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 97
    .line 98
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 99
    .line 100
    const-string/jumbo v3, "clear port id to piid map"

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p1, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v1

    .line 112
    :try_start_2
    invoke-static {}, Lcom/android/media/audio/Flags;->portToPiidSimplification()Z

    .line 113
    .line 114
    .line 115
    const-string v2, "AS.PlaybackActivityMon"

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p1, Lcom/android/server/audio/PlaybackActivityMonitor;->mPortIdToPiid:Landroid/util/SparseIntArray;

    .line 123
    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object p1, p1, Lcom/android/server/audio/PlaybackActivityMonitor;->mPortIdToPiid:Landroid/util/SparseIntArray;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 137
    .line 138
    .line 139
    monitor-exit v1

    .line 140
    goto :goto_5

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    throw p0

    .line 144
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    .line 145
    .line 146
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v1, 0x4

    .line 151
    const/4 v2, 0x1

    .line 152
    const/4 v3, 0x0

    .line 153
    const/4 v4, 0x0

    .line 154
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 160
    .line 161
    const/4 v5, 0x0

    .line 162
    const/4 v6, 0x0

    .line 163
    const/16 v1, 0x17

    .line 164
    .line 165
    const/4 v2, 0x2

    .line 166
    const/4 v3, 0x0

    .line 167
    const/4 v4, 0x0

    .line 168
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 169
    .line 170
    .line 171
    :goto_6
    return-void
.end method
