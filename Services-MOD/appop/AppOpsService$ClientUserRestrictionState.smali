.class public final Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public callingRestriction:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 10
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 8
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 10
    check-cast v1, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->clearUserRestrictions(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 17
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 19
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 21
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final hasRestriction(Ljava/lang/String;IZILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 5
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 9
    iget-object v1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/util/SparseArray;

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 20
    :goto_0
    move p2, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 28
    if-nez v1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 34
    move-result p2

    .line 35
    :goto_1
    if-nez p2, :cond_2

    .line 37
    goto :goto_4

    .line 38
    :cond_2
    iget-object p2, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroid/util/SparseArray;

    .line 46
    if-nez p0, :cond_3

    .line 48
    const/4 p0, 0x0

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroid/os/PackageTagsList;

    .line 56
    :goto_2
    const/4 v2, 0x1

    .line 57
    if-nez p0, :cond_4

    .line 59
    goto :goto_4

    .line 60
    :cond_4
    if-eqz p3, :cond_5

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    .line 65
    move-result p0

    .line 66
    :goto_3
    xor-int/2addr v2, p0

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    invoke-virtual {p0, p1, p5}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    move-result p0

    .line 72
    goto :goto_3

    .line 73
    :goto_4
    return v2
.end method

.method public final removeUser(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 5
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 9
    iget-object v1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/util/SparseArray;

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 22
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 25
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    iget-object v1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 33
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 38
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/util/SparseArray;

    .line 44
    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 49
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 52
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 58
    iget-object p1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    return-void
.end method

.method public final setRestriction(IZLandroid/os/PackageTagsList;I)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    .line 12
    if-nez v0, :cond_1

    .line 14
    iput v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    .line 16
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 18
    if-nez v0, :cond_0

    .line 20
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    :cond_0
    const-string v0, "AppOps"

    .line 26
    const-string/jumbo v2, "setRestriction() :: CallingUid is SS_SHELL_UID"

    .line 29
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 34
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 36
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 38
    check-cast v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 40
    const/4 v2, -0x1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-ne p4, v2, :cond_2

    .line 44
    iget-object p4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 49
    move-result-object p4

    .line 50
    invoke-virtual {p4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 53
    move-result-object p4

    .line 54
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 57
    move-result v2

    .line 58
    new-array v2, v2, [I

    .line 60
    move v4, v3

    .line 61
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 64
    move-result v5

    .line 65
    if-ge v4, v5, :cond_3

    .line 67
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 73
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 75
    aput v5, v2, v4

    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    new-array v2, v1, [I

    .line 85
    aput p4, v2, v3

    .line 87
    :cond_3
    move p4, v3

    .line 88
    move v4, p4

    .line 89
    :goto_1
    array-length v5, v2

    .line 90
    if-ge p4, v5, :cond_10

    .line 92
    aget v5, v2, p4

    .line 94
    if-eqz p2, :cond_6

    .line 96
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 98
    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_4

    .line 104
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 106
    new-instance v7, Landroid/util/SparseArray;

    .line 108
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 111
    invoke-virtual {v6, p0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_4
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 116
    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Landroid/util/SparseArray;

    .line 122
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_5

    .line 131
    new-instance v7, Landroid/util/SparseBooleanArray;

    .line 133
    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 136
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    :cond_5
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 145
    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 148
    move-result v6

    .line 149
    xor-int/2addr v6, v1

    .line 150
    invoke-virtual {v5, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 156
    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Landroid/util/SparseArray;

    .line 162
    if-nez v6, :cond_7

    .line 164
    :goto_2
    move v6, v3

    .line 165
    goto :goto_3

    .line 166
    :cond_7
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 172
    if-nez v7, :cond_8

    .line 174
    goto :goto_2

    .line 175
    :cond_8
    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 178
    move-result v8

    .line 179
    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 182
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    .line 185
    move-result v7

    .line 186
    if-nez v7, :cond_9

    .line 188
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 191
    :cond_9
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 194
    move-result v5

    .line 195
    if-nez v5, :cond_a

    .line 197
    iget-object v5, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 199
    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_a
    move v6, v8

    .line 203
    :goto_3
    or-int/2addr v4, v6

    .line 204
    aget v5, v2, p4

    .line 206
    if-eqz p3, :cond_c

    .line 208
    invoke-virtual {p3}, Landroid/os/PackageTagsList;->isEmpty()Z

    .line 211
    move-result v6

    .line 212
    if-nez v6, :cond_c

    .line 214
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 216
    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 219
    move-result v6

    .line 220
    if-nez v6, :cond_b

    .line 222
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 224
    new-instance v7, Landroid/util/SparseArray;

    .line 226
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 229
    invoke-virtual {v6, p0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_b
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 234
    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-result-object v6

    .line 238
    check-cast v6, Landroid/util/SparseArray;

    .line 240
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v6, v5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    move v7, v1

    .line 247
    goto :goto_5

    .line 248
    :cond_c
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 250
    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-result-object v6

    .line 254
    check-cast v6, Landroid/util/SparseArray;

    .line 256
    if-nez v6, :cond_d

    .line 258
    move v7, v3

    .line 259
    goto :goto_5

    .line 260
    :cond_d
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 263
    move-result-object v7

    .line 264
    if-eqz v7, :cond_e

    .line 266
    move v7, v1

    .line 267
    goto :goto_4

    .line 268
    :cond_e
    move v7, v3

    .line 269
    :goto_4
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 272
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 275
    move-result v5

    .line 276
    if-nez v5, :cond_f

    .line 278
    iget-object v5, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 280
    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_f
    :goto_5
    or-int/2addr v4, v7

    .line 284
    add-int/lit8 p4, p4, 0x1

    .line 286
    goto/16 :goto_1

    .line 288
    :cond_10
    return v4
.end method
