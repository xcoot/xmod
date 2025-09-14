.class public final Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_e

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_5

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v0, v2, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x5

    .line 18
    if-eq v0, p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_a

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v0, "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/high16 v0, 0x10000000

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 42
    .line 43
    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_a

    .line 49
    .line 50
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/power/LowPowerStandbyController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 65
    .line 66
    invoke-virtual {v3, p1, v2}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-ne v3, v0, :cond_2

    .line 71
    .line 72
    goto/16 :goto_a

    .line 73
    .line 74
    :cond_2
    if-eqz v3, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    .line 77
    .line 78
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 82
    .line 83
    invoke-static {p0, p1, v2}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_a

    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 94
    .line 95
    invoke-static {p0, p1, v2}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_a

    .line 99
    .line 100
    :cond_4
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 101
    .line 102
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 105
    .line 106
    const-string p1, "android.os.action.LOW_POWER_STANDBY_POLICY_CHANGED"

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_a

    .line 112
    .line 113
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, [I

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const-class p0, Landroid/os/PowerManagerInternal;

    .line 123
    .line 124
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 129
    .line 130
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyAllowlist([I)V

    .line 139
    .line 140
    .line 141
    iget-object p0, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 144
    .line 145
    monitor-enter v2

    .line 146
    :try_start_0
    new-instance p0, Landroid/util/SparseBooleanArray;

    .line 147
    .line 148
    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 149
    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    move v4, v3

    .line 153
    :goto_0
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 154
    .line 155
    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 156
    .line 157
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-ge v4, v5, :cond_7

    .line 162
    .line 163
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 164
    .line 165
    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 166
    .line 167
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-nez v6, :cond_6

    .line 176
    .line 177
    invoke-virtual {p0, v5, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    goto/16 :goto_6

    .line 183
    .line 184
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_7
    move v4, v3

    .line 188
    :goto_2
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-ge v4, v5, :cond_8

    .line 193
    .line 194
    invoke-virtual {p0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 199
    .line 200
    iget-object v6, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 201
    .line 202
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 203
    .line 204
    .line 205
    add-int/lit8 v4, v4, 0x1

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_8
    array-length v4, p1

    .line 209
    move v5, v3

    .line 210
    :goto_3
    if-ge v5, v4, :cond_a

    .line 211
    .line 212
    aget v6, p1, v5

    .line 213
    .line 214
    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 215
    .line 216
    iget-object v7, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 217
    .line 218
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-gez v7, :cond_9

    .line 223
    .line 224
    invoke-virtual {p0, v6, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 225
    .line 226
    .line 227
    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 228
    .line 229
    iget-object v7, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 230
    .line 231
    invoke-virtual {v7, v6, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 232
    .line 233
    .line 234
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_a
    iget-object p1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 238
    .line 239
    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 240
    .line 241
    if-nez p1, :cond_b

    .line 242
    .line 243
    monitor-exit v2

    .line 244
    goto/16 :goto_a

    .line 245
    .line 246
    :cond_b
    iget-object p1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 247
    .line 248
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 249
    .line 250
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :try_start_1
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 252
    .line 253
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 254
    .line 255
    if-nez v1, :cond_c

    .line 256
    .line 257
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    goto/16 :goto_a

    .line 260
    .line 261
    :catchall_1
    move-exception p0

    .line 262
    goto :goto_5

    .line 263
    :cond_c
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-ge v3, p1, :cond_d

    .line 269
    .line 270
    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 275
    .line 276
    const/4 v4, -0x1

    .line 277
    invoke-virtual {v1, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 281
    .line 282
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    .line 283
    .line 284
    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_d
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    goto/16 :goto_a

    .line 290
    .line 291
    :goto_5
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 292
    :try_start_6
    throw p0

    .line 293
    :goto_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 294
    throw p0

    .line 295
    :cond_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast p1, Ljava/lang/Boolean;

    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 304
    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    const-class p0, Landroid/os/PowerManagerInternal;

    .line 309
    .line 310
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 315
    .line 316
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 317
    .line 318
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 323
    .line 324
    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyActive(Z)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    const-string/jumbo p0, "setLowPowerStandbyActive"

    .line 331
    .line 332
    .line 333
    const-wide/32 v1, 0x200000

    .line 334
    .line 335
    .line 336
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :try_start_7
    iget-object p0, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 340
    .line 341
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 342
    .line 343
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 344
    :try_start_8
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 345
    .line 346
    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 347
    .line 348
    if-ne v3, p1, :cond_f

    .line 349
    .line 350
    monitor-exit p0

    .line 351
    goto :goto_7

    .line 352
    :catchall_2
    move-exception p1

    .line 353
    goto :goto_9

    .line 354
    :cond_f
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 355
    .line 356
    iput-boolean p1, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 357
    .line 358
    iget-object p1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 359
    .line 360
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 361
    .line 362
    monitor-enter p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 363
    :try_start_9
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 364
    .line 365
    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 366
    .line 367
    if-nez v3, :cond_10

    .line 368
    .line 369
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 370
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 371
    goto :goto_7

    .line 372
    :catchall_3
    move-exception v0

    .line 373
    goto :goto_8

    .line 374
    :cond_10
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 375
    :try_start_c
    iget-object p1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 376
    .line 377
    const-string/jumbo v3, "updateRulesForRestrictPower"

    .line 378
    .line 379
    .line 380
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    .line 381
    .line 382
    const/4 v5, 0x4

    .line 383
    invoke-direct {v4, v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 387
    .line 388
    .line 389
    iget-object p1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForLowPowerStandbyUL()V

    .line 392
    .line 393
    .line 394
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 395
    :goto_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 396
    .line 397
    .line 398
    goto :goto_a

    .line 399
    :goto_8
    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 400
    :try_start_e
    throw v0

    .line 401
    :goto_9
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 402
    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 403
    :catchall_4
    move-exception p0

    .line 404
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 405
    .line 406
    .line 407
    throw p0

    .line 408
    :cond_11
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 409
    .line 410
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 411
    .line 412
    monitor-enter p1

    .line 413
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 414
    .line 415
    .line 416
    monitor-exit p1

    .line 417
    :goto_a
    return-void

    .line 418
    :catchall_5
    move-exception p0

    .line 419
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 420
    throw p0
.end method
