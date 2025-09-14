.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 39
    .line 40
    iget-object v6, v5, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const-string v4, "Error handling package changes"

    .line 62
    .line 63
    const-wide/16 v5, 0x0

    .line 64
    .line 65
    const-string v7, "DevicePolicyEngine"

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    iget-object v8, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    :cond_3
    iget-object v8, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 86
    .line 87
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-interface {v9, v8, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget-object v1, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 103
    .line 104
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const-string v1, "Admin package %s not found for user %d, removing admin policies"

    .line 109
    .line 110
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v7, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :catch_0
    move-exception v3

    .line 123
    invoke-static {v7, v4, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    if-eqz p0, :cond_d

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_8

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 148
    .line 149
    const-string/jumbo v8, "enterprise"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v8}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_7

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_7
    iget-object v3, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 168
    .line 169
    invoke-virtual {v3, v1, p0}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_8
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 174
    .line 175
    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyKeysSetByAllAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_d

    .line 188
    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 194
    .line 195
    instance-of v8, v3, Landroid/app/admin/IntentFilterPolicyKey;

    .line 196
    .line 197
    if-eqz v8, :cond_c

    .line 198
    .line 199
    check-cast v3, Landroid/app/admin/IntentFilterPolicyKey;

    .line 200
    .line 201
    invoke-virtual {v3}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    invoke-static {v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v0, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    :cond_a
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    if-eqz v11, :cond_9

    .line 233
    .line 234
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    check-cast v11, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 239
    .line 240
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    check-cast v12, Landroid/app/admin/PolicyValue;

    .line 245
    .line 246
    invoke-virtual {v12}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    if-eqz v12, :cond_a

    .line 251
    .line 252
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Landroid/app/admin/PolicyValue;

    .line 257
    .line 258
    invoke-virtual {v12}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    check-cast v12, Landroid/content/ComponentName;

    .line 263
    .line 264
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    if-eqz v12, :cond_a

    .line 273
    .line 274
    :try_start_1
    invoke-interface {v9, p0, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    if-eqz v12, :cond_b

    .line 279
    .line 280
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    check-cast v12, Landroid/app/admin/PolicyValue;

    .line 285
    .line 286
    invoke-virtual {v12}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    check-cast v12, Landroid/content/ComponentName;

    .line 291
    .line 292
    invoke-interface {v9, v12, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    if-nez v12, :cond_a

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :catch_1
    move-exception v11

    .line 300
    goto :goto_4

    .line 301
    :cond_b
    :goto_3
    const-string v12, "Persistent preferred activity in package %s not found for user %d, removing policy for admin"

    .line 302
    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    filled-new-array {p0, v13}, [Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    invoke-static {v7, v12}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v3, v11, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :goto_4
    invoke-static {v7, v4, v11}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 327
    .line 328
    const-string v0, "PolicyKey for PERSISTENT_PREFERRED_ACTIVITY is not of type IntentFilterPolicyKey"

    .line 329
    .line 330
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p0

    .line 334
    :cond_d
    :goto_5
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 336
    .line 337
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v1, Landroid/content/Intent;

    .line 340
    .line 341
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$2:I

    .line 342
    .line 343
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast p0, Landroid/os/Bundle;

    .line 346
    .line 347
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 348
    .line 349
    new-instance v3, Landroid/os/UserHandle;

    .line 350
    .line 351
    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 352
    .line 353
    .line 354
    const/4 v2, 0x0

    .line 355
    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
