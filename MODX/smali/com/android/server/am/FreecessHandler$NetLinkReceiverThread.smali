.class public final Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 3
    iput-object v0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 5
    const-string v0, "Freecess_NLRCT"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
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
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    const/4 v2, 0x2

    .line 7
    move v3, v1

    .line 8
    :goto_0
    if-lez v2, :cond_7

    .line 10
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 12
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const/4 v4, 0x0

    .line 18
    :try_start_0
    sget v5, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    .line 20
    sget v6, Landroid/system/OsConstants;->AF_NETLINK:I

    .line 22
    sget v7, Landroid/system/OsConstants;->SOCK_DGRAM:I

    .line 24
    invoke-static {v6, v7, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 27
    move-result-object v5

    .line 28
    sget v6, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 30
    sget v7, Landroid/system/OsConstants;->SO_RCVBUF:I

    .line 32
    const/high16 v8, 0x10000

    .line 34
    invoke-static {v5, v6, v7, v8}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 37
    iput-object v5, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 39
    invoke-static {v1, v1}, Landroid/net/util/SocketUtils;->makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;

    .line 42
    move-result-object v6

    .line 43
    invoke-static {v5, v6}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 46
    const/16 v5, 0x9c

    .line 48
    sput v5, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    .line 50
    move v6, v0

    .line 51
    :goto_1
    const/4 v7, 0x4

    .line 52
    if-gt v6, v7, :cond_4

    .line 54
    invoke-static {v0, v6, v1, v1, v1}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    .line 57
    move-result-object v7

    .line 58
    iget-object v8, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 60
    sget v9, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 62
    sget v10, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 64
    const-wide/16 v11, 0x1f4

    .line 66
    invoke-static {v11, v12}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 69
    move-result-object v13

    .line 70
    invoke-static {v8, v9, v10, v13}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 73
    invoke-static {v8, v7, v1, v5}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    .line 76
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    const-string v8, "FreecessController"

    .line 79
    if-gez v7, :cond_1

    .line 81
    :try_start_1
    iget-object v5, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    if-eqz v5, :cond_0

    .line 85
    :try_start_2
    invoke-static {v5}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move-exception v5

    .line 90
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    :cond_0
    :goto_2
    iput-object v4, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 95
    const-string/jumbo v5, "initSendRecvMsgNetLink sendMessage error"

    .line 98
    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_3
    move v3, v1

    .line 102
    goto/16 :goto_6

    .line 104
    :catch_1
    move-exception v5

    .line 105
    goto/16 :goto_4

    .line 107
    :cond_1
    iget-object v7, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 109
    sget v9, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    .line 111
    invoke-static {v7, v9, v11, v12}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    .line 118
    move-result-object v7

    .line 119
    iget v9, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 121
    const/high16 v10, 0x10000000

    .line 123
    if-eq v9, v10, :cond_2

    .line 125
    iput-boolean v0, v3, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    .line 127
    :cond_2
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 129
    if-eqz v9, :cond_3

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string/jumbo v10, "initSendRecvNetlink type:"

    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v10, " mod:"

    .line 149
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 154
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v10, " src_portid:"

    .line 159
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    .line 164
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v10, " dst_portid:"

    .line 169
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    .line 174
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v10, " version:"

    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v10, " target_uid:"

    .line 189
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 194
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    const-string v10, " flag:"

    .line 199
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 204
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v10, " code:"

    .line 209
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    .line 214
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v10, " cmd:"

    .line 219
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    .line 224
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v10, " uid:"

    .line 229
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v7, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    .line 234
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v7

    .line 241
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 244
    :cond_3
    add-int/2addr v6, v0

    .line 245
    goto/16 :goto_1

    .line 247
    :cond_4
    move v3, v0

    .line 248
    goto :goto_6

    .line 249
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    iget-object v5, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 254
    if-eqz v5, :cond_5

    .line 256
    :try_start_4
    invoke-static {v5}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 259
    goto :goto_5

    .line 260
    :catch_2
    move-exception v5

    .line 261
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    :cond_5
    :goto_5
    iput-object v4, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 266
    goto/16 :goto_3

    .line 268
    :goto_6
    if-eqz v3, :cond_6

    .line 270
    goto :goto_7

    .line 271
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 273
    const-wide/16 v4, 0x3e8

    .line 275
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 278
    goto/16 :goto_0

    .line 280
    :catch_3
    move-exception v4

    .line 281
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 284
    goto/16 :goto_0

    .line 286
    :cond_7
    :goto_7
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 288
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 290
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->reportSocketResult(Z)V

    .line 293
    if-eqz v3, :cond_8

    .line 295
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 297
    new-instance v2, Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 299
    invoke-direct {v2, v1}, Lcom/android/server/am/FreecessHandler$FreecessThread;-><init>(I)V

    .line 302
    iput-object v2, v0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 304
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 306
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 308
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 311
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->receiveNetLinkInformationContinously()V

    .line 314
    :cond_8
    return-void
.end method
