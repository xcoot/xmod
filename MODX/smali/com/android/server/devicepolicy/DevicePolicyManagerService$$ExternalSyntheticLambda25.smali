.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/List;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method private final runOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda121()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    .line 5
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceManagementResourcesProvider:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x1

    .line 18
    if-ge v3, v5, :cond_6

    .line 20
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroid/app/admin/DevicePolicyDrawableResource;

    .line 26
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableId()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Landroid/app/admin/DevicePolicyDrawableResource;

    .line 36
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableStyle()Ljava/lang/String;

    .line 39
    move-result-object v7

    .line 40
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Landroid/app/admin/DevicePolicyDrawableResource;

    .line 46
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableSource()Ljava/lang/String;

    .line 49
    move-result-object v8

    .line 50
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v9

    .line 54
    check-cast v9, Landroid/app/admin/DevicePolicyDrawableResource;

    .line 56
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyDrawableResource;->getResource()Landroid/app/admin/ParcelableResource;

    .line 59
    move-result-object v9

    .line 60
    const-string/jumbo v10, "drawableId must be provided."

    .line 63
    invoke-static {v5, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v10, "drawableStyle must be provided."

    .line 69
    invoke-static {v7, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v10, "drawableSource must be provided."

    .line 75
    invoke-static {v8, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v10, "ParcelableResource must be provided."

    .line 80
    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v10, "UNDEFINED"

    .line 85
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_2

    .line 91
    iget-object v10, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 93
    monitor-enter v10

    .line 94
    :try_start_0
    iget-object v8, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 96
    check-cast v8, Ljava/util/HashMap;

    .line 98
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_0

    .line 104
    iget-object v8, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 106
    new-instance v11, Ljava/util/HashMap;

    .line 108
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 111
    check-cast v8, Ljava/util/HashMap;

    .line 113
    invoke-virtual {v8, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto :goto_4

    .line 119
    :cond_0
    :goto_1
    iget-object v8, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 121
    check-cast v8, Ljava/util/HashMap;

    .line 123
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Ljava/util/Map;

    .line 129
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v8

    .line 133
    check-cast v8, Landroid/app/admin/ParcelableResource;

    .line 135
    invoke-virtual {v9, v8}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_1

    .line 141
    monitor-exit v10

    .line 142
    :goto_2
    move v6, v2

    .line 143
    goto :goto_3

    .line 144
    :cond_1
    iget-object v8, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 146
    check-cast v8, Ljava/util/HashMap;

    .line 148
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/util/Map;

    .line 154
    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit v10

    .line 158
    :goto_3
    or-int/2addr v4, v6

    .line 159
    goto :goto_6

    .line 160
    :goto_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0

    .line 162
    :cond_2
    iget-object v10, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 164
    monitor-enter v10

    .line 165
    :try_start_1
    iget-object v11, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 167
    check-cast v11, Ljava/util/HashMap;

    .line 169
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 172
    move-result v11

    .line 173
    if-nez v11, :cond_3

    .line 175
    iget-object v11, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 177
    new-instance v12, Ljava/util/HashMap;

    .line 179
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 182
    check-cast v11, Ljava/util/HashMap;

    .line 184
    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    goto :goto_5

    .line 188
    :catchall_1
    move-exception p0

    .line 189
    goto :goto_7

    .line 190
    :cond_3
    :goto_5
    iget-object v11, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 192
    check-cast v11, Ljava/util/HashMap;

    .line 194
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-result-object v11

    .line 198
    check-cast v11, Ljava/util/Map;

    .line 200
    invoke-interface {v11, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 203
    move-result v12

    .line 204
    if-nez v12, :cond_4

    .line 206
    iget-object v12, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 208
    check-cast v12, Ljava/util/HashMap;

    .line 210
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Ljava/util/Map;

    .line 216
    new-instance v12, Ljava/util/HashMap;

    .line 218
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-interface {v5, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_4
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Ljava/util/Map;

    .line 230
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    move-result-object v5

    .line 234
    check-cast v5, Landroid/app/admin/ParcelableResource;

    .line 236
    invoke-virtual {v9, v5}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_5

    .line 242
    monitor-exit v10

    .line 243
    goto :goto_2

    .line 244
    :cond_5
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Ljava/util/Map;

    .line 250
    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit v10

    .line 254
    goto :goto_3

    .line 255
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 257
    goto/16 :goto_0

    .line 259
    :goto_7
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    throw p0

    .line 261
    :cond_6
    if-nez v4, :cond_7

    .line 263
    goto :goto_8

    .line 264
    :cond_7
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 266
    monitor-enter v2

    .line 267
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 270
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 271
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 274
    move-result-object p0

    .line 275
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;

    .line 277
    const/16 v2, 0x9

    .line 279
    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;-><init>(I)V

    .line 282
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 285
    move-result-object p0

    .line 286
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 289
    move-result-object v1

    .line 290
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 293
    move-result-object p0

    .line 294
    check-cast p0, Ljava/util/List;

    .line 296
    invoke-virtual {v0, v6, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendResourceUpdatedBroadcast(ILjava/util/List;)V

    .line 299
    :goto_8
    return-void

    .line 300
    :catchall_2
    move-exception p0

    .line 301
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 302
    throw p0
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    .line 10
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceManagementResourcesProvider:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    move-result v5

    .line 22
    if-ge v3, v5, :cond_1

    .line 24
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroid/app/admin/DevicePolicyStringResource;

    .line 30
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyStringResource;->getStringId()Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Landroid/app/admin/DevicePolicyStringResource;

    .line 40
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyStringResource;->getResource()Landroid/app/admin/ParcelableResource;

    .line 43
    move-result-object v6

    .line 44
    const-string/jumbo v7, "stringId must be provided."

    .line 47
    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    const-string v7, "ParcelableResource must be provided."

    .line 52
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iget-object v7, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v7

    .line 58
    :try_start_0
    iget-object v8, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 60
    check-cast v8, Ljava/util/HashMap;

    .line 62
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Landroid/app/admin/ParcelableResource;

    .line 68
    invoke-virtual {v6, v8}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_0

    .line 74
    monitor-exit v7

    .line 75
    move v5, v2

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_0
    iget-object v8, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 81
    check-cast v8, Ljava/util/HashMap;

    .line 83
    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v7

    .line 87
    const/4 v5, 0x1

    .line 88
    :goto_1
    or-int/2addr v4, v5

    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_0

    .line 92
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_1
    if-nez v4, :cond_2

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 99
    monitor-enter v2

    .line 100
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 103
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 107
    move-result-object p0

    .line 108
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;

    .line 110
    const/16 v2, 0xa

    .line 112
    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;-><init>(I)V

    .line 115
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 118
    move-result-object p0

    .line 119
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 122
    move-result-object v1

    .line 123
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Ljava/util/List;

    .line 129
    const/4 v1, 0x2

    .line 130
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendResourceUpdatedBroadcast(ILjava/util/List;)V

    .line 133
    :goto_3
    return-void

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    throw p0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 139
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    .line 141
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceManagementResourcesProvider:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 143
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 145
    monitor-enter v2

    .line 146
    const/4 v3, 0x0

    .line 147
    move v4, v3

    .line 148
    move v5, v4

    .line 149
    :goto_4
    :try_start_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 152
    move-result v6

    .line 153
    if-ge v4, v6, :cond_4

    .line 155
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Ljava/lang/String;

    .line 161
    iget-object v7, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 163
    check-cast v7, Ljava/util/HashMap;

    .line 165
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-result-object v6

    .line 169
    if-eqz v6, :cond_3

    .line 171
    const/4 v6, 0x1

    .line 172
    goto :goto_5

    .line 173
    :cond_3
    move v6, v3

    .line 174
    :goto_5
    or-int/2addr v5, v6

    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 177
    goto :goto_4

    .line 178
    :catchall_2
    move-exception p0

    .line 179
    goto :goto_7

    .line 180
    :cond_4
    if-nez v5, :cond_5

    .line 182
    monitor-exit v2

    .line 183
    goto :goto_6

    .line 184
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 187
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 188
    const/4 v1, 0x2

    .line 189
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendResourceUpdatedBroadcast(ILjava/util/List;)V

    .line 192
    :goto_6
    return-void

    .line 193
    :goto_7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 194
    throw p0

    .line 195
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->runOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda121()V

    .line 198
    return-void

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 201
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    .line 203
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceManagementResourcesProvider:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 205
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 207
    monitor-enter v2

    .line 208
    const/4 v3, 0x0

    .line 209
    move v4, v3

    .line 210
    move v5, v4

    .line 211
    :goto_8
    :try_start_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 214
    move-result v6

    .line 215
    const/4 v7, 0x1

    .line 216
    if-ge v4, v6, :cond_8

    .line 218
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Ljava/lang/String;

    .line 224
    iget-object v8, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 226
    check-cast v8, Ljava/util/HashMap;

    .line 228
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    move-result-object v8

    .line 232
    if-nez v8, :cond_7

    .line 234
    iget-object v8, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 236
    check-cast v8, Ljava/util/HashMap;

    .line 238
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-result-object v6

    .line 242
    if-eqz v6, :cond_6

    .line 244
    goto :goto_9

    .line 245
    :cond_6
    move v7, v3

    .line 246
    goto :goto_9

    .line 247
    :catchall_3
    move-exception p0

    .line 248
    goto :goto_b

    .line 249
    :cond_7
    :goto_9
    or-int/2addr v5, v7

    .line 250
    add-int/lit8 v4, v4, 0x1

    .line 252
    goto :goto_8

    .line 253
    :cond_8
    if-nez v5, :cond_9

    .line 255
    monitor-exit v2

    .line 256
    goto :goto_a

    .line 257
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 260
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 261
    invoke-virtual {v0, v7, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendResourceUpdatedBroadcast(ILjava/util/List;)V

    .line 264
    :goto_a
    return-void

    .line 265
    :goto_b
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 266
    throw p0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
