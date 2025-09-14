.class public final Lcom/android/server/rollback/Rollback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final info:Landroid/content/rollback/RollbackInfo;

.field public final mBackupDir:Ljava/io/File;

.field public final mExtensionVersions:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstallerPackageName:Ljava/lang/String;

.field public final mOriginalSessionId:I

.field public final mPackageSessionIds:[I

.field public mRestoreUserDataInProgress:Z

.field public mRollbackLifetimeMillis:J

.field public mState:I

.field public mStateDescription:Ljava/lang/String;

.field public mTimestamp:Ljava/time/Instant;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 11

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, v0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 5
    new-instance v2, Landroid/content/rollback/RollbackInfo;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v4, v2

    move v5, p1

    move v7, p4

    invoke-direct/range {v4 .. v10}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;II)V

    iput-object v2, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    move/from16 v2, p5

    .line 6
    iput v2, v0, Lcom/android/server/rollback/Rollback;->mUserId:I

    move-object/from16 v2, p6

    .line 7
    iput-object v2, v0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    move-object v2, p2

    .line 8
    iput-object v2, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    move v2, p3

    .line 9
    iput v2, v0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 10
    iput v1, v0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 11
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    if-eqz p7, :cond_0

    move-object/from16 v1, p7

    goto :goto_0

    .line 12
    :cond_0
    new-array v1, v1, [I

    :goto_0
    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    move-object/from16 v1, p8

    .line 13
    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 17
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 18
    iput p8, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 19
    iput-object p9, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 21
    iput-object p3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 22
    iput p4, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 23
    iput p5, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 24
    iput-object p6, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 25
    iput-boolean p7, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 26
    iput-object p10, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 27
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    .line 15
    .line 16
    move v2, v1

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v2, v3, :cond_4

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move v4, v1

    .line 41
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ge v4, v5, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, -0x1

    .line 52
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-ge v6, v5, :cond_2

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    return v1
.end method


# virtual methods
.method public final allPackagesEnabled()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 38
    .line 39
    array-length p0, p0

    .line 40
    if-ne v2, p0, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2
    return v1
.end method

.method public final assertInWorkerThread()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ":"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "-state: "

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "-stateDescription: "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "-timestamp: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "-rollbackLifetimeMillis: "

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 95
    .line 96
    .line 97
    iget-wide v1, p0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "-rollbackImpactLevel: "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v1, "-isStaged: "

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v1, "-originalSessionId: "

    .line 164
    .line 165
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v0, "-packages:"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    const-string v2, " "

    .line 203
    .line 204
    if-eqz v1, :cond_1

    .line 205
    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 211
    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 232
    .line 233
    .line 234
    move-result-wide v4

    .line 235
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, " -> "

    .line 239
    .line 240
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 248
    .line 249
    .line 250
    move-result-wide v4

    .line 251
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v2, " ["

    .line 255
    .line 256
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, "]"

    .line 267
    .line 268
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_3

    .line 287
    .line 288
    const-string v0, "-causePackages:"

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_2

    .line 311
    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 317
    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 334
    .line 335
    .line 336
    move-result-wide v4

    .line 337
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto :goto_1

    .line 348
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 349
    .line 350
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v1, "-committedSessionId: "

    .line 354
    .line 355
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 359
    .line 360
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :cond_3
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-lez v0, :cond_4

    .line 381
    .line 382
    const-string v0, "-extensionVersions:"

    .line 383
    .line 384
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    .line 389
    .line 390
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 391
    .line 392
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 400
    .line 401
    .line 402
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 403
    .line 404
    .line 405
    return-void
.end method

.method public final getPackageNames()Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method public final getStateAsString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    const-string p0, "deleted"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 21
    .line 22
    const-string v1, "Invalid rollback state: "

    .line 23
    .line 24
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    const-string p0, "committed"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const-string p0, "available"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const-string p0, "enabling"

    .line 39
    .line 40
    :goto_0
    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final isCommitted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isEnabling()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public setState(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
