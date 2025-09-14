.class public final Lcom/android/server/vr/VrManagerService$NotificationAccessManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowedPackages:Landroid/util/SparseArray;

.field public final mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    .line 12
    .line 13
    new-instance p1, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Collection;)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/util/ArraySet;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    sub-int/2addr v2, v3

    .line 28
    :goto_0
    const/4 v4, 0x0

    .line 29
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 30
    .line 31
    if-ltz v2, :cond_2

    .line 32
    .line 33
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eq v6, v0, :cond_1

    .line 46
    .line 47
    iget-object v7, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v5, v7, v6}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iget-object v8, v5, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-class v9, Landroid/app/NotificationManager;

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Landroid/app/NotificationManager;

    .line 67
    .line 68
    invoke-virtual {v8, v7}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v7, v4}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v7, v6}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Ljava/lang/String;

    .line 100
    .line 101
    move-object v7, p1

    .line 102
    check-cast v7, Landroid/util/ArraySet;

    .line 103
    .line 104
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_3

    .line 109
    .line 110
    invoke-static {v5, v6, v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    iget-object v7, v5, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    const-class v8, Landroid/app/NotificationManager;

    .line 116
    .line 117
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Landroid/app/NotificationManager;

    .line 122
    .line 123
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v6, v4}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    invoke-static {v5, v6, v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    iget-object v7, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    move-object v2, p1

    .line 139
    check-cast v2, Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_9

    .line 150
    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-nez v6, :cond_5

    .line 162
    .line 163
    iget-object v6, v5, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    const-class v7, Landroid/app/NotificationManager;

    .line 166
    .line 167
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Landroid/app/NotificationManager;

    .line 172
    .line 173
    invoke-virtual {v6, v4, v3}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    iget-object v6, v5, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    const-class v7, Landroid/app/NotificationManager;

    .line 179
    .line 180
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    check-cast v6, Landroid/app/NotificationManager;

    .line 185
    .line 186
    iget-object v7, v5, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    const-string v8, "android.service.notification.NotificationListenerService"

    .line 193
    .line 194
    const-string v9, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 195
    .line 196
    invoke-static {v7, v0, v8, v9}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    const-string v9, "VrManagerService"

    .line 209
    .line 210
    if-eqz v8, :cond_7

    .line 211
    .line 212
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    check-cast v8, Landroid/content/ComponentName;

    .line 217
    .line 218
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-static {v10, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-eqz v10, :cond_6

    .line 227
    .line 228
    :try_start_0
    invoke-virtual {v6, v8, v0, v3}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :catch_0
    move-exception v8

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v11, "Could not grant NLS access to package "

    .line 236
    .line 237
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-static {v9, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_7
    iget-object v6, v5, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 252
    .line 253
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    new-instance v7, Landroid/os/UserHandle;

    .line 258
    .line 259
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 260
    .line 261
    .line 262
    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    .line 263
    .line 264
    invoke-virtual {v6, v8, v4, v7}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    and-int/lit8 v6, v6, 0x3

    .line 269
    .line 270
    if-eqz v6, :cond_8

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_8
    :try_start_1
    iget-object v6, v5, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    new-instance v7, Landroid/os/UserHandle;

    .line 280
    .line 281
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v4, v8, v7}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :catch_1
    const-string v6, "Could not grant coarse location permission, package "

    .line 289
    .line 290
    const-string v7, " was removed."

    .line 291
    .line 292
    invoke-static {v6, v4, v7, v9}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :goto_4
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    .line 296
    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_9
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 310
    .line 311
    .line 312
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    .line 313
    .line 314
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    return-void
.end method
