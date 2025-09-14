.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;
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
    iput p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/content/ComponentName;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 15
    .line 16
    invoke-static {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monBindingDiedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/content/ComponentName;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroid/os/IBinder;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 29
    .line 30
    invoke-static {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monServiceConnectedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/os/IBinder;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/util/List;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 45
    .line 46
    if-eq v2, v0, :cond_0

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_0
    iget-object v0, v1, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 v2, 0x0

    .line 58
    move v3, v2

    .line 59
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_7

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroid/media/RoutingSessionInfo;

    .line 70
    .line 71
    if-nez v4, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    move v5, v2

    .line 79
    :goto_1
    iget-object v6, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 80
    .line 81
    check-cast v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-ge v5, v6, :cond_3

    .line 88
    .line 89
    iget-object v6, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 90
    .line 91
    check-cast v6, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Landroid/media/RoutingSessionInfo;

    .line 98
    .line 99
    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    const/4 v5, -0x1

    .line 118
    :goto_2
    const-wide/16 v6, 0x0

    .line 119
    .line 120
    if-gez v5, :cond_4

    .line 121
    .line 122
    iget-object v5, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 123
    .line 124
    add-int/lit8 v8, v3, 0x1

    .line 125
    .line 126
    check-cast v5, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v3, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 132
    .line 133
    iget-object v5, v1, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 134
    .line 135
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    new-instance v9, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda4;

    .line 139
    .line 140
    invoke-direct {v9, v5}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-static {v9, v1, v5, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    .line 153
    .line 154
    move v3, v8

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :cond_4
    if-ge v5, v3, :cond_5

    .line 160
    .line 161
    const-string v5, "MR2ProviderSvcProxy"

    .line 162
    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v7, "Ignoring duplicate session ID: "

    .line 169
    .line 170
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_5
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_6

    .line 194
    .line 195
    iget-object v8, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 196
    .line 197
    check-cast v8, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    check-cast v8, Landroid/media/RoutingSessionInfo;

    .line 204
    .line 205
    invoke-virtual {v1, v6, v7, v8, v4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->createSessionWithPopulatedTransferInitiationDataLocked(JLandroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    :cond_6
    iget-object v6, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 210
    .line 211
    check-cast v6, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v6, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object v6, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 217
    .line 218
    add-int/lit8 v7, v3, 0x1

    .line 219
    .line 220
    invoke-static {v6, v5, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 224
    .line 225
    iget-object v5, v1, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 226
    .line 227
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    new-instance v6, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;

    .line 231
    .line 232
    const/4 v8, 0x0

    .line 233
    invoke-direct {v6, v5, v8}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRoute2Provider$Callback;I)V

    .line 234
    .line 235
    .line 236
    invoke-static {v6, v1, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    .line 242
    .line 243
    move v3, v7

    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_7
    iget-object p0, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 247
    .line 248
    check-cast p0, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    add-int/lit8 p0, p0, -0x1

    .line 255
    .line 256
    :goto_3
    if-lt p0, v3, :cond_8

    .line 257
    .line 258
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 259
    .line 260
    check-cast v2, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 267
    .line 268
    iget-object v4, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    check-cast v4, Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    iget-object v4, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 280
    .line 281
    iget-object v5, v1, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 282
    .line 283
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    new-instance v6, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;

    .line 287
    .line 288
    const/4 v7, 0x1

    .line 289
    invoke-direct {v6, v5, v7}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRoute2Provider$Callback;I)V

    .line 290
    .line 291
    .line 292
    invoke-static {v6, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    .line 298
    .line 299
    add-int/lit8 p0, p0, -0x1

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_8
    monitor-exit v0

    .line 303
    :goto_4
    return-void

    .line 304
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    throw p0

    .line 306
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 309
    .line 310
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast p0, Landroid/media/RoutingSessionInfo;

    .line 313
    .line 314
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 315
    .line 316
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 317
    .line 318
    if-eq v2, v0, :cond_9

    .line 319
    .line 320
    goto/16 :goto_7

    .line 321
    .line 322
    :cond_9
    if-nez p0, :cond_a

    .line 323
    .line 324
    const-string p0, "MR2ProviderSvcProxy"

    .line 325
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string/jumbo v2, "onSessionReleased: Ignoring null session sent from "

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v1, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    goto/16 :goto_7

    .line 347
    .line 348
    :cond_a
    invoke-virtual {v1, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    iget-object v0, v1, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 353
    .line 354
    monitor-enter v0

    .line 355
    :try_start_1
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 356
    .line 357
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    check-cast v2, Ljava/util/HashMap;

    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 367
    .line 368
    check-cast v2, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_c

    .line 379
    .line 380
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 385
    .line 386
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    if-eqz v4, :cond_b

    .line 399
    .line 400
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 401
    .line 402
    check-cast v2, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    const/4 v2, 0x1

    .line 408
    goto :goto_6

    .line 409
    :catchall_1
    move-exception p0

    .line 410
    goto :goto_8

    .line 411
    :cond_c
    const/4 v2, 0x0

    .line 412
    :goto_6
    if-nez v2, :cond_e

    .line 413
    .line 414
    iget-object v3, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 415
    .line 416
    check-cast v3, Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-eqz v4, :cond_e

    .line 427
    .line 428
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    check-cast v4, Landroid/media/RoutingSessionInfo;

    .line 433
    .line 434
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    if-eqz v5, :cond_d

    .line 447
    .line 448
    iget-object p0, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 449
    .line 450
    check-cast p0, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    monitor-exit v0

    .line 456
    goto :goto_7

    .line 457
    :cond_e
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    if-nez v2, :cond_f

    .line 459
    .line 460
    const-string p0, "MR2ProviderSvcProxy"

    .line 461
    .line 462
    const-string/jumbo v0, "onSessionReleased: Matching session info not found"

    .line 463
    .line 464
    .line 465
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_f
    iget-object v0, v1, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 470
    .line 471
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 477
    .line 478
    const/4 v3, 0x4

    .line 479
    invoke-direct {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 480
    .line 481
    .line 482
    invoke-static {v2, v0, v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 483
    .line 484
    .line 485
    move-result-object p0

    .line 486
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    .line 488
    .line 489
    :goto_7
    return-void

    .line 490
    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 491
    throw p0

    .line 492
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 495
    .line 496
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast p0, Landroid/media/MediaRoute2ProviderInfo;

    .line 499
    .line 500
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 501
    .line 502
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 503
    .line 504
    if-eq v2, v0, :cond_10

    .line 505
    .line 506
    goto :goto_9

    .line 507
    :cond_10
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 508
    .line 509
    if-eqz v0, :cond_11

    .line 510
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v2, ": updated"

    .line 520
    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    const-string v2, "MR2ProviderSvcProxy"

    .line 529
    .line 530
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    :cond_11
    invoke-virtual {v1, p0}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 537
    .line 538
    .line 539
    :goto_9
    return-void

    .line 540
    nop

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
