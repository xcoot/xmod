.class public final synthetic Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget p0, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 7
    .line 8
    check-cast p2, Ljava/util/List;

    .line 9
    .line 10
    iget-object p0, p1, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p1, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    .line 18
    .line 19
    if-ge v0, p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/print/IPrinterDiscoveryObserver;

    .line 26
    .line 27
    :try_start_0
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    .line 28
    .line 29
    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v2}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    .line 37
    const-string v2, "UserState"

    .line 38
    .line 39
    const-string v3, "Error sending removed printers"

    .line 40
    .line 41
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 52
    .line 53
    check-cast p2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    const/4 p1, 0x0

    .line 63
    :goto_2
    if-ge p1, p0, :cond_1

    .line 64
    .line 65
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/4 v3, 0x4

    .line 81
    invoke-direct {v2, v3}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    add-int/lit8 p1, p1, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    return-void

    .line 95
    :pswitch_1
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 96
    .line 97
    check-cast p2, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    const/4 v0, 0x0

    .line 107
    :goto_3
    if-ge v0, p0, :cond_2

    .line 108
    .line 109
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v3, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    const/4 v4, 0x1

    .line 125
    invoke-direct {v3, v4}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    .line 134
    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_2
    iget-object p0, p1, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    .line 139
    .line 140
    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_2
    check-cast p1, Lcom/android/server/print/RemotePrintService;

    .line 145
    .line 146
    check-cast p2, Landroid/print/PrinterId;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 156
    .line 157
    const/4 v1, 0x6

    .line 158
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_3
    check-cast p1, Lcom/android/server/print/RemotePrintService;

    .line 170
    .line 171
    check-cast p2, Ljava/util/List;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 181
    .line 182
    const/4 v1, 0x4

    .line 183
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_4
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 195
    .line 196
    check-cast p2, Ljava/util/List;

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState$1;->handleDispatchPrintersAdded(Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_5
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 203
    .line 204
    check-cast p2, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState$1;->handleDispatchPrintersAdded(Ljava/util/List;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_6
    check-cast p1, Lcom/android/server/print/UserState$1;

    .line 211
    .line 212
    check-cast p2, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    const/4 p1, 0x0

    .line 222
    :goto_4
    if-ge p1, p0, :cond_3

    .line 223
    .line 224
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v2, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 238
    .line 239
    const/4 v3, 0x5

    .line 240
    invoke-direct {v2, v3}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    .line 249
    .line 250
    add-int/lit8 p1, p1, 0x1

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_3
    return-void

    .line 254
    :pswitch_7
    check-cast p1, Lcom/android/server/print/UserState;

    .line 255
    .line 256
    check-cast p2, Ljava/util/List;

    .line 257
    .line 258
    iget-object p0, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 259
    .line 260
    monitor-enter p0

    .line 261
    :try_start_1
    iget-object v0, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 262
    .line 263
    if-nez v0, :cond_4

    .line 264
    .line 265
    monitor-exit p0

    .line 266
    goto :goto_7

    .line 267
    :catchall_0
    move-exception p1

    .line 268
    goto :goto_8

    .line 269
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 270
    .line 271
    iget-object v1, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 272
    .line 273
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .line 275
    .line 276
    iput-object p2, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 277
    .line 278
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    const/4 p1, 0x0

    .line 284
    :goto_5
    if-ge p1, p0, :cond_5

    .line 285
    .line 286
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    check-cast p2, Lcom/android/server/print/UserState$3;

    .line 291
    .line 292
    :try_start_2
    iget-object p2, p2, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    .line 293
    .line 294
    check-cast p2, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 295
    .line 296
    invoke-interface {p2}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :catch_1
    move-exception p2

    .line 301
    const-string v1, "UserState"

    .line 302
    .line 303
    const-string v2, "Error notifying for print service recommendations change"

    .line 304
    .line 305
    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .line 307
    .line 308
    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_5
    :goto_7
    return-void

    .line 312
    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    throw p1

    .line 314
    :pswitch_8
    check-cast p1, Lcom/android/server/print/UserState;

    .line 315
    .line 316
    check-cast p2, Landroid/content/ComponentName;

    .line 317
    .line 318
    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
