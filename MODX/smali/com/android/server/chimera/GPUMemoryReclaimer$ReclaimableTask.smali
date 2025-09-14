.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsSuccess:Z

.field public final mMeminfoRaw:[J

.field public final mPid:I

.field public final mReclaimed:J

.field public final mResident:J


# direct methods
.method public constructor <init>(ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;)V
    .locals 10

    .line 1
    const-string v0, "Ignore "

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [J

    .line 9
    const-wide/16 v2, -0x1

    .line 11
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->getMeminfoRaw(I)[J

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->calculateResident([J)J

    .line 18
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->calculateReclaimed([J)J

    .line 22
    move-result-wide v2

    .line 23
    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    iput p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    .line 28
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    .line 30
    iput-wide v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    .line 32
    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    move-wide v8, v2

    .line 37
    move-wide v2, v4

    .line 38
    move-wide v4, v8

    .line 39
    goto :goto_2

    .line 40
    :catch_0
    move-exception p2

    .line 41
    move-wide v8, v2

    .line 42
    move-wide v2, v4

    .line 43
    move-wide v4, v8

    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p2

    .line 46
    move-wide v4, v2

    .line 47
    goto :goto_2

    .line 48
    :catch_1
    move-exception p2

    .line 49
    move-wide v4, v2

    .line 50
    :goto_0
    :try_start_2
    const-string v6, "GMR"

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, " due to exception "

    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    invoke-static {v6, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    iput p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    .line 81
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    .line 83
    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    .line 85
    iput-wide v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    .line 87
    :goto_1
    return-void

    .line 88
    :catchall_2
    move-exception p2

    .line 89
    :goto_2
    iput p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    .line 91
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    .line 93
    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    .line 95
    iput-wide v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    .line 97
    throw p2
.end method
