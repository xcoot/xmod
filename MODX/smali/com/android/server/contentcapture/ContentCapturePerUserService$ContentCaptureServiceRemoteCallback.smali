.class public final Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;
.super Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 3
    invoke-direct {p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final disableSelf()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 5
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 7
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    sget v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 13
    const-string v0, "ContentCapturePerUserService"

    .line 15
    const-string/jumbo v1, "disableSelf()"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    move-result-wide v0

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 27
    iget-object v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 29
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object v2

    .line 37
    const-string/jumbo v3, "content_capture_enabled"

    .line 40
    const-string v4, "0"

    .line 42
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 44
    iget v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 46
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 57
    move-result-object p0

    .line 58
    const/4 v0, 0x4

    .line 59
    invoke-static {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0
.end method

.method public final setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 5
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 7
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    sget v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 13
    const-string v0, "ContentCapturePerUserService"

    .line 15
    const-string/jumbo v1, "setContentCaptureConditions("

    .line 18
    const-string v2, "): "

    .line 20
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v1

    .line 24
    if-nez p2, :cond_0

    .line 26
    const-string/jumbo v2, "null"

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, " conditions"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 63
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 65
    monitor-enter v0

    .line 66
    if-nez p2, :cond_2

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 70
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 72
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 82
    new-instance v1, Landroid/util/ArraySet;

    .line 84
    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_1
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public final setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 4
    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 8
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 10
    if-eqz v1, :cond_2

    .line 12
    sget v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 14
    const-string v1, "ContentCapturePerUserService"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v3, "setContentCaptureWhitelist("

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    if-nez p1, :cond_0

    .line 26
    const-string/jumbo v3, "null_packages"

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    move-result v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, " packages"

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, ", "

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    if-nez p2, :cond_1

    .line 61
    const-string/jumbo v3, "null_activities"

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 73
    move-result v4

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v4, " activities"

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v3, ") for user "

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 96
    iget v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 98
    invoke-static {v2, v3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 103
    iget-object v2, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 105
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 107
    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 109
    iget v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 111
    invoke-virtual {v2, v1}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    .line 114
    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 117
    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v2

    .line 123
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 126
    move-result v3

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v3

    .line 131
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 134
    move-result-object v2

    .line 135
    const v3, 0xcfd2

    .line 138
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 141
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 143
    iget-object v4, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 145
    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 147
    iget-object v4, v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 149
    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 151
    invoke-virtual {v4, v2, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 154
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 156
    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v2

    .line 162
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 165
    move-result v4

    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v4

    .line 170
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 173
    move-result v5

    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object v5

    .line 178
    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    .line 181
    move-result-object v2

    .line 182
    const v4, 0xcfd1

    .line 185
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 188
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 190
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 193
    move-result-object v2

    .line 194
    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 197
    move-result-object v6

    .line 198
    const/4 v2, 0x0

    .line 199
    if-eqz p1, :cond_3

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 204
    move-result p1

    .line 205
    move v8, p1

    .line 206
    goto :goto_2

    .line 207
    :cond_3
    move v8, v2

    .line 208
    :goto_2
    if-eqz p2, :cond_4

    .line 210
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 213
    move-result p1

    .line 214
    move v9, p1

    .line 215
    goto :goto_3

    .line 216
    :cond_4
    move v9, v2

    .line 217
    :goto_3
    const/4 v7, 0x0

    .line 218
    const/16 v4, 0xcf

    .line 220
    const/4 v5, 0x3

    .line 221
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 224
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 226
    iget-object p2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 228
    check-cast p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 230
    iget-object p2, p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 232
    iget p1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 234
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 241
    move-result p2

    .line 242
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 244
    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    move-result-object v4

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    move-result-object p2

    .line 254
    filled-new-array {v4, p2}, [Ljava/lang/Object;

    .line 257
    move-result-object p2

    .line 258
    invoke-static {v3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 261
    if-eqz v1, :cond_5

    .line 263
    if-eqz p1, :cond_5

    .line 265
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 268
    :cond_5
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 271
    move-result p2

    .line 272
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 274
    iget v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v1

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    move-result-object v3

    .line 284
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 287
    move-result-object v1

    .line 288
    const v3, 0xcfd3

    .line 291
    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 294
    move v1, v2

    .line 295
    :goto_4
    if-ge v1, p2, :cond_6

    .line 297
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Ljava/lang/String;

    .line 303
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 305
    iget-object v5, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 307
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 309
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 311
    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 313
    invoke-virtual {v5, v4, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    .line 316
    move-result-object v4

    .line 317
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 319
    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 321
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 323
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 325
    new-instance v6, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;

    .line 327
    invoke-direct {v6, v3, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V

    .line 330
    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 333
    add-int/2addr v1, v0

    .line 334
    goto :goto_4

    .line 335
    :cond_6
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 337
    iget-object p1, p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 339
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 342
    move-result p1

    .line 343
    if-gtz p1, :cond_7

    .line 345
    return-void

    .line 346
    :cond_7
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 348
    invoke-direct {p2, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 351
    move v1, v2

    .line 352
    :goto_5
    if-ge v1, p1, :cond_a

    .line 354
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 356
    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 358
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 361
    move-result-object v3

    .line 362
    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 364
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 366
    iget-object v5, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 368
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 370
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 372
    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 374
    iget-object v6, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    .line 376
    invoke-virtual {v5, v4, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 379
    move-result v4

    .line 380
    if-nez v4, :cond_9

    .line 382
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 384
    iget-object v4, v4, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 386
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 389
    move-result v4

    .line 390
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 392
    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 394
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 396
    iget-boolean v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 398
    if-eqz v5, :cond_8

    .line 400
    sget v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 402
    const-string v5, "ContentCapturePerUserService"

    .line 404
    const-string/jumbo v6, "marking session "

    .line 407
    const-string v7, " ("

    .line 409
    invoke-static {v4, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    move-result-object v6

    .line 413
    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    .line 415
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    const-string v3, ") for un-whitelisting"

    .line 420
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object v3

    .line 427
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_8
    invoke-virtual {p2, v4, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 433
    :cond_9
    add-int/2addr v1, v0

    .line 434
    goto :goto_5

    .line 435
    :cond_a
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 438
    move-result p1

    .line 439
    if-gtz p1, :cond_b

    .line 441
    return-void

    .line 442
    :cond_b
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 444
    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 446
    monitor-enter v1

    .line 447
    move v3, v2

    .line 448
    :goto_6
    if-ge v3, p1, :cond_d

    .line 450
    :try_start_0
    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 453
    move-result v4

    .line 454
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 456
    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 458
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 460
    iget-boolean v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 462
    if-eqz v5, :cond_c

    .line 464
    sget v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 466
    const-string v5, "ContentCapturePerUserService"

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    .line 470
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    const-string/jumbo v7, "un-whitelisting "

    .line 476
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    move-result-object v6

    .line 486
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    goto :goto_7

    .line 490
    :catchall_0
    move-exception p0

    .line 491
    goto :goto_8

    .line 492
    :cond_c
    :goto_7
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 494
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 496
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 499
    move-result-object v4

    .line 500
    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 502
    invoke-virtual {v4, v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    .line 505
    add-int/2addr v3, v0

    .line 506
    goto :goto_6

    .line 507
    :cond_d
    monitor-exit v1

    .line 508
    return-void

    .line 509
    :goto_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    throw p0
.end method

.method public final writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p3

    .line 3
    move-object/from16 v1, p4

    .line 5
    move-object/from16 v2, p0

    .line 7
    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 9
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 16
    move-result-object v5

    .line 17
    iget v7, v0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    .line 19
    iget v8, v0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    .line 21
    iget v9, v0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    .line 23
    iget v10, v0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    .line 25
    iget v11, v0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    .line 27
    iget v12, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    .line 29
    iget v13, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    .line 31
    iget v14, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    .line 33
    const/16 v3, 0xd1

    .line 35
    const/4 v6, 0x0

    .line 36
    move/from16 v4, p1

    .line 38
    move/from16 v15, p5

    .line 40
    invoke-static/range {v3 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IIIIIIIII)V

    .line 43
    return-void
.end method
