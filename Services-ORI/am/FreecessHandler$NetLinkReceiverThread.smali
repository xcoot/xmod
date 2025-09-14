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

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 4
    .line 5
    const-string v0, "Freecess_NLRCT"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
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

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    move v3, v1

    .line 8
    :goto_0
    if-lez v2, :cond_7

    .line 9
    .line 10
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 11
    .line 12
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :try_start_0
    sget v5, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    .line 19
    .line 20
    sget v6, Landroid/system/OsConstants;->AF_NETLINK:I

    .line 21
    .line 22
    sget v7, Landroid/system/OsConstants;->SOCK_DGRAM:I

    .line 23
    .line 24
    invoke-static {v6, v7, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget v6, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 29
    .line 30
    sget v7, Landroid/system/OsConstants;->SO_RCVBUF:I

    .line 31
    .line 32
    const/high16 v8, 0x10000

    .line 33
    .line 34
    invoke-static {v5, v6, v7, v8}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 35
    .line 36
    .line 37
    iput-object v5, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 38
    .line 39
    invoke-static {v1, v1}, Landroid/net/util/SocketUtils;->makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v5, v6}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 44
    .line 45
    .line 46
    const/16 v5, 0x9c

    .line 47
    .line 48
    sput v5, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    .line 49
    .line 50
    move v6, v0

    .line 51
    :goto_1
    const/4 v7, 0x4

    .line 52
    if-gt v6, v7, :cond_4

    .line 53
    .line 54
    invoke-static {v0, v6, v1, v1, v1}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iget-object v8, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 59
    .line 60
    sget v9, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 61
    .line 62
    sget v10, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 63
    .line 64
    const-wide/16 v11, 0x1f4

    .line 65
    .line 66
    invoke-static {v11, v12}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    invoke-static {v8, v9, v10, v13}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v8, v7, v1, v5}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    .line 74
    .line 75
    .line 76
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    const-string v8, "FreecessController"

    .line 78
    .line 79
    if-gez v7, :cond_1

    .line 80
    .line 81
    :try_start_1
    iget-object v5, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    if-eqz v5, :cond_0

    .line 84
    .line 85
    :try_start_2
    invoke-static {v5}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move-exception v5

    .line 90
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :cond_0
    :goto_2
    iput-object v4, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 94
    .line 95
    const-string/jumbo v5, "initSendRecvMsgNetLink sendMessage error"

    .line 96
    .line 97
    .line 98
    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :goto_3
    move v3, v1

    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :catch_1
    move-exception v5

    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_1
    iget-object v7, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 108
    .line 109
    sget v9, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    .line 110
    .line 111
    invoke-static {v7, v9, v11, v12}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iget v9, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 120
    .line 121
    const/high16 v10, 0x10000000

    .line 122
    .line 123
    if-eq v9, v10, :cond_2

    .line 124
    .line 125
    iput-boolean v0, v3, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    .line 126
    .line 127
    :cond_2
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 128
    .line 129
    if-eqz v9, :cond_3

    .line 130
    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string/jumbo v10, "initSendRecvNetlink type:"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    .line 143
    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v10, " mod:"

    .line 148
    .line 149
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 153
    .line 154
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v10, " src_portid:"

    .line 158
    .line 159
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    .line 163
    .line 164
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v10, " dst_portid:"

    .line 168
    .line 169
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    .line 173
    .line 174
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v10, " version:"

    .line 178
    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 183
    .line 184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v10, " target_uid:"

    .line 188
    .line 189
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 193
    .line 194
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v10, " flag:"

    .line 198
    .line 199
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 203
    .line 204
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v10, " code:"

    .line 208
    .line 209
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    .line 213
    .line 214
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v10, " cmd:"

    .line 218
    .line 219
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget v10, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    .line 223
    .line 224
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v10, " uid:"

    .line 228
    .line 229
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget v7, v7, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    .line 233
    .line 234
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 242
    .line 243
    .line 244
    :cond_3
    add-int/2addr v6, v0

    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_4
    move v3, v0

    .line 248
    goto :goto_6

    .line 249
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    iget-object v5, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 253
    .line 254
    if-eqz v5, :cond_5

    .line 255
    .line 256
    :try_start_4
    invoke-static {v5}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :catch_2
    move-exception v5

    .line 261
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    :cond_5
    :goto_5
    iput-object v4, v3, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :goto_6
    if-eqz v3, :cond_6

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 272
    .line 273
    const-wide/16 v4, 0x3e8

    .line 274
    .line 275
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 276
    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :catch_3
    move-exception v4

    .line 281
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_7
    :goto_7
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 287
    .line 288
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 289
    .line 290
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->reportSocketResult(Z)V

    .line 291
    .line 292
    .line 293
    if-eqz v3, :cond_8

    .line 294
    .line 295
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 296
    .line 297
    new-instance v2, Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 298
    .line 299
    invoke-direct {v2, v1}, Lcom/android/server/am/FreecessHandler$FreecessThread;-><init>(I)V

    .line 300
    .line 301
    .line 302
    iput-object v2, v0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 303
    .line 304
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 305
    .line 306
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 307
    .line 308
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 309
    .line 310
    .line 311
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->receiveNetLinkInformationContinously()V

    .line 312
    .line 313
    .line 314
    :cond_8
    return-void
.end method
