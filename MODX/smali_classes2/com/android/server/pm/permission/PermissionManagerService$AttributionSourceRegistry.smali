.class public final Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAttributions:Ljava/util/WeakHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mAttributions:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mAttributions:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/content/AttributionSource;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/AttributionSource;->equalsExceptToken(Landroid/content/AttributionSource;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final registerAttributionSource(Landroid/content/AttributionSource;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-class v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-ne v1, v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    :cond_3
    :goto_1
    if-eq v1, v0, :cond_5

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    .line 68
    .line 69
    const/4 v4, -0x1

    .line 70
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 78
    .line 79
    const-string p1, "Cannot register attribution source for uid:"

    .line 80
    .line 81
    const-string v2, " from uid:"

    .line 82
    .line 83
    invoke-static {v1, v0, p1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_5
    :goto_2
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 98
    .line 99
    const/16 v3, 0x3e8

    .line 100
    .line 101
    if-ne v0, v3, :cond_6

    .line 102
    .line 103
    move v3, v1

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    move v3, v0

    .line 106
    :goto_3
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-wide/16 v5, 0x0

    .line 115
    .line 116
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-ne v2, v1, :cond_9

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v1, "Cannot register forged attribution source:"

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0

    .line 161
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mLock:Ljava/lang/Object;

    .line 162
    .line 163
    monitor-enter v1

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mAttributions:Ljava/util/WeakHashMap;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p1}, Landroid/content/AttributionSource;->withDefaultToken()Landroid/content/AttributionSource;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p0, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    throw p0

    .line 182
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v2, "Cannot register attribution source for package:"

    .line 187
    .line 188
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string p1, " from uid:"

    .line 199
    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0
.end method
