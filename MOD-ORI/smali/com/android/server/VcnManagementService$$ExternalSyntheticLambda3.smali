.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/VcnManagementService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/VcnManagementService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "Failed to read configs from disk; retrying"

    .line 15
    .line 16
    const-string v2, "VcnManagementService"

    .line 17
    .line 18
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "[ERR ] [VcnManagementService] Failed to read configs from disk; retrying"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :goto_0
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const-string v1, "COLLECTION_LENGTH"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    :goto_1
    if-ge v3, v1, :cond_0

    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v5, "MAP_KEY_%d"

    .line 71
    .line 72
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string v6, "MAP_VALUE_%d"

    .line 85
    .line 86
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const-string v6, "PARCEL_UUID"

    .line 99
    .line 100
    invoke-virtual {v4, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-instance v6, Landroid/net/vcn/VcnConfig;

    .line 109
    .line 110
    invoke-direct {v6, v5}, Landroid/net/vcn/VcnConfig;-><init>(Landroid/os/PersistableBundle;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v0

    .line 122
    :try_start_2
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Ljava/util/Map$Entry;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v3, Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_1

    .line 155
    .line 156
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 157
    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Landroid/os/ParcelUuid;

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroid/net/vcn/VcnConfig;

    .line 169
    .line 170
    check-cast v3, Landroid/util/ArrayMap;

    .line 171
    .line 172
    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catchall_0
    move-exception p0

    .line 177
    goto :goto_3

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 181
    .line 182
    invoke-virtual {v1, p0}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 183
    .line 184
    .line 185
    monitor-exit v0

    .line 186
    goto :goto_4

    .line 187
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    throw p0

    .line 189
    :catch_1
    move-exception p0

    .line 190
    const-string v0, "Failed to read configs from disk"

    .line 191
    .line 192
    const-string v1, "VcnManagementService"

    .line 193
    .line 194
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .line 196
    .line 197
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 198
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v2, "[WTF ] [VcnManagementService] Failed to read configs from disk"

    .line 202
    .line 203
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_3
    :goto_4
    return-void
.end method
