.class public final Lcom/android/server/PACMService$PACServiceSocketThread;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    .line 6
    return-void
.end method


# virtual methods
.method public final executeCommand(Lcom/samsung/android/service/ProtectedATCommand/Packet;)[B
    .locals 10

    .line 1
    const-string v0, "END - executeCommand :"

    .line 3
    const-string v1, "Unknown command("

    .line 5
    const-string/jumbo v2, "cmd : "

    .line 8
    const-string v3, "Command : "

    .line 10
    const-string v4, "START - executeCommand :"

    .line 12
    const-string v5, "Buffer is abnormal("

    .line 14
    iget-object v6, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    .line 16
    iget-object v6, v6, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v6

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->isEmpty()Z

    .line 22
    move-result v7

    .line 23
    const/4 v8, 0x0

    .line 24
    if-eqz v7, :cond_0

    .line 26
    const-string p0, "PACMSOCKET"

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->size()I

    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string p1, ")"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    monitor-exit v6

    .line 53
    return-object v8

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto/16 :goto_3

    .line 57
    :cond_0
    const-string v5, "PACMSOCKET"

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->size()I

    .line 67
    move-result v4

    .line 68
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const/4 v4, 0x1

    .line 79
    :try_start_1
    invoke-virtual {p1, v4}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->compareVersion(I)I

    .line 82
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eq v5, v4, :cond_1

    .line 85
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    return-object v8

    .line 87
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->getCommand()I

    .line 90
    move-result v5

    .line 91
    const-string v7, "PACMSOCKET"

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eq v5, v4, :cond_2

    .line 110
    const-string p0, "PACMSOCKET"

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ")"

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const p0, -0xffffffd

    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception p0

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    const/4 v1, 0x2

    .line 139
    invoke-virtual {p1, v1}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->getItem(I)[B

    .line 142
    move-result-object v1

    .line 143
    const-string v3, "PACMSOCKET"

    .line 145
    const-string v7, "Packet.PAC_PACKET_CMD_AT_CMD_CHECK:"

    .line 147
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v1, :cond_3

    .line 152
    new-instance v3, Ljava/lang/String;

    .line 154
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 156
    invoke-direct {v3, v1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 159
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 161
    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    const-string v3, "PACMSOCKET"

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    .line 184
    iget-object v2, p0, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    .line 186
    iget-object p0, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    .line 188
    invoke-virtual {v2, p0, v1, p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->checkATCommand(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/samsung/android/service/ProtectedATCommand/Packet;)I

    .line 191
    move-result p0

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    const/4 p0, 0x0

    .line 194
    :goto_0
    const-string p1, "PACMSOCKET"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v0, "("

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string v0, ")"

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance p1, Lcom/samsung/android/service/ProtectedATCommand/Packet;

    .line 226
    invoke-direct {p1}, Lcom/samsung/android/service/ProtectedATCommand/Packet;-><init>()V

    .line 229
    invoke-virtual {p1, v4, v5, p0}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->getResponsePacket(III)[B

    .line 232
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    goto :goto_2

    .line 234
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :goto_2
    monitor-exit v6

    .line 238
    return-object v8

    .line 239
    :goto_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    throw p0
.end method

.method public final run()V
    .locals 7

    .line 1
    const-string v0, "PACMSOCKET"

    .line 3
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    .line 11
    const-string v3, "/dev/socket/pacm/pacmservice"

    .line 13
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 15
    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 18
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 21
    new-instance v2, Landroid/net/LocalServerSocket;

    .line 23
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 30
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    .line 33
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 34
    :try_start_3
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 37
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 38
    :try_start_4
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 41
    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 42
    :try_start_5
    const-string v6, "[v.1] Ready to connect."

    .line 44
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v6, Lcom/samsung/android/service/ProtectedATCommand/Packet;

    .line 49
    invoke-direct {v6}, Lcom/samsung/android/service/ProtectedATCommand/Packet;-><init>()V

    .line 52
    invoke-virtual {v6, v4}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->readStream(Ljava/io/InputStream;)V

    .line 55
    invoke-virtual {p0, v6}, Lcom/android/server/PACMService$PACServiceSocketThread;->executeCommand(Lcom/samsung/android/service/ProtectedATCommand/Packet;)[B

    .line 58
    move-result-object v6

    .line 59
    if-nez v6, :cond_0

    .line 61
    const-string/jumbo v6, "ret is null"

    .line 64
    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v6, -0x1

    .line 68
    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v6

    .line 73
    goto :goto_4

    .line 74
    :cond_0
    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 77
    :goto_1
    const-string v6, "Disconnected."

    .line 79
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    if-eqz v5, :cond_1

    .line 84
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 87
    goto :goto_2

    .line 88
    :catchall_1
    move-exception v5

    .line 89
    goto :goto_6

    .line 90
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 92
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 95
    goto :goto_3

    .line 96
    :catchall_2
    move-exception v4

    .line 97
    goto :goto_8

    .line 98
    :cond_2
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 101
    goto :goto_0

    .line 102
    :catchall_3
    move-exception p0

    .line 103
    goto :goto_b

    .line 104
    :catch_0
    move-exception v3

    .line 105
    goto :goto_a

    .line 106
    :goto_4
    if-eqz v5, :cond_3

    .line 108
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 111
    goto :goto_5

    .line 112
    :catchall_4
    move-exception v5

    .line 113
    :try_start_a
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 116
    :cond_3
    :goto_5
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 117
    :goto_6
    if-eqz v4, :cond_4

    .line 119
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 122
    goto :goto_7

    .line 123
    :catchall_5
    move-exception v4

    .line 124
    :try_start_c
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    :cond_4
    :goto_7
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 128
    :goto_8
    if-eqz v3, :cond_5

    .line 130
    :try_start_d
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 133
    goto :goto_9

    .line 134
    :catchall_6
    move-exception v3

    .line 135
    :try_start_e
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 138
    :cond_5
    :goto_9
    throw v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 139
    :goto_a
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const-string v5, "Socket connection may be closed. "

    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v4

    .line 160
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 166
    goto/16 :goto_0

    .line 168
    :goto_b
    :try_start_10
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 171
    goto :goto_c

    .line 172
    :catchall_7
    move-exception v2

    .line 173
    :try_start_11
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 176
    :goto_c
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 177
    :catchall_8
    move-exception p0

    .line 178
    :try_start_12
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 181
    goto :goto_d

    .line 182
    :catchall_9
    move-exception v1

    .line 183
    :try_start_13
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 186
    :goto_d
    throw p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 187
    :catch_1
    move-exception p0

    .line 188
    const-string v1, "Failed to open local socket"

    .line 190
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const-string p0, "Socket thread has been stopped."

    .line 198
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method
