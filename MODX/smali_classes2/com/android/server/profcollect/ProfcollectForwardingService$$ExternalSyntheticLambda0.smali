.class public final synthetic Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/profcollect/ProfcollectForwardingService$4;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$4;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 16
    .line 17
    const-string v0, "camera"

    .line 18
    .line 19
    check-cast p0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->trace_once(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Failed to initiate trace: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "ProfcollectForwardingService"

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    check-cast p0, Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 45
    .line 46
    const-string v0, "applaunch"

    .line 47
    .line 48
    check-cast p0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->trace_once(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception p0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "Failed to initiate trace: "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "ProfcollectForwardingService"

    .line 63
    .line 64
    invoke-static {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void

    .line 68
    :pswitch_1
    check-cast p0, Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    :try_start_2
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 74
    .line 75
    const-string v0, "dex2oat"

    .line 76
    .line 77
    check-cast p0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->trace_once(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_2
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "Failed to initiate trace: "

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "ProfcollectForwardingService"

    .line 92
    .line 93
    invoke-static {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void

    .line 97
    :pswitch_2
    check-cast p0, Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 115
    .line 116
    new-instance v2, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    invoke-direct {v2, v3}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    .line 123
    .line 124
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-class v1, Landroid/hardware/camera2/CameraManager;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 142
    .line 143
    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$4;

    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$4;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 146
    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 150
    .line 151
    .line 152
    const-class v0, Lcom/android/server/art/ArtManagerLocal;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/android/server/art/ArtManagerLocal;

    .line 159
    .line 160
    if-nez v0, :cond_0

    .line 161
    .line 162
    const-string p0, "ProfcollectForwardingService"

    .line 163
    .line 164
    const-string v0, "Couldn\'t get ArtManagerLocal"

    .line 165
    .line 166
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_0
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    new-instance v2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;

    .line 176
    .line 177
    invoke-direct {v2, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->setBatchDexoptStartCallback(Ljava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;)V

    .line 181
    .line 182
    .line 183
    :goto_3
    new-instance p0, Landroid/os/UpdateEngine;

    .line 184
    .line 185
    invoke-direct {p0}, Landroid/os/UpdateEngine;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$3;

    .line 189
    .line 190
    invoke-direct {v0}, Landroid/os/UpdateEngineCallback;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_3
    check-cast p0, Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 198
    .line 199
    const-string v0, "ProfcollectForwardingService"

    .line 200
    .line 201
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 207
    .line 208
    iget v3, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I

    .line 209
    .line 210
    check-cast v2, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->report(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v2, ".zip"

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 228
    iget-boolean v2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUploadEnabled:Z

    .line 229
    .line 230
    if-nez v2, :cond_1

    .line 231
    .line 232
    const-string p0, "Upload is not enabled."

    .line 233
    .line 234
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 239
    .line 240
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v2, "com.android.shell"

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v2, "com.android.shell.action.PROFCOLLECT_UPLOAD"

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    const-string v2, "filename"

    .line 256
    .line 257
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catch_3
    move-exception p0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v2, "Failed to create report: "

    .line 273
    .line 274
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {p0, v1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :goto_4
    return-void

    .line 281
    :pswitch_4
    check-cast p0, Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 282
    .line 283
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 284
    .line 285
    const-string v1, "ProfcollectForwardingService"

    .line 286
    .line 287
    const-string v2, "com.android.server.profcollect.IProfCollectd"

    .line 288
    .line 289
    const/4 v3, 0x0

    .line 290
    if-nez v0, :cond_2

    .line 291
    .line 292
    :goto_5
    move v0, v3

    .line 293
    goto :goto_7

    .line 294
    :cond_2
    :try_start_4
    check-cast v0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    .line 295
    .line 296
    iget-object v4, v0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 297
    .line 298
    invoke-static {v4}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 303
    .line 304
    .line 305
    move-result-object v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 306
    :try_start_5
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 310
    .line 311
    const/4 v6, 0x6

    .line 312
    invoke-interface {v0, v6, v4, v5, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 322
    :try_start_6
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    xor-int/lit8 v0, v0, 0x1

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :catch_4
    move-exception v0

    .line 336
    goto :goto_6

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 342
    .line 343
    .line 344
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 345
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v5, "Failed to get supported provider: "

    .line 348
    .line 349
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v0, v4, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :goto_7
    if-eqz v0, :cond_4

    .line 357
    .line 358
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 359
    .line 360
    if-nez v0, :cond_3

    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_3
    :try_start_7
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mProviderStatusCallback:Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    .line 364
    .line 365
    check-cast v0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    .line 366
    .line 367
    iget-object v4, v0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 368
    .line 369
    invoke-static {v4}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 374
    .line 375
    .line 376
    move-result-object v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 377
    :try_start_8
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 381
    .line 382
    .line 383
    iget-object p0, v0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 384
    .line 385
    const/4 v0, 0x7

    .line 386
    invoke-interface {p0, v0, v4, v5, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 390
    .line 391
    .line 392
    :try_start_9
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :catchall_1
    move-exception p0

    .line 400
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 404
    .line 405
    .line 406
    throw p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 407
    :catch_5
    move-exception p0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v2, "Failed to register provider status callback: "

    .line 411
    .line 412
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-static {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    :cond_4
    :goto_8
    return-void

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
