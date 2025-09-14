.class public final Lcom/android/server/location/injector/SystemLocationPermissionsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOps:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mContext:Landroid/content/Context;

.field public final mFreezedUids:Ljava/util/HashSet;

.field public mInited:Z

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

.field public final mPauseReasonByCaller:Ljava/util/Map;

.field public mSLocationConsumer:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/SystemAppOpsHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mAppOps:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/location/injector/LocationPermissionsHelper$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p2, Lcom/android/server/location/injector/SystemAppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_NONE:Landroid/location/LocationConstants$PAUSED_BY;

    .line 15
    .line 16
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne p1, v2, :cond_1

    .line 27
    .line 28
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_2
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 38
    .line 39
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    move v2, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v2, v0

    .line 62
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_CHECK:Landroid/location/LocationConstants$PAUSED_BY;

    .line 78
    .line 79
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return v0

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

    .line 112
    .line 113
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    return v0

    .line 119
    :cond_5
    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iget-object v2, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mAppOps:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 124
    .line 125
    iget-object v3, v2, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 126
    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    move v3, v1

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    move v3, v0

    .line 132
    :goto_2
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    :try_start_1
    iget-object v2, v2, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 140
    .line 141
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v2, p1, v5, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    if-nez p1, :cond_7

    .line 154
    .line 155
    move v0, v1

    .line 156
    :cond_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 162
    .line 163
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    iget-object p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

    .line 188
    .line 189
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 190
    .line 191
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :goto_3
    return v0

    .line 195
    :catchall_0
    move-exception p0

    .line 196
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :catchall_1
    move-exception p0

    .line 201
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    .line 203
    .line 204
    throw p0
.end method
