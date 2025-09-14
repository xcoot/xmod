.class public final synthetic Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/io/FileDescriptor;

    .line 13
    .line 14
    sget-boolean v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    .line 15
    .line 16
    const-string v2, "EmulatorClipboardMonitor"

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, "Setting the host clipboard to \'"

    .line 21
    .line 22
    const-string v3, "\'"

    .line 23
    .line 24
    invoke-static {v1, v0, v3, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p0, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->sendMessage(Ljava/io/FileDescriptor;[B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Failed to set host clipboard "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :catch_1
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Ljava/util/function/Consumer;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    :catch_2
    :goto_1
    move-object v2, v1

    .line 60
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    const-string v3, "EmulatorClipboardMonitor"

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    :try_start_1
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipe()Ljava/io/FileDescriptor;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    monitor-enter v0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    .line 75
    :try_start_2
    iput-object v2, v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    :try_start_3
    monitor-exit v0

    .line 78
    goto :goto_3

    .line 79
    :catchall_0
    move-exception v4

    .line 80
    monitor-exit v0

    .line 81
    throw v4

    .line 82
    :catch_3
    move-exception v4

    .line 83
    goto :goto_4

    .line 84
    :cond_1
    :goto_3
    invoke-static {v2}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->receiveMessage(Ljava/io/FileDescriptor;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    new-instance v5, Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Landroid/content/ClipData;

    .line 94
    .line 95
    const-string/jumbo v6, "host clipboard"

    .line 96
    .line 97
    .line 98
    const-string/jumbo v7, "text/plain"

    .line 99
    .line 100
    .line 101
    filled-new-array {v7}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    new-instance v8, Landroid/content/ClipData$Item;

    .line 106
    .line 107
    invoke-direct {v8, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v4, v6, v7, v8}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 111
    .line 112
    .line 113
    new-instance v6, Landroid/os/PersistableBundle;

    .line 114
    .line 115
    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string/jumbo v7, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    .line 119
    .line 120
    .line 121
    const/4 v8, 0x1

    .line 122
    invoke-virtual {v6, v7, v8}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7, v6}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 130
    .line 131
    .line 132
    sget-boolean v6, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    .line 133
    .line 134
    if-eqz v6, :cond_2

    .line 135
    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v7, "Setting the guest clipboard to \'"

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v5, "\'"

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_2
    invoke-interface {p0, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :goto_4
    const-string v5, "Failure to read from host clipboard"

    .line 166
    .line 167
    invoke-static {v3, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    monitor-enter v0

    .line 171
    :try_start_4
    iput-object v1, v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    .line 173
    monitor-exit v0

    .line 174
    :try_start_5
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    monitor-exit v0

    .line 180
    throw p0

    .line 181
    :cond_3
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
