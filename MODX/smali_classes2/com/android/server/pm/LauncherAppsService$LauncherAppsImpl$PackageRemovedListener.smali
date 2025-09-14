.class public final Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "android.intent.extra.user_handle"

    .line 6
    .line 7
    const/16 v3, -0x2710

    .line 8
    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v4, "LauncherAppsService"

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Intent broadcast does not contain user handle: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v5, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    .line 40
    .line 41
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_7

    .line 46
    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 59
    :goto_0
    const-string v5, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "Calling onPackageRemoved: "

    .line 66
    .line 67
    const-string v7, ", EXTRA_REPLACING: "

    .line 68
    .line 69
    invoke-static {v6, v3, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const-string v8, "android.intent.extra.REPLACING"

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    new-instance v7, Landroid/os/UserHandle;

    .line 99
    .line 100
    invoke-direct {v7, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    :goto_1
    if-ge v9, v2, :cond_6

    .line 112
    .line 113
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 116
    .line 117
    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    .line 122
    .line 123
    iget-object v8, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 124
    .line 125
    iget-object v8, v8, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 126
    .line 127
    invoke-virtual {v8, v9}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    check-cast v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 132
    .line 133
    iget-object v10, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 134
    .line 135
    const-string/jumbo v11, "onPackageRemoved"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v7, v8, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const-string v11, ")"

    .line 143
    .line 144
    const-string v12, "("

    .line 145
    .line 146
    const-string v13, ", listener: "

    .line 147
    .line 148
    const-string v14, ", "

    .line 149
    .line 150
    iget v15, v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    .line 151
    .line 152
    move/from16 p1, v2

    .line 153
    .line 154
    iget v2, v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    .line 155
    .line 156
    iget-object v1, v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    .line 157
    .line 158
    if-nez v10, :cond_2

    .line 159
    .line 160
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v10, "Skip onPackageRemoved(not enabled): "

    .line 166
    .line 167
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v1, v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move/from16 p2, v9

    .line 210
    .line 211
    goto/16 :goto_3

    .line 212
    .line 213
    :catchall_0
    move-exception v0

    .line 214
    move-object/from16 v1, p0

    .line 215
    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :cond_2
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    move/from16 p2, v9

    .line 223
    .line 224
    if-eqz v5, :cond_5

    .line 225
    .line 226
    const/16 v9, 0x2710

    .line 227
    .line 228
    if-ge v10, v9, :cond_3

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_3
    invoke-static {v5, v10}, Ljava/util/Arrays;->binarySearch([II)I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    const/4 v10, -0x1

    .line 236
    if-le v9, v10, :cond_4

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v9, "Skip onPackageRemoved(not allowed): "

    .line 245
    .line 246
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-object v1, v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_5
    :goto_2
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v1, v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 310
    .line 311
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    invoke-interface {v0, v7, v3}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :catch_0
    move-exception v0

    .line 335
    :try_start_3
    const-string v1, "Callback failed "

    .line 336
    .line 337
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    .line 339
    .line 340
    :goto_3
    add-int/lit8 v9, p2, 0x1

    .line 341
    .line 342
    move-object/from16 v1, p0

    .line 343
    .line 344
    move/from16 v2, p1

    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :goto_4
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 349
    .line 350
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 351
    .line 352
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 353
    .line 354
    .line 355
    throw v0

    .line 356
    :cond_6
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 357
    .line 358
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 359
    .line 360
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 361
    .line 362
    .line 363
    :cond_7
    return-void
.end method
