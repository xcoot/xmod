.class public final Lcom/android/server/pm/PackageInstallerSession$6;
.super Landroid/content/pm/IDataLoaderStatusListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$addedFiles:Ljava/util/List;

.field public final synthetic val$manualStartAndDestroy:Z

.field public final synthetic val$params:Landroid/content/pm/DataLoaderParams;

.field public final synthetic val$removedFiles:Ljava/util/List;

.field public final synthetic val$systemDataLoader:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$systemDataLoader:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onStatusChanged(II)V
    .locals 6

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_6

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-eq p2, v1, :cond_6

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 10
    .line 11
    iget-boolean v2, v2, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 12
    .line 13
    if-nez v2, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 16
    .line 17
    iget-boolean v2, v2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    const/4 v2, -0x1

    .line 24
    const/16 v3, -0x14

    .line 25
    .line 26
    packed-switch p2, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    goto/16 :goto_3

    .line 30
    .line 31
    :pswitch_1
    :try_start_0
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 32
    .line 33
    const-string p2, "DataLoader reported unrecoverable failure."

    .line 34
    .line 35
    invoke-direct {p1, v3, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :catch_1
    move-exception p1

    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 46
    .line 47
    iget-object p2, p1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 54
    .line 55
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 56
    .line 57
    const-string v4, "DataLoader unavailable"

    .line 58
    .line 59
    invoke-static {v3, p2, p1, v4}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :pswitch_3
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 65
    .line 66
    iput-boolean v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 67
    .line 68
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 69
    .line 70
    const-string v4, "Failed to prepare image."

    .line 71
    .line 72
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {p2, v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 79
    .line 80
    .line 81
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    .line 82
    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 86
    .line 87
    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :pswitch_4
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 97
    .line 98
    iput-boolean v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_1

    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 109
    .line 110
    iget-object v3, p2, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    check-cast v3, Lcom/android/server/pm/PackageInstallerService;

    .line 117
    .line 118
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 133
    .line 134
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 135
    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 141
    .line 142
    .line 143
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    .line 144
    .line 145
    if-eqz p2, :cond_2

    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 148
    .line 149
    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :pswitch_5
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 159
    .line 160
    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    new-array v4, v4, [Landroid/content/pm/InstallationFileParcel;

    .line 171
    .line 172
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, [Landroid/content/pm/InstallationFileParcel;

    .line 177
    .line 178
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    new-array v5, v5, [Ljava/lang/String;

    .line 185
    .line 186
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, [Ljava/lang/String;

    .line 191
    .line 192
    invoke-interface {p2, p1, v3, v4}, Landroid/content/pm/IDataLoader;->prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :pswitch_6
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    .line 197
    .line 198
    if-eqz p2, :cond_2

    .line 199
    .line 200
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 201
    .line 202
    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->start(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :pswitch_7
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    .line 211
    .line 212
    if-eqz p2, :cond_2

    .line 213
    .line 214
    new-instance p2, Landroid/content/pm/FileSystemControlParcel;

    .line 215
    .line 216
    invoke-direct {p2}, Landroid/content/pm/FileSystemControlParcel;-><init>()V

    .line 217
    .line 218
    .line 219
    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;

    .line 220
    .line 221
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 222
    .line 223
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    .line 224
    .line 225
    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    iput-object v3, p2, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    .line 229
    .line 230
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 231
    .line 232
    invoke-static {v3, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    .line 237
    .line 238
    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-interface {v3, p1, v4, p2, p0}, Landroid/content/pm/IDataLoader;->create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :goto_1
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 247
    .line 248
    iget-object v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 255
    .line 256
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 257
    .line 258
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-static {p0, v0, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :goto_2
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 267
    .line 268
    iput-boolean v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 271
    .line 272
    iget p2, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 273
    .line 274
    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 279
    .line 280
    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    .line 286
    .line 287
    :cond_2
    :goto_3
    return-void

    .line 288
    :cond_3
    :goto_4
    const/16 p1, 0x9

    .line 289
    .line 290
    if-eq p2, p1, :cond_4

    .line 291
    .line 292
    return-void

    .line 293
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$systemDataLoader:Z

    .line 294
    .line 295
    if-eqz p1, :cond_6

    .line 296
    .line 297
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    if-eqz p2, :cond_5

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_5
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 311
    .line 312
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;

    .line 313
    .line 314
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    .line 319
    .line 320
    :cond_6
    :goto_5
    return-void

    .line 321
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
