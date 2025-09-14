.class public final Lcom/android/server/biometrics/SemBioLoggingManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOG_ARRAY_SIZE:I

.field public static sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mBpAuthLogList:Ljava/util/ArrayList;

.field public final mBpLoggingInfo:Landroid/util/SparseArray;

.field public final mFaceAuthLogList:Ljava/util/ArrayList;

.field public final mFaceLoggingInfo:Landroid/util/SparseArray;

.field public final mFpAuthLogList:Ljava/util/ArrayList;

.field public final mFpLoggingInfo:Landroid/util/SparseArray;

.field public mIsFpBioStarEnabled:Z

.field public mLastFaceEnrollLog:Ljava/lang/String;

.field public mLastFaceRemoveLog:Ljava/lang/String;

.field public mLastFpAuthenticatorId:Ljava/lang/String;

.field public mLastFpEnrollLog:Ljava/lang/String;

.field public mLastFpRemoveLog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x32

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x14

    .line 9
    .line 10
    :goto_0
    sput v0, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstanceLock:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 35
    .line 36
    new-instance v0, Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 42
    .line 43
    new-instance v0, Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    .line 49
    .line 50
    return-void
.end method

.method public static get()Lcom/android/server/biometrics/SemBioLoggingManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstanceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/biometrics/SemBioLoggingManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 20
    .line 21
    return-object v0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public final faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "E"

    .line 3
    .line 4
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sget v0, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    .line 37
    .line 38
    if-le p1, v0, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method public final faceDump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Enroll: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Remove: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 56
    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-lez v1, :cond_4

    .line 65
    .line 66
    const-string v2, " [ in progress client ]"

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_1
    if-ge v2, v1, :cond_4

    .line 73
    .line 74
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v5, " - "

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p0
.end method

.method public final faceRemoved(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "R"

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 15
    .line 16
    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 17
    .line 18
    iput-object p1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final faceStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 14
    .line 15
    iput-object p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    sget p2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    .line 31
    .line 32
    if-lt p1, p2, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final faceStop(IIJLjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 19
    .line 20
    iput-wide p3, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 21
    .line 22
    iput-object p5, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 23
    .line 24
    iput p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "E"

    .line 9
    .line 10
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

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
    const-string v2, "R"

    .line 24
    .line 25
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, ", S:"

    .line 51
    .line 52
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpScreenStatus:I

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, ", A:"

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget p1, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpAlphaMaskLvl:I

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    sget v1, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    .line 93
    .line 94
    if-le p1, v1, :cond_3

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_3
    monitor-exit v0

    .line 103
    return-void

    .line 104
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p0
.end method

.method public final fpDump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "Remove: "

    .line 2
    .line 3
    const-string v1, "Enroll: "

    .line 4
    .line 5
    const-string v2, "AID: "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_5

    .line 51
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 96
    .line 97
    monitor-enter v0

    .line 98
    :try_start_1
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-lez v1, :cond_4

    .line 105
    .line 106
    const-string v2, " [ in progress client ]"

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    :goto_2
    if-ge v2, v1, :cond_4

    .line 113
    .line 114
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 121
    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v5, " - "

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto :goto_4

    .line 151
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    throw p0

    .line 161
    :goto_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    throw p0
.end method

.method public getFpHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
