.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;
.super Lcom/android/internal/infra/GlobalWhitelistState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mServicePackages:Landroid/util/SparseArray;

.field public final mTemporaryServices:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public static -$$Nest$msetServiceInfo(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setServiceInfo(): invalid name: "

    .line 4
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    if-eqz p3, :cond_0

    .line 9
    :try_start_0
    iget-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 20
    invoke-virtual {p3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 23
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 28
    move-result-object p3

    .line 29
    if-nez p3, :cond_1

    .line 31
    const-string p3, "ContentCaptureManagerService"

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 61
    :goto_1
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/infra/GlobalWhitelistState;-><init>()V

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 13
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 15
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 20
    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_0

    .line 15
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    const-string v1, "Service packages: "

    .line 20
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 33
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_1

    .line 39
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    const-string p1, "Temp services: "

    .line 44
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 49
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 52
    :cond_1
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    const-string/jumbo v3, "getOptionsForPackage("

    .line 10
    const-string/jumbo v4, "getOptionsForPackage() lite for "

    .line 13
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isContentProtectionReceiverEnabled(ILjava/lang/String;)Z

    .line 16
    move-result v6

    .line 17
    iget-object v5, v0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    .line 19
    monitor-enter v5

    .line 20
    :try_start_0
    invoke-super/range {p0 .. p2}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILjava/lang/String;)Z

    .line 23
    move-result v7

    .line 24
    const/4 v8, 0x0

    .line 25
    if-nez v7, :cond_2

    .line 27
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedComponents(ILjava/lang/String;)Landroid/util/ArraySet;

    .line 30
    move-result-object v9

    .line 31
    if-nez v6, :cond_1

    .line 33
    if-nez v9, :cond_1

    .line 35
    iget-object v10, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v10

    .line 41
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v10

    .line 45
    if-eqz v10, :cond_1

    .line 47
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 49
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 51
    if-eqz v1, :cond_0

    .line 53
    const-string v1, "ContentCaptureManagerService"

    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_7

    .line 66
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentCaptureOptions;

    .line 68
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 70
    iget v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 72
    invoke-direct {v1, v0}, Landroid/content/ContentCaptureOptions;-><init>(I)V

    .line 75
    monitor-exit v5

    .line 76
    return-object v1

    .line 77
    :cond_1
    move-object v15, v9

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move-object v15, v8

    .line 80
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    .line 83
    if-eqz v4, :cond_3

    .line 85
    iget-object v4, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 87
    iget-object v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 89
    invoke-virtual {v4, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 95
    iget-object v4, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 97
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_3

    .line 107
    const-string v3, "ContentCaptureManagerService"

    .line 109
    const-string v4, "Ignoring package "

    .line 111
    const-string v5, " while using temporary service "

    .line 113
    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    move-result-object v2

    .line 117
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 119
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-static {v2, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v8

    .line 129
    :cond_3
    if-nez v7, :cond_5

    .line 131
    if-nez v6, :cond_5

    .line 133
    if-nez v15, :cond_5

    .line 135
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 137
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 139
    if-eqz v0, :cond_4

    .line 141
    const-string v0, "ContentCaptureManagerService"

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v3, "getOptionsForPackage("

    .line 148
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v2, "): not whitelisted"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_4
    return-object v8

    .line 167
    :cond_5
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 169
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 171
    monitor-enter v1

    .line 172
    :try_start_1
    new-instance v4, Landroid/content/ContentCaptureOptions;

    .line 174
    iget-object v5, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 176
    iget v11, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 178
    iget v12, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    .line 180
    iget v13, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    .line 182
    iget v14, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    .line 184
    iget v10, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 186
    iget-boolean v9, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgDisableFlushForViewTreeAppearing:Z

    .line 188
    if-nez v7, :cond_7

    .line 190
    if-eqz v15, :cond_6

    .line 192
    goto :goto_3

    .line 193
    :cond_6
    const/4 v5, 0x0

    .line 194
    :goto_2
    move/from16 v16, v5

    .line 196
    goto :goto_4

    .line 197
    :cond_7
    :goto_3
    const/4 v5, 0x1

    .line 198
    goto :goto_2

    .line 199
    :goto_4
    new-instance v17, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    .line 201
    iget-object v5, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 203
    iget v7, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionBufferSize:I

    .line 205
    iget-object v8, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    .line 207
    move/from16 p1, v9

    .line 209
    iget-object v9, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    .line 211
    iget v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroupsThreshold:I

    .line 213
    move/from16 v18, v5

    .line 215
    move-object/from16 v5, v17

    .line 217
    move/from16 v19, p1

    .line 219
    move/from16 v20, v10

    .line 221
    move/from16 v10, v18

    .line 223
    invoke-direct/range {v5 .. v10}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>(ZILjava/util/List;Ljava/util/List;I)V

    .line 226
    move-object v6, v4

    .line 227
    move v7, v11

    .line 228
    move v8, v12

    .line 229
    move v9, v13

    .line 230
    move v10, v14

    .line 231
    move/from16 v11, v20

    .line 233
    move/from16 v12, v19

    .line 235
    move/from16 v13, v16

    .line 237
    move-object/from16 v14, v17

    .line 239
    invoke-direct/range {v6 .. v15}, Landroid/content/ContentCaptureOptions;-><init>(IIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V

    .line 242
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 244
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 246
    if-eqz v0, :cond_8

    .line 248
    const-string v0, "ContentCaptureManagerService"

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v2, "): "

    .line 260
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v2

    .line 270
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    goto :goto_5

    .line 274
    :catchall_1
    move-exception v0

    .line 275
    goto :goto_6

    .line 276
    :cond_8
    :goto_5
    monitor-exit v1

    .line 277
    return-object v4

    .line 278
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    throw v0

    .line 280
    :goto_7
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    throw v0
.end method

.method public final isContentProtectionReceiverEnabled(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 8
    iget-boolean v2, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_9

    .line 13
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionServiceComponentName:Landroid/content/ComponentName;

    .line 15
    if-eqz v2, :cond_9

    .line 17
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 19
    if-eqz v2, :cond_9

    .line 21
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionConsentManager:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 23
    if-eqz v2, :cond_9

    .line 25
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    .line 27
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 33
    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    .line 35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_9

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 43
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionConsentManager:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 45
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    iget-boolean v0, v1, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedPackageVerifierConsent:Z

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v0, :cond_7

    .line 53
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->manageDevicePolicyEnabled()Z

    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 59
    iget-boolean v0, v1, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    .line 61
    if-eqz v0, :cond_2

    .line 63
    iget-object v0, v1, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 65
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 71
    :cond_1
    move p1, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    move p1, v3

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v0, v1, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 77
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 83
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->manageDevicePolicyEnabled()Z

    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_4

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, v1, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyCache:Landroid/app/admin/DevicePolicyCache;

    .line 92
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyCache;->getContentProtectionPolicy(I)I

    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_5

    .line 98
    const/4 v0, 0x2

    .line 99
    if-eq p1, v0, :cond_1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-boolean p1, v1, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    .line 104
    goto :goto_1

    .line 105
    :cond_6
    iget-boolean p1, v1, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    .line 107
    :goto_1
    if-eqz p1, :cond_7

    .line 109
    move p1, v2

    .line 110
    goto :goto_2

    .line 111
    :cond_7
    move p1, v3

    .line 112
    :goto_2
    if-eqz p1, :cond_8

    .line 114
    iget-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mLock:Ljava/lang/Object;

    .line 116
    monitor-enter p1

    .line 117
    :try_start_1
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mAllowedPackages:Ljava/util/Set;

    .line 119
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_8

    .line 126
    move v3, v2

    .line 127
    goto :goto_3

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    throw p0

    .line 131
    :cond_8
    :goto_3
    return v3

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    goto :goto_4

    .line 134
    :cond_9
    :try_start_3
    monitor-exit v0

    .line 135
    return v3

    .line 136
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    throw p0
.end method

.method public final isWhitelisted(ILandroid/content/ComponentName;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isContentProtectionReceiverEnabled(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isWhitelisted(ILjava/lang/String;)Z
    .locals 1

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isContentProtectionReceiverEnabled(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
