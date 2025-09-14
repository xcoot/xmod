.class public final Lcom/android/server/am/ContentProviderConnection;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/OomAdjusterModernImpl$Connection;


# instance fields
.field public association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public final client:Lcom/android/server/am/ProcessRecord;

.field public final clientPackage:Ljava/lang/String;

.field public final createTime:J

.field public dead:Z

.field public final mExpectedUserId:I

.field public final mLock:Ljava/lang/Object;

.field public mNumStableIncs:I

.field public mNumUnstableIncs:I

.field public mProcStatsLock:Ljava/lang/Object;

.field public mStableCount:I

.field public mUnstableCount:I

.field public final provider:Lcom/android/server/am/ContentProviderRecord;

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/am/ContentProviderConnection;->clientPackage:Ljava/lang/String;

    .line 16
    .line 17
    iput p4, p0, Lcom/android/server/am/ContentProviderConnection;->mExpectedUserId:I

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    iput-wide p1, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final adjustCounts(II)V
    .locals 5

    .line 1
    const-string/jumbo v0, "ref counts can\'t go to zero here: stable="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "unstableCount < 0: "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "stableCount < 0: "

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget v4, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 16
    .line 17
    add-int/2addr v4, p1

    .line 18
    iput v4, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 24
    .line 25
    add-int/2addr v4, p1

    .line 26
    if-ltz v4, :cond_4

    .line 27
    .line 28
    if-lez p2, :cond_1

    .line 29
    .line 30
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 31
    .line 32
    add-int/2addr p1, p2

    .line 33
    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 34
    .line 35
    :cond_1
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 36
    .line 37
    add-int/2addr p1, p2

    .line 38
    if-ltz p1, :cond_3

    .line 39
    .line 40
    add-int p2, v4, p1

    .line 41
    .line 42
    if-lez p2, :cond_2

    .line 43
    .line 44
    iput v4, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 45
    .line 46
    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 47
    .line 48
    monitor-exit v3

    .line 49
    return-void

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " unstable="

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method

.method public final computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZI)V
    .locals 14

    .line 1
    const/4 v9, 0x0

    .line 2
    const/16 v11, 0x3e9

    .line 3
    .line 4
    const/4 v8, 0x0

    .line 5
    const/4 v12, 0x0

    .line 6
    const/4 v13, 0x0

    .line 7
    move-object v0, p1

    .line 8
    move-object v1, p0

    .line 9
    move-object/from16 v2, p2

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    move-wide/from16 v4, p4

    .line 14
    .line 15
    move-object/from16 v6, p6

    .line 16
    .line 17
    move/from16 v7, p7

    .line 18
    .line 19
    move/from16 v10, p8

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final decrementCount(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 20
    .line 21
    :goto_0
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 24
    .line 25
    add-int/2addr p1, p0

    .line 26
    monitor-exit v0

    .line 27
    return p1

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getStableCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUnstableCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final startAssociationIfNeeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 16
    .line 17
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 18
    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 22
    .line 23
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Lcom/android/server/am/PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const-string v0, "ActivityManager"

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "No package in referenced provider "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ": proc="

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 79
    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 92
    .line 93
    if-nez v1, :cond_2

    .line 94
    .line 95
    const-string v0, "ActivityManager"

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v2, "Inactive holder in referenced provider "

    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 105
    .line 106
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, ": proc="

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 123
    .line 124
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 138
    .line 139
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 140
    .line 141
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    .line 146
    .line 147
    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 151
    .line 152
    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 153
    .line 154
    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 155
    .line 156
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 165
    .line 166
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 167
    .line 168
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->clientPackage:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 177
    .line 178
    monitor-exit v1

    .line 179
    goto :goto_0

    .line 180
    :catchall_0
    move-exception p0

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p0

    .line 183
    :cond_3
    :goto_0
    return-void
.end method

.method public final toClientString(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    const-string v1, " s"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "/"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " u"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "/"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    const-string v0, " WAITING"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const-string v0, " DEAD"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    const-string v2, " "

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v2, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    .line 82
    .line 83
    sub-long/2addr v0, v2

    .line 84
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "ContentProviderConnection{"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "->"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 24
    .line 25
    .line 26
    const/16 p0, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
