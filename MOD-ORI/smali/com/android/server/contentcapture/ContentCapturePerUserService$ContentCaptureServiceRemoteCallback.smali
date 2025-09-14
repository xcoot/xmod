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

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final disableSelf()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 12
    .line 13
    const-string v0, "ContentCapturePerUserService"

    .line 14
    .line 15
    const-string/jumbo v1, "disableSelf()"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string/jumbo v3, "content_capture_enabled"

    .line 38
    .line 39
    .line 40
    const-string v4, "0"

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 43
    .line 44
    iget v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 45
    .line 46
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const/4 v0, 0x4

    .line 59
    invoke-static {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 12
    .line 13
    const-string v0, "ContentCapturePerUserService"

    .line 14
    .line 15
    const-string/jumbo v1, "setContentCaptureConditions("

    .line 16
    .line 17
    .line 18
    const-string v2, "): "

    .line 19
    .line 20
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    const-string/jumbo v2, "null"

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " conditions"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    if-nez p2, :cond_2

    .line 67
    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
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

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 81
    .line 82
    new-instance v1, Landroid/util/ArraySet;

    .line 83
    .line 84
    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
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

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 5
    .line 6
    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 7
    .line 8
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    sget v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 13
    .line 14
    const-string v1, "ContentCapturePerUserService"

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v3, "setContentCaptureWhitelist("

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string/jumbo v3, "null_packages"

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, " packages"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, ", "

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    const-string/jumbo v3, "null_activities"

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " activities"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, ") for user "

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 95
    .line 96
    iget v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 97
    .line 98
    invoke-static {v2, v3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 102
    .line 103
    iget-object v2, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 104
    .line 105
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 108
    .line 109
    iget v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 116
    .line 117
    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const v3, 0xcfd2

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 142
    .line 143
    iget-object v4, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 144
    .line 145
    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 146
    .line 147
    iget-object v4, v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 148
    .line 149
    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 150
    .line 151
    invoke-virtual {v4, v2, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 155
    .line 156
    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 157
    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const v4, 0xcfd1

    .line 183
    .line 184
    .line 185
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    const/4 v2, 0x0

    .line 199
    if-eqz p1, :cond_3

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 202
    .line 203
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

    .line 209
    .line 210
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 211
    .line 212
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

    .line 219
    .line 220
    const/4 v5, 0x3

    .line 221
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 225
    .line 226
    iget-object p2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 227
    .line 228
    check-cast p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 229
    .line 230
    iget-object p2, p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 231
    .line 232
    iget p1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 233
    .line 234
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 243
    .line 244
    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 245
    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    filled-new-array {v4, p2}, [Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {v3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 259
    .line 260
    .line 261
    if-eqz v1, :cond_5

    .line 262
    .line 263
    if-eqz p1, :cond_5

    .line 264
    .line 265
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 266
    .line 267
    .line 268
    :cond_5
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 273
    .line 274
    iget v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 275
    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    const v3, 0xcfd3

    .line 289
    .line 290
    .line 291
    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 292
    .line 293
    .line 294
    move v1, v2

    .line 295
    :goto_4
    if-ge v1, p2, :cond_6

    .line 296
    .line 297
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Ljava/lang/String;

    .line 302
    .line 303
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 304
    .line 305
    iget-object v5, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 306
    .line 307
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 308
    .line 309
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 310
    .line 311
    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 312
    .line 313
    invoke-virtual {v5, v4, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 318
    .line 319
    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 320
    .line 321
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 322
    .line 323
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 324
    .line 325
    new-instance v6, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;

    .line 326
    .line 327
    invoke-direct {v6, v3, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 331
    .line 332
    .line 333
    add-int/2addr v1, v0

    .line 334
    goto :goto_4

    .line 335
    :cond_6
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 336
    .line 337
    iget-object p1, p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 338
    .line 339
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-gtz p1, :cond_7

    .line 344
    .line 345
    return-void

    .line 346
    :cond_7
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 347
    .line 348
    invoke-direct {p2, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 349
    .line 350
    .line 351
    move v1, v2

    .line 352
    :goto_5
    if-ge v1, p1, :cond_a

    .line 353
    .line 354
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 355
    .line 356
    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 357
    .line 358
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 363
    .line 364
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 365
    .line 366
    iget-object v5, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 367
    .line 368
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 369
    .line 370
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 371
    .line 372
    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 373
    .line 374
    iget-object v6, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    .line 375
    .line 376
    invoke-virtual {v5, v4, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-nez v4, :cond_9

    .line 381
    .line 382
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 383
    .line 384
    iget-object v4, v4, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 385
    .line 386
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 391
    .line 392
    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 393
    .line 394
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 395
    .line 396
    iget-boolean v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 397
    .line 398
    if-eqz v5, :cond_8

    .line 399
    .line 400
    sget v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 401
    .line 402
    const-string v5, "ContentCapturePerUserService"

    .line 403
    .line 404
    const-string/jumbo v6, "marking session "

    .line 405
    .line 406
    .line 407
    const-string v7, " ("

    .line 408
    .line 409
    invoke-static {v4, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    .line 414
    .line 415
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v3, ") for un-whitelisting"

    .line 419
    .line 420
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    :cond_8
    invoke-virtual {p2, v4, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 431
    .line 432
    .line 433
    :cond_9
    add-int/2addr v1, v0

    .line 434
    goto :goto_5

    .line 435
    :cond_a
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    if-gtz p1, :cond_b

    .line 440
    .line 441
    return-void

    .line 442
    :cond_b
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 443
    .line 444
    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter v1

    .line 447
    move v3, v2

    .line 448
    :goto_6
    if-ge v3, p1, :cond_d

    .line 449
    .line 450
    :try_start_0
    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 455
    .line 456
    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 457
    .line 458
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 459
    .line 460
    iget-boolean v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 461
    .line 462
    if-eqz v5, :cond_c

    .line 463
    .line 464
    sget v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    .line 465
    .line 466
    const-string v5, "ContentCapturePerUserService"

    .line 467
    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    const-string/jumbo v7, "un-whitelisting "

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
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

    .line 493
    .line 494
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 495
    .line 496
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 501
    .line 502
    invoke-virtual {v4, v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    .line 503
    .line 504
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

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget v7, v0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    .line 18
    .line 19
    iget v8, v0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    .line 20
    .line 21
    iget v9, v0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    .line 22
    .line 23
    iget v10, v0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    .line 24
    .line 25
    iget v11, v0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    .line 26
    .line 27
    iget v12, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    .line 28
    .line 29
    iget v13, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    .line 30
    .line 31
    iget v14, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    .line 32
    .line 33
    const/16 v3, 0xd1

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    move/from16 v4, p1

    .line 37
    .line 38
    move/from16 v15, p5

    .line 39
    .line 40
    invoke-static/range {v3 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IIIIIIIII)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
