.class public final Lcom/android/server/audio/PlaybackActivityMonitor$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/PlaybackActivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_7

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/os/PersistableBundle;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string p0, "AS.PlaybackActivityMon"

    .line 22
    .line 23
    const-string p1, "Received format event with no extras"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    const-string v1, "android.media.extra.PLAYER_EVENT_SPATIALIZED"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v3, "android.media.extra.PLAYER_EVENT_SAMPLE_RATE"

    .line 37
    .line 38
    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "android.media.extra.PLAYER_EVENT_CHANNEL_MASK"

    .line 43
    .line 44
    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    new-instance v4, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 49
    .line 50
    invoke-direct {v4, v1, v0, v3}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(ZII)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 54
    .line 55
    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;

    .line 56
    .line 57
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 58
    .line 59
    invoke-direct {v1, v3, v4}, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;-><init>(ILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 73
    .line 74
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 85
    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz p1, :cond_8

    .line 88
    .line 89
    invoke-virtual {p1, v4}, Landroid/media/AudioPlaybackConfiguration;->handleFormatEvent(Landroid/media/AudioPlaybackConfiguration$FormatInfo;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 98
    .line 99
    invoke-virtual {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :catchall_0
    move-exception p0

    .line 105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p0

    .line 107
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Landroid/os/PersistableBundle;

    .line 110
    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    const-string p0, "AS.PlaybackActivityMon"

    .line 114
    .line 115
    const-string p1, "Received mute event with no extras"

    .line 116
    .line 117
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    const-string v1, "android.media.extra.PLAYER_EVENT_MUTE"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v1

    .line 132
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 133
    .line 134
    sget-object v3, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 135
    .line 136
    new-instance v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;

    .line 137
    .line 138
    const/4 v5, 0x7

    .line 139
    invoke-direct {v4, p1, v5, v0}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(III)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 146
    .line 147
    iget-object v3, v3, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 158
    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/media/AudioPlaybackConfiguration;->handleMutedEvent(I)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_5

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 169
    .line 170
    invoke-virtual {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 171
    .line 172
    .line 173
    monitor-exit v1

    .line 174
    goto :goto_2

    .line 175
    :catchall_1
    move-exception p0

    .line 176
    goto :goto_1

    .line 177
    :cond_6
    :goto_0
    monitor-exit v1

    .line 178
    goto :goto_2

    .line 179
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    throw p0

    .line 181
    :cond_7
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v3, "Timeout for muting waiting for "

    .line 186
    .line 187
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 193
    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v3, ", unmuting"

    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v3, "AS.PlaybackActivityMon"

    .line 207
    .line 208
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unmutePlayersExpectingDevice()V

    .line 219
    .line 220
    .line 221
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 222
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 223
    .line 224
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMuteAwaitConnectionTimeoutCb:Ljava/util/function/Consumer;

    .line 225
    .line 226
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Landroid/media/AudioDeviceAttributes;

    .line 229
    .line 230
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    :goto_2
    return-void

    .line 234
    :catchall_2
    move-exception p0

    .line 235
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 236
    throw p0
.end method
