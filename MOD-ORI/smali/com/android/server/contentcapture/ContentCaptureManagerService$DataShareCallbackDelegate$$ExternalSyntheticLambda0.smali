.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Landroid/service/contentcapture/IDataShareReadAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;->f$2:Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;->f$3:Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;->f$2:Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;->f$3:Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/16 v3, 0xb

    .line 13
    .line 14
    const/16 v4, 0x9

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    :try_start_0
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 19
    .line 20
    invoke-direct {v7, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 21
    .line 22
    .line 23
    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x400

    .line 29
    .line 30
    :try_start_2
    new-array v2, v2, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 31
    .line 32
    move v8, v6

    .line 33
    :goto_0
    :try_start_3
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    .line 34
    .line 35
    .line 36
    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 37
    const/4 v10, -0x1

    .line 38
    if-ne v9, v10, :cond_2

    .line 39
    .line 40
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 41
    .line 42
    .line 43
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_6
    iget-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 54
    .line 55
    iget-object v6, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 56
    .line 57
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v2, Ljava/util/HashSet;

    .line 62
    .line 63
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    if-eqz v8, :cond_1

    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    .line 84
    .line 85
    :cond_0
    :try_start_7
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 86
    .line 87
    invoke-interface {v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "ContentCaptureManagerService"

    .line 93
    .line 94
    const-string v2, "Failed to call finish() the client operation"

    .line 95
    .line 96
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    :goto_1
    :try_start_8
    invoke-interface {p0}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 100
    .line 101
    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :catch_1
    move-exception p0

    .line 105
    const-string v0, "ContentCaptureManagerService"

    .line 106
    .line 107
    const-string v1, "Failed to call finish() the service operation"

    .line 108
    .line 109
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    goto/16 :goto_8

    .line 113
    .line 114
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 118
    .line 119
    invoke-static {v0, p0, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_8

    .line 123
    .line 124
    :catchall_0
    move-exception p0

    .line 125
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 126
    throw p0

    .line 127
    :catchall_1
    move-exception v1

    .line 128
    move v6, v8

    .line 129
    goto/16 :goto_9

    .line 130
    .line 131
    :catch_2
    move-exception v1

    .line 132
    move v6, v8

    .line 133
    goto :goto_6

    .line 134
    :catchall_2
    move-exception v1

    .line 135
    move v6, v8

    .line 136
    goto :goto_4

    .line 137
    :cond_2
    :try_start_a
    invoke-virtual {v1, v2, v6, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 138
    .line 139
    .line 140
    move v8, v5

    .line 141
    goto :goto_0

    .line 142
    :catchall_3
    move-exception v2

    .line 143
    move v6, v8

    .line 144
    goto :goto_2

    .line 145
    :catchall_4
    move-exception v2

    .line 146
    :goto_2
    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catchall_5
    move-exception v1

    .line 151
    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_3
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 155
    :catchall_6
    move-exception v1

    .line 156
    :goto_4
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :catchall_7
    move-exception v2

    .line 161
    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :goto_5
    throw v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 165
    :catchall_8
    move-exception v1

    .line 166
    goto :goto_9

    .line 167
    :catch_3
    move-exception v1

    .line 168
    :goto_6
    :try_start_f
    const-string v2, "ContentCaptureManagerService"

    .line 169
    .line 170
    const-string v7, "Failed to pipe client and service streams"

    .line 171
    .line 172
    invoke-static {v2, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .line 174
    .line 175
    const/16 v1, 0xa

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 181
    .line 182
    invoke-static {v1, p0, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 188
    .line 189
    monitor-enter v1

    .line 190
    :try_start_10
    iget-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 191
    .line 192
    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 193
    .line 194
    iget-object v7, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 195
    .line 196
    invoke-virtual {v7}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v2, Ljava/util/HashSet;

    .line 201
    .line 202
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 206
    if-eqz v6, :cond_1

    .line 207
    .line 208
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_3

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    .line 221
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    .line 223
    .line 224
    :cond_3
    :try_start_11
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 225
    .line 226
    invoke-interface {v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4

    .line 227
    .line 228
    .line 229
    goto :goto_7

    .line 230
    :catch_4
    move-exception v0

    .line 231
    const-string v1, "ContentCaptureManagerService"

    .line 232
    .line 233
    const-string v2, "Failed to call finish() the client operation"

    .line 234
    .line 235
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .line 237
    .line 238
    :goto_7
    :try_start_12
    invoke-interface {p0}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1

    .line 239
    .line 240
    .line 241
    :goto_8
    return-void

    .line 242
    :catchall_9
    move-exception p0

    .line 243
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 244
    throw p0

    .line 245
    :goto_9
    iget-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 246
    .line 247
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 248
    .line 249
    monitor-enter v2

    .line 250
    :try_start_14
    iget-object v7, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 251
    .line 252
    iget-object v7, v7, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 253
    .line 254
    iget-object v8, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 255
    .line 256
    invoke-virtual {v8}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    check-cast v7, Ljava/util/HashSet;

    .line 261
    .line 262
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 266
    if-eqz v6, :cond_5

    .line 267
    .line 268
    iget-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_4

    .line 275
    .line 276
    invoke-virtual {v0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 277
    .line 278
    .line 279
    iget-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 280
    .line 281
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    .line 283
    .line 284
    :cond_4
    :try_start_15
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 285
    .line 286
    invoke-interface {v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5

    .line 287
    .line 288
    .line 289
    goto :goto_a

    .line 290
    :catch_5
    move-exception v0

    .line 291
    const-string v2, "ContentCaptureManagerService"

    .line 292
    .line 293
    const-string v3, "Failed to call finish() the client operation"

    .line 294
    .line 295
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .line 297
    .line 298
    :goto_a
    :try_start_16
    invoke-interface {p0}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6

    .line 299
    .line 300
    .line 301
    goto :goto_b

    .line 302
    :catch_6
    move-exception p0

    .line 303
    const-string v0, "ContentCaptureManagerService"

    .line 304
    .line 305
    const-string v2, "Failed to call finish() the service operation"

    .line 306
    .line 307
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 315
    .line 316
    invoke-static {v0, p0, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 317
    .line 318
    .line 319
    :goto_b
    throw v1

    .line 320
    :catchall_a
    move-exception p0

    .line 321
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 322
    throw p0
.end method
