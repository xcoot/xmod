.class public final Lcom/android/server/trust/TrustManagerService$2$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/trust/TrustManagerService$2;

.field public final synthetic val$fout:Ljava/io/PrintWriter;

.field public final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService$2;Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$2$1;->val$fout:Ljava/io/PrintWriter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/trust/TrustManagerService$2$1;->val$userInfos:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService$2$1;->val$fout:Ljava/io/PrintWriter;

    .line 4
    .line 5
    const-string v2, "Trust manager state:"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService$2$1;->val$userInfos:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_19

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 27
    .line 28
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService$2$1;->val$fout:Ljava/io/PrintWriter;

    .line 31
    .line 32
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 33
    .line 34
    iget-object v6, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 35
    .line 36
    iget v6, v6, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    if-ne v5, v6, :cond_0

    .line 40
    .line 41
    move v6, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v6, 0x0

    .line 44
    :goto_1
    iget-object v9, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iget v10, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 51
    .line 52
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    filled-new-array {v9, v5, v10}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v9, " User \"%s\" (id=%d, flags=%#x)"

    .line 61
    .line 62
    invoke-virtual {v4, v9, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_3

    .line 70
    .line 71
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 72
    .line 73
    iget-object v5, v5, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    .line 75
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    const-string v5, " (profile with unified challenge)"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 89
    .line 90
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v3, v2}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 102
    .line 103
    iget-object v5, v5, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 104
    .line 105
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 106
    .line 107
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_2

    .line 112
    .line 113
    const-string v5, " (profile with separate challenge)"

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 119
    .line 120
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 121
    .line 122
    invoke-virtual {v3, v2}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    const-string v5, " (user that cannot be switched to)"

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 133
    .line 134
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 135
    .line 136
    invoke-virtual {v3, v2}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    :goto_2
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService$2;->dumpBool(Z)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v3, ": deviceLocked="

    .line 145
    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v2, "   Trust agents disabled because switching to this user is not possible."

    .line 154
    .line 155
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_3
    if-eqz v6, :cond_4

    .line 161
    .line 162
    const-string v5, " (current)"

    .line 163
    .line 164
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v6, ": trustState="

    .line 170
    .line 171
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v6, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 175
    .line 176
    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    .line 177
    .line 178
    invoke-virtual {v6, v9}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 193
    .line 194
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService$2;->dumpBool(Z)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    const-string v6, ", trustManaged="

    .line 205
    .line 206
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 214
    .line 215
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 216
    .line 217
    invoke-virtual {v5, v6}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService$2;->dumpBool(Z)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const-string v6, ", deviceLocked="

    .line 226
    .line 227
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 235
    .line 236
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 237
    .line 238
    invoke-virtual {v5, v6}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService$2;->dumpBool(Z)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    const-string v6, ", isActiveUnlockRunning="

    .line 247
    .line 248
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v6, ", strongAuthRequired="

    .line 258
    .line 259
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v6, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 263
    .line 264
    iget-object v6, v6, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 265
    .line 266
    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    .line 267
    .line 268
    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v10, "0x"

    .line 275
    .line 276
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 301
    .line 302
    .line 303
    const-string v5, "   Enabled agents:"

    .line 304
    .line 305
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    new-instance v5, Landroid/util/ArraySet;

    .line 309
    .line 310
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 311
    .line 312
    .line 313
    iget-object v6, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 314
    .line 315
    iget-object v6, v6, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 316
    .line 317
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    const/4 v9, 0x0

    .line 322
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    const/16 v11, 0x2e

    .line 327
    .line 328
    const-string v12, ", managingTrust="

    .line 329
    .line 330
    const-string v13, "    "

    .line 331
    .line 332
    if-eqz v10, :cond_b

    .line 333
    .line 334
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    check-cast v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 339
    .line 340
    iget v14, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 341
    .line 342
    iget v15, v2, Landroid/content/pm/UserInfo;->id:I

    .line 343
    .line 344
    if-eq v14, v15, :cond_6

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_6
    iget-object v14, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 348
    .line 349
    invoke-virtual {v14}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 357
    .line 358
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v13

    .line 362
    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 366
    .line 367
    iget-boolean v13, v13, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 368
    .line 369
    invoke-static {v13}, Lcom/android/server/trust/TrustManagerService$2;->dumpBool(Z)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v13

    .line 373
    const-string v15, "     bound="

    .line 374
    .line 375
    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v13

    .line 379
    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 383
    .line 384
    iget-object v13, v13, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 385
    .line 386
    if-eqz v13, :cond_7

    .line 387
    .line 388
    move v13, v8

    .line 389
    goto :goto_4

    .line 390
    :cond_7
    const/4 v13, 0x0

    .line 391
    :goto_4
    invoke-static {v13}, Lcom/android/server/trust/TrustManagerService$2;->dumpBool(Z)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v13

    .line 395
    const-string v15, ", connected="

    .line 396
    .line 397
    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v13

    .line 401
    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 405
    .line 406
    invoke-virtual {v13}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    .line 407
    .line 408
    .line 409
    move-result v13

    .line 410
    invoke-static {v13}, Lcom/android/server/trust/TrustManagerService$2;->dumpBool(Z)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v12

    .line 418
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v14}, Lcom/android/server/trust/TrustManagerService$2;->dumpBool(Z)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    const-string v13, ", trusted="

    .line 426
    .line 427
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v12

    .line 431
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 435
    .line 436
    .line 437
    if-eqz v14, :cond_8

    .line 438
    .line 439
    new-instance v12, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    const-string v13, "      message=\""

    .line 442
    .line 443
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 447
    .line 448
    iget-object v13, v13, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    .line 449
    .line 450
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v13, "\""

    .line 454
    .line 455
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_8
    iget-object v12, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 466
    .line 467
    iget-object v13, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 468
    .line 469
    if-eqz v13, :cond_9

    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_9
    iget-wide v12, v12, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    .line 473
    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 475
    .line 476
    .line 477
    move-result-wide v14

    .line 478
    sub-long/2addr v12, v14

    .line 479
    new-instance v14, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-static {v12, v13, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v12

    .line 491
    const-string v13, "      restartScheduledAt="

    .line 492
    .line 493
    invoke-static {v4, v13, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    :goto_5
    iget-object v10, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 497
    .line 498
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    .line 503
    .line 504
    .line 505
    move-result v11

    .line 506
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 507
    .line 508
    .line 509
    move-result v12

    .line 510
    if-ge v11, v12, :cond_a

    .line 511
    .line 512
    if-ltz v11, :cond_a

    .line 513
    .line 514
    add-int/lit8 v11, v11, 0x1

    .line 515
    .line 516
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v10

    .line 520
    :cond_a
    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v10

    .line 524
    if-nez v10, :cond_5

    .line 525
    .line 526
    move v9, v8

    .line 527
    goto/16 :goto_3

    .line 528
    .line 529
    :cond_b
    const-string v5, "   Events:"

    .line 530
    .line 531
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 535
    .line 536
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 537
    .line 538
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 539
    .line 540
    iget-object v3, v3, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    .line 541
    .line 542
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    const/4 v5, 0x0

    .line 547
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    if-eqz v6, :cond_18

    .line 552
    .line 553
    const/16 v6, 0x32

    .line 554
    .line 555
    if-ge v5, v6, :cond_18

    .line 556
    .line 557
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    check-cast v6, Lcom/android/server/trust/TrustArchive$Event;

    .line 562
    .line 563
    const/4 v8, -0x1

    .line 564
    if-eq v2, v8, :cond_c

    .line 565
    .line 566
    iget v10, v6, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    .line 567
    .line 568
    if-eq v2, v10, :cond_c

    .line 569
    .line 570
    if-eq v10, v8, :cond_c

    .line 571
    .line 572
    goto :goto_6

    .line 573
    :cond_c
    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 577
    .line 578
    .line 579
    move-result-object v10

    .line 580
    iget-wide v14, v6, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    .line 581
    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 583
    .line 584
    .line 585
    move-result-wide v16

    .line 586
    sub-long v14, v14, v16

    .line 587
    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 589
    .line 590
    .line 591
    move-result-wide v16

    .line 592
    add-long v16, v16, v14

    .line 593
    .line 594
    invoke-static/range {v16 .. v17}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v14

    .line 598
    iget v15, v6, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 599
    .line 600
    packed-switch v15, :pswitch_data_0

    .line 601
    .line 602
    .line 603
    const-string v7, "Unknown("

    .line 604
    .line 605
    const-string v11, ")"

    .line 606
    .line 607
    invoke-static {v15, v7, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v7

    .line 611
    goto :goto_7

    .line 612
    :pswitch_0
    const-string v7, "DevicePolicyChanged"

    .line 613
    .line 614
    goto :goto_7

    .line 615
    :pswitch_1
    const-string v7, "ManagingTrust"

    .line 616
    .line 617
    goto :goto_7

    .line 618
    :pswitch_2
    const-string v7, "AgentStopped"

    .line 619
    .line 620
    goto :goto_7

    .line 621
    :pswitch_3
    const-string v7, "AgentConnected"

    .line 622
    .line 623
    goto :goto_7

    .line 624
    :pswitch_4
    const-string v7, "AgentDied"

    .line 625
    .line 626
    goto :goto_7

    .line 627
    :pswitch_5
    const-string v7, "TrustTimeout"

    .line 628
    .line 629
    goto :goto_7

    .line 630
    :pswitch_6
    const-string v7, "RevokeTrust"

    .line 631
    .line 632
    goto :goto_7

    .line 633
    :pswitch_7
    const-string v7, "GrantTrust"

    .line 634
    .line 635
    :goto_7
    filled-new-array {v10, v14, v7}, [Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v7

    .line 639
    const-string v10, "#%-2d %s %s: "

    .line 640
    .line 641
    invoke-virtual {v4, v10, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 642
    .line 643
    .line 644
    if-ne v2, v8, :cond_d

    .line 645
    .line 646
    const-string/jumbo v7, "user="

    .line 647
    .line 648
    .line 649
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    iget v7, v6, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    .line 653
    .line 654
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 655
    .line 656
    .line 657
    const-string v7, ", "

    .line 658
    .line 659
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    :cond_d
    iget-object v7, v6, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    .line 663
    .line 664
    if-eqz v7, :cond_e

    .line 665
    .line 666
    const-string v7, "agent="

    .line 667
    .line 668
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    if-eqz v9, :cond_f

    .line 672
    .line 673
    iget-object v7, v6, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    .line 674
    .line 675
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v7

    .line 679
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    :cond_e
    const/16 v8, 0x2e

    .line 683
    .line 684
    goto :goto_8

    .line 685
    :cond_f
    iget-object v7, v6, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    .line 686
    .line 687
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v7

    .line 691
    const/16 v8, 0x2e

    .line 692
    .line 693
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 694
    .line 695
    .line 696
    move-result v10

    .line 697
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 698
    .line 699
    .line 700
    move-result v11

    .line 701
    if-ge v10, v11, :cond_10

    .line 702
    .line 703
    if-ltz v10, :cond_10

    .line 704
    .line 705
    add-int/lit8 v10, v10, 0x1

    .line 706
    .line 707
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v7

    .line 711
    :cond_10
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    :goto_8
    if-eqz v15, :cond_12

    .line 715
    .line 716
    const/4 v7, 0x6

    .line 717
    if-eq v15, v7, :cond_11

    .line 718
    .line 719
    goto :goto_9

    .line 720
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    iget-boolean v6, v6, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    .line 726
    .line 727
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v6

    .line 734
    const/4 v7, 0x0

    .line 735
    new-array v10, v7, [Ljava/lang/Object;

    .line 736
    .line 737
    invoke-virtual {v4, v6, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 738
    .line 739
    .line 740
    goto :goto_9

    .line 741
    :cond_12
    const/4 v7, 0x0

    .line 742
    new-instance v10, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .line 746
    .line 747
    iget-wide v14, v6, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 748
    .line 749
    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v10

    .line 756
    new-instance v11, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .line 760
    .line 761
    iget v14, v6, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    .line 762
    .line 763
    and-int/lit8 v15, v14, 0x1

    .line 764
    .line 765
    const/16 v7, 0x7c

    .line 766
    .line 767
    if-eqz v15, :cond_14

    .line 768
    .line 769
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 770
    .line 771
    .line 772
    move-result v15

    .line 773
    if-eqz v15, :cond_13

    .line 774
    .line 775
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    :cond_13
    const-string v15, "INITIATED_BY_USER"

    .line 779
    .line 780
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    :cond_14
    and-int/lit8 v14, v14, 0x2

    .line 784
    .line 785
    if-eqz v14, :cond_16

    .line 786
    .line 787
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 788
    .line 789
    .line 790
    move-result v14

    .line 791
    if-eqz v14, :cond_15

    .line 792
    .line 793
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    :cond_15
    const-string v7, "DISMISS_KEYGUARD"

    .line 797
    .line 798
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    :cond_16
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 802
    .line 803
    .line 804
    move-result v7

    .line 805
    if-nez v7, :cond_17

    .line 806
    .line 807
    const/16 v7, 0x30

    .line 808
    .line 809
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    :cond_17
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v7

    .line 816
    iget-object v6, v6, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    .line 817
    .line 818
    filled-new-array {v6, v10, v7}, [Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v6

    .line 822
    const-string v7, ", message=\"%s\", duration=%s, flags=%s"

    .line 823
    .line 824
    invoke-virtual {v4, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 825
    .line 826
    .line 827
    :goto_9
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 828
    .line 829
    .line 830
    add-int/lit8 v5, v5, 0x1

    .line 831
    .line 832
    move v11, v8

    .line 833
    goto/16 :goto_6

    .line 834
    .line 835
    :cond_18
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_0

    .line 839
    .line 840
    :cond_19
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    .line 841
    .line 842
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 843
    .line 844
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 845
    .line 846
    if-eqz v1, :cond_1a

    .line 847
    .line 848
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$2$1;->val$fout:Ljava/io/PrintWriter;

    .line 849
    .line 850
    invoke-virtual {v1, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->dump(Ljava/io/PrintWriter;)V

    .line 851
    .line 852
    .line 853
    :cond_1a
    return-void

    .line 854
    nop

    .line 855
    :pswitch_data_0
    .packed-switch 0x0
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
