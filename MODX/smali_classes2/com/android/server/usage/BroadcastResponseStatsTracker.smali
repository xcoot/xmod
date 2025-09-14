.class public final Lcom/android/server/usage/BroadcastResponseStatsTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public final mContext:Landroid/content/Context;

.field public final mExemptedRoleHoldersCache:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

.field public final mRoleHoldersChangedListener:Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public final mUserBroadcastEvents:Landroid/util/SparseArray;

.field public final mUserResponseStats:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyInternal;Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/BroadcastResponseStatsTracker;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    new-instance p1, Lcom/android/server/usage/BroadcastResponseStatsLogger;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 17
    .line 18
    invoke-interface {p2}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedPermissions()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    sub-int/2addr v1, v2

    .line 28
    :goto_0
    if-ltz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v5, -0x1

    .line 39
    invoke-virtual {v4, v3, v5, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    return v2

    .line 46
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    :cond_1
    return v0
.end method

.method public final doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedRoles()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    sub-int/2addr v2, v3

    .line 16
    :goto_0
    if-ltz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroid/util/ArrayMap;

    .line 35
    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    new-instance v5, Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v6, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/util/List;

    .line 57
    .line 58
    if-nez v6, :cond_1

    .line 59
    .line 60
    iget-object v7, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    .line 61
    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    invoke-virtual {v7, v4, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-static {v6, p1}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    monitor-exit v1

    .line 78
    return v3

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    monitor-exit v1

    .line 85
    const/4 p0, 0x0

    .line 86
    return p0

    .line 87
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "Broadcast response stats:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

.method public final dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 11

    .line 1
    const-string v0, "Broadcast events:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_5

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/usage/UserBroadcastEvents;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v5, "User "

    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ":"

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 56
    .line 57
    .line 58
    move v4, v0

    .line 59
    :goto_1
    iget-object v5, v3, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ge v4, v5, :cond_4

    .line 66
    .line 67
    iget-object v5, v3, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    iget-object v6, v3, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Landroid/util/ArraySet;

    .line 82
    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_0

    .line 109
    .line 110
    const-string v5, "<empty>"

    .line 111
    .line 112
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_0
    move v5, v0

    .line 117
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-ge v5, v7, :cond_3

    .line 122
    .line 123
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Lcom/android/server/usage/BroadcastEvent;

    .line 128
    .line 129
    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 133
    .line 134
    .line 135
    iget-object v7, v7, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    .line 136
    .line 137
    move v8, v0

    .line 138
    :goto_3
    invoke-virtual {v7}, Landroid/util/LongArrayQueue;->size()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-ge v8, v9, :cond_2

    .line 143
    .line 144
    if-lez v8, :cond_1

    .line 145
    .line 146
    const/16 v9, 0x2c

    .line 147
    .line 148
    invoke-virtual {p1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 149
    .line 150
    .line 151
    :cond_1
    invoke-virtual {v7, v8}, Landroid/util/LongArrayQueue;->get(I)J

    .line 152
    .line 153
    .line 154
    move-result-wide v9

    .line 155
    invoke-static {v9, v10, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v8, v8, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 165
    .line 166
    .line 167
    add-int/lit8 v5, v5, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 177
    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "Response stats:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/util/SparseArray;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v5, "Uid "

    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ":"

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 56
    .line 57
    .line 58
    move v4, v0

    .line 59
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-ge v4, v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 74
    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v8, "User "

    .line 78
    .line 79
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 96
    .line 97
    .line 98
    move v5, v0

    .line 99
    :goto_2
    iget-object v7, v6, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-ge v5, v7, :cond_0

    .line 106
    .line 107
    iget-object v7, v6, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 108
    .line 109
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Lcom/android/server/usage/BroadcastEvent;

    .line 114
    .line 115
    iget-object v8, v6, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    check-cast v8, Landroid/app/usage/BroadcastResponseStats;

    .line 122
    .line 123
    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    const-string v7, " -> "

    .line 127
    .line 128
    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 138
    .line 139
    .line 140
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 144
    .line 145
    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "Role holders:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/util/ArrayMap;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v5, "User "

    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ":"

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 56
    .line 57
    .line 58
    move v2, v0

    .line 59
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v2, v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/util/List;

    .line 76
    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, ": "

    .line 86
    .line 87
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move v4, v0

    .line 98
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-ge v4, v6, :cond_1

    .line 103
    .line 104
    if-lez v4, :cond_0

    .line 105
    .line 106
    const-string v6, ", "

    .line 107
    .line 108
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 130
    .line 131
    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/usage/UserBroadcastEvents;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/usage/UserBroadcastEvents;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, v0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/util/ArraySet;

    .line 43
    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    new-instance p0, Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object p2, v0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    return-object p0
.end method

.method public final getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/util/SparseArray;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget p0, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v2, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p0, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroid/app/usage/BroadcastResponseStats;

    .line 55
    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    new-instance p0, Landroid/app/usage/BroadcastResponseStats;

    .line 59
    .line 60
    iget-wide v1, p1, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 61
    .line 62
    iget-object v3, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {p0, v3, v1, v2}, Landroid/app/usage/BroadcastResponseStats;-><init>(Ljava/lang/String;J)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_2
    return-object p0
.end method

.method public final onUserRemoved(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 10
    .line 11
    invoke-interface {v3}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsDurationMs()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    const-wide/16 v7, 0x0

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    if-lez v9, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 28
    .line 29
    .line 30
    move-result-wide v9

    .line 31
    sub-long v11, v5, v1

    .line 32
    .line 33
    cmp-long v9, v9, v11

    .line 34
    .line 35
    if-gez v9, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    cmp-long v11, v9, v7

    .line 42
    .line 43
    if-ltz v11, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/4 v8, 0x1

    .line 50
    invoke-virtual {v7, v8}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    .line 51
    .line 52
    .line 53
    add-long/2addr v9, v3

    .line 54
    move-wide v7, v9

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public final reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p4

    .line 8
    .line 9
    iget-object v5, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    .line 10
    .line 11
    iget-object v6, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v6

    .line 14
    :try_start_0
    sget-boolean v7, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    .line 15
    .line 16
    if-eqz v7, :cond_0

    .line 17
    .line 18
    const-string v7, "ResponseStatsTracker"

    .line 19
    .line 20
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    invoke-static {v1, v8, v3, v4, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(IIJLjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    :goto_0
    iget-object v5, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 42
    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v5}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    .line 47
    .line 48
    .line 49
    check-cast v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    .line 50
    .line 51
    iput v1, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->type:I

    .line 52
    .line 53
    iput-object v2, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iput v7, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->userId:I

    .line 60
    .line 61
    iput-wide v3, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->timestampMs:J

    .line 62
    .line 63
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v5, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v5

    .line 67
    :try_start_1
    iget-object v6, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/server/usage/UserBroadcastEvents;

    .line 78
    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object v6, v6, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/util/ArraySet;

    .line 90
    .line 91
    :goto_2
    if-nez v2, :cond_3

    .line 92
    .line 93
    monitor-exit v5

    .line 94
    return-void

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_3
    iget-object v6, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 99
    .line 100
    invoke-interface {v6}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    iget-object v8, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 105
    .line 106
    invoke-interface {v8}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsWithResponseDurationMs()J

    .line 107
    .line 108
    .line 109
    move-result-wide v8

    .line 110
    iget-object v10, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 111
    .line 112
    invoke-interface {v10}, Lcom/android/server/usage/AppStandbyInternal;->shouldNoteResponseEventForAllBroadcastSessions()Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    const/4 v12, 0x1

    .line 121
    sub-int/2addr v11, v12

    .line 122
    :goto_3
    if-ltz v11, :cond_b

    .line 123
    .line 124
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    check-cast v13, Lcom/android/server/usage/BroadcastEvent;

    .line 129
    .line 130
    invoke-virtual {v0, v13}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    .line 131
    .line 132
    .line 133
    iget-object v14, v13, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    .line 134
    .line 135
    const-wide/16 v15, 0x0

    .line 136
    .line 137
    move-wide/from16 v17, v15

    .line 138
    .line 139
    :goto_4
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->size()I

    .line 140
    .line 141
    .line 142
    move-result v19

    .line 143
    if-lez v19, :cond_4

    .line 144
    .line 145
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 146
    .line 147
    .line 148
    move-result-wide v19

    .line 149
    cmp-long v19, v19, v3

    .line 150
    .line 151
    if-gtz v19, :cond_4

    .line 152
    .line 153
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 154
    .line 155
    .line 156
    move-result-wide v19

    .line 157
    sub-long v21, v3, v19

    .line 158
    .line 159
    cmp-long v21, v21, v6

    .line 160
    .line 161
    if-gtz v21, :cond_9

    .line 162
    .line 163
    cmp-long v21, v19, v17

    .line 164
    .line 165
    if-ltz v21, :cond_9

    .line 166
    .line 167
    cmp-long v17, v17, v15

    .line 168
    .line 169
    if-eqz v17, :cond_5

    .line 170
    .line 171
    if-nez v10, :cond_5

    .line 172
    .line 173
    :cond_4
    move v0, v12

    .line 174
    goto :goto_6

    .line 175
    :cond_5
    invoke-virtual {v0, v13}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    invoke-virtual {v15, v12}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    .line 180
    .line 181
    .line 182
    add-long v17, v19, v8

    .line 183
    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    if-eq v1, v12, :cond_7

    .line 187
    .line 188
    const/4 v12, 0x2

    .line 189
    if-eq v1, v12, :cond_6

    .line 190
    .line 191
    const-string v12, "ResponseStatsTracker"

    .line 192
    .line 193
    new-instance v15, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v0, "Unknown event: "

    .line 199
    .line 200
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    const/4 v0, 0x1

    .line 214
    goto :goto_5

    .line 215
    :cond_6
    const/4 v0, 0x1

    .line 216
    invoke-virtual {v15, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsCancelledCount(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_7
    move v0, v12

    .line 221
    invoke-virtual {v15, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsUpdatedCount(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_8
    move v0, v12

    .line 226
    invoke-virtual {v15, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsPostedCount(I)V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_9
    move v0, v12

    .line 231
    :goto_5
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 232
    .line 233
    .line 234
    move v12, v0

    .line 235
    const-wide/16 v15, 0x0

    .line 236
    .line 237
    move-object/from16 v0, p0

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :goto_6
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->size()I

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-nez v12, :cond_a

    .line 245
    .line 246
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    :cond_a
    add-int/lit8 v11, v11, -0x1

    .line 250
    .line 251
    move v12, v0

    .line 252
    move-object/from16 v0, p0

    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :cond_b
    monitor-exit v5

    .line 257
    return-void

    .line 258
    :goto_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    throw v0

    .line 260
    :goto_8
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    throw v0
.end method
