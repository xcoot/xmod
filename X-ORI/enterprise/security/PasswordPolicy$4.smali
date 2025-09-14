.class public final Lcom/android/server/enterprise/security/PasswordPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const/4 v8, 0x2

    .line 41
    const/4 v9, -0x3

    .line 42
    const/4 v10, -0x1

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v2, v10, :cond_f

    .line 52
    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget-object v6, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    if-eq v3, v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1, v9, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 69
    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_1
    :goto_0
    invoke-virtual {v1, v8, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_2
    const-string v7, "android.intent.action.USER_STARTED"

    .line 82
    .line 83
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x3

    .line 89
    const/4 v13, 0x1

    .line 90
    const/4 v14, -0x2

    .line 91
    const/4 v15, -0x4

    .line 92
    const-string v8, "android.intent.extra.user_handle"

    .line 93
    .line 94
    if-eqz v7, :cond_6

    .line 95
    .line 96
    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ltz v1, :cond_f

    .line 101
    .line 102
    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eq v3, v15, :cond_5

    .line 109
    .line 110
    if-eq v3, v9, :cond_4

    .line 111
    .line 112
    if-eq v3, v14, :cond_3

    .line 113
    .line 114
    if-eq v3, v10, :cond_4

    .line 115
    .line 116
    move v8, v11

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move v8, v13

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const/4 v8, 0x2

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    move v8, v12

    .line 123
    :goto_1
    if-eqz v8, :cond_f

    .line 124
    .line 125
    invoke-virtual {v2, v8, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 126
    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_6
    const-string v7, "android.intent.action.USER_SWITCHED"

    .line 131
    .line 132
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_7

    .line 137
    .line 138
    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-ltz v1, :cond_f

    .line 143
    .line 144
    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-lez v3, :cond_f

    .line 155
    .line 156
    if-nez v6, :cond_f

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :cond_7
    const-string v7, "android.intent.action.PHONE_STATE"

    .line 164
    .line 165
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_b

    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_f

    .line 180
    .line 181
    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 182
    .line 183
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eq v2, v15, :cond_a

    .line 188
    .line 189
    if-eq v2, v9, :cond_9

    .line 190
    .line 191
    if-eq v2, v14, :cond_8

    .line 192
    .line 193
    move v8, v11

    .line 194
    goto :goto_2

    .line 195
    :cond_8
    move v8, v13

    .line 196
    goto :goto_2

    .line 197
    :cond_9
    const/4 v8, 0x2

    .line 198
    goto :goto_2

    .line 199
    :cond_a
    move v8, v12

    .line 200
    :goto_2
    if-lez v8, :cond_f

    .line 201
    .line 202
    invoke-virtual {v1, v8, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_b
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_f

    .line 217
    .line 218
    const-string v2, "PasswordPolicy"

    .line 219
    .line 220
    const-string v6, "Received ACTION_PASSWORD_EXPIRING_NOTIFICATION_INTERNAL intent"

    .line 221
    .line 222
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    const-string/jumbo v6, "expiration"

    .line 226
    .line 227
    .line 228
    const-wide/16 v7, -0x1

    .line 229
    .line 230
    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 231
    .line 232
    .line 233
    move-result-wide v9

    .line 234
    cmp-long v1, v9, v7

    .line 235
    .line 236
    if-eqz v1, :cond_e

    .line 237
    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v6

    .line 242
    cmp-long v1, v9, v6

    .line 243
    .line 244
    if-lez v1, :cond_c

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_c
    const-string v1, "Password expired already so launching password screen"

    .line 248
    .line 249
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 253
    .line 254
    iget-object v1, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 255
    .line 256
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_d

    .line 266
    .line 267
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const-string/jumbo v6, "com.android.settings"

    .line 272
    .line 273
    .line 274
    invoke-interface {v1, v6, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :catch_0
    const-string/jumbo v1, "forceStopPackage failed"

    .line 279
    .line 280
    .line 281
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    :cond_d
    :goto_3
    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 285
    .line 286
    invoke-virtual {v1, v11, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_e
    :goto_4
    const-string v1, "In grace period or failed to get "

    .line 291
    .line 292
    invoke-static {v1, v9, v10, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 296
    .line 297
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_f
    :goto_5
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 307
    .line 308
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    .line 315
    .line 316
    :goto_6
    return-void

    .line 317
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_10

    .line 329
    .line 330
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 331
    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->updateSystemUIMonitor$9(I)V

    .line 341
    .line 342
    .line 343
    :cond_10
    return-void

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
