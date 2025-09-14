.class public final Lcom/android/server/am/LmkdConnection$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/LmkdConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LmkdConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection$1;->this$0:Lcom/android/server/am/LmkdConnection;

    .line 6
    return-void
.end method


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection$1;->this$0:Lcom/android/server/am/LmkdConnection;

    .line 3
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 8
    goto/16 :goto_7

    .line 10
    :cond_0
    and-int/lit8 p1, p2, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    .line 17
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 29
    move-result-object p1

    .line 30
    array-length p1, p1

    .line 31
    invoke-virtual {v3, v4, v0, p1}, Ljava/io/InputStream;->read([BII)I

    .line 34
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    monitor-exit v2

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_3

    .line 40
    :catch_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const/4 p1, -0x1

    .line 42
    :goto_0
    if-lez p1, :cond_4

    .line 44
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    .line 46
    invoke-virtual {v2}, Ljava/io/DataInputStream;->reset()V

    .line 49
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 51
    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 52
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 54
    if-eqz v3, :cond_2

    .line 56
    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    .line 58
    iget-object v5, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 66
    move-result-object v4

    .line 67
    array-length v4, v4

    .line 68
    if-ne p1, v4, :cond_1

    .line 70
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 73
    move-result v4

    .line 74
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 77
    move-result v3

    .line 78
    if-ne v4, v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 82
    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4, v0, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 91
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 96
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 101
    goto :goto_1

    .line 102
    :catchall_1
    move-exception v3

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    .line 106
    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    .line 108
    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ProcessList$1;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_3

    .line 114
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 116
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 121
    const-string v3, "ActivityManager"

    .line 123
    const-string v4, "Received an unexpected packet from lmkd"

    .line 125
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    .line 131
    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    .line 133
    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ProcessList$1;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_3

    .line 139
    const-string v3, "ActivityManager"

    .line 141
    const-string v4, "Received an unexpected packet from lmkd, replybuf is null"

    .line 143
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    :goto_1
    monitor-exit v2

    .line 147
    goto :goto_4

    .line 148
    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 150
    :catch_1
    const-string v2, "ActivityManager"

    .line 152
    const-string v3, "Failed to parse lmkd data buffer. Size = "

    .line 154
    invoke-static {p1, v3, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    goto :goto_4

    .line 158
    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    throw p0

    .line 160
    :cond_4
    :goto_4
    and-int/lit8 p1, p2, 0x4

    .line 162
    if-eqz p1, :cond_6

    .line 164
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 166
    monitor-enter p1

    .line 167
    :try_start_6
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    .line 169
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 171
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p2, v2}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 178
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 180
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 183
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 185
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 186
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 188
    monitor-enter p2

    .line 189
    :try_start_7
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 191
    if-eqz p1, :cond_5

    .line 193
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 195
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 200
    goto :goto_5

    .line 201
    :catchall_2
    move-exception p0

    .line 202
    goto :goto_6

    .line 203
    :cond_5
    :goto_5
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 204
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    const-string p0, "ActivityManager"

    .line 211
    const-string p1, "Lost connection to lmkd"

    .line 213
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object p0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 218
    const/16 p1, 0xfa1

    .line 220
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 223
    move-result-object p1

    .line 224
    const-wide/16 v1, 0x3e8

    .line 226
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 229
    goto :goto_7

    .line 230
    :goto_6
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 231
    throw p0

    .line 232
    :catchall_3
    move-exception p0

    .line 233
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 234
    throw p0

    .line 235
    :cond_6
    const/4 v0, 0x5

    .line 236
    :goto_7
    return v0
.end method
