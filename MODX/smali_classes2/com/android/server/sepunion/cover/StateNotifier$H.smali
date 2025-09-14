.class public final Lcom/android/server/sepunion/cover/StateNotifier$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 12
    .line 13
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    const-string p1, "CoverManager_"

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v2, "send cover attach : "

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    throw p0

    .line 110
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    throw p0

    .line 112
    :cond_4
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 113
    .line 114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Lcom/samsung/android/cover/CoverState;

    .line 117
    .line 118
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 119
    .line 120
    if-ne p1, v2, :cond_5

    .line 121
    .line 122
    move v1, v2

    .line 123
    :cond_5
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 124
    .line 125
    monitor-enter p1

    .line 126
    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 143
    .line 144
    invoke-virtual {v3, v0}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :catchall_2
    move-exception p0

    .line 152
    goto :goto_6

    .line 153
    :cond_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    const-string p1, "CoverManager_"

    .line 155
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string/jumbo v2, "send cover switch : "

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_7

    .line 181
    .line 182
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_5
    return-void

    .line 188
    :goto_6
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 189
    throw p0
.end method
