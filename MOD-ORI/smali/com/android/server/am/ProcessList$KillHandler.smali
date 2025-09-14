.class public final Lcom/android/server/am/ProcessList$KillHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0xfa0

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v1, 0xfa1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    sget-object p0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {}, Lcom/android/server/am/LmkdConnection;->openSocket()Landroid/net/LocalSocket;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-string p0, "ActivityManager"

    .line 37
    .line 38
    const-string p1, "Failed to connect to lowmemorykiller, retry later"

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 50
    .line 51
    .line 52
    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessList$1;->onConnect(Ljava/io/OutputStream;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    const-string p0, "ActivityManager"

    .line 64
    .line 65
    const-string v2, "Failed to communicate with lowmemorykiller, retry later"

    .line 66
    .line 67
    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 76
    .line 77
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 78
    .line 79
    iput-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v2, Lcom/android/server/am/LmkdConnection$1;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lcom/android/server/am/LmkdConnection$1;-><init>(Lcom/android/server/am/LmkdConnection;)V

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x5

    .line 93
    invoke-virtual {v1, p1, v3, v2}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    .line 100
    .line 101
    monitor-exit v0

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 104
    .line 105
    .line 106
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :goto_0
    const-string p0, "ActivityManager"

    .line 108
    .line 109
    const-string p1, "Failed to connect to lmkd, retry after 1000 ms"

    .line 110
    .line 111
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    sget-object p0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 115
    .line 116
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-wide/16 v0, 0x3e8

    .line 121
    .line 122
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    throw p0

    .line 128
    :cond_4
    const-string/jumbo p0, "killProcessGroup"

    .line 129
    .line 130
    .line 131
    const-wide/16 v0, 0x40

    .line 132
    .line 133
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "B|killProcessGroup "

    .line 139
    .line 140
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 144
    .line 145
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    const/4 v2, 0x0

    .line 153
    invoke-static {p0, v2}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 157
    .line 158
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 159
    .line 160
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 161
    .line 162
    .line 163
    const-string p0, "E|killProcessGroup"

    .line 164
    .line 165
    invoke-static {p0, v2}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 169
    .line 170
    .line 171
    :goto_2
    return-void
.end method
