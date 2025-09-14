.class public final Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsShowLog:Z

.field public final mName:Ljava/lang/String;

.field public final mNameHash:I

.field public final mOpenReferenceTimes:Landroid/util/ArrayMap;

.field public mReferenceCount:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "PowerManagerService.Broadcasts"

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const-string p1, "PowerManagerService.Display"

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 35
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mIsShowLog:Z

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mNameHash:I

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final acquire(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "[PWL] sb acquire: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/LongArray;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/util/LongArray;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2}, Landroid/util/LongArray;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/util/LongArray;->add(J)V

    .line 30
    .line 31
    .line 32
    iget p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    add-int/2addr p1, v1

    .line 36
    iput p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 37
    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mIsShowLog:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-string p1, "PowerManagerService"

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    const-string p1, "SuspendBlockers"

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 69
    .line 70
    iget v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mNameHash:I

    .line 71
    .line 72
    const-wide/32 v2, 0x20000

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3, p1, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeAcquireSuspendBlocker(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p1
.end method

.method public final finalize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Suspend blocker \""

    .line 4
    .line 5
    :try_start_0
    iget v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, "PowerManagerService"

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "\" was finalized without being released!"

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v3, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "SuspendBlockers"

    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mNameHash:I

    .line 49
    .line 50
    const-wide/32 v2, 0x20000

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public final release()V
    .locals 1

    .line 1
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release(Ljava/lang/String;)V

    return-void
.end method

.method public final release(Ljava/lang/String;)V
    .locals 4

    .line 2
    const-string v0, "Suspend blocker \""

    const-string v1, "[PWL] sb release: "

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongArray;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/LongArray;->remove(I)V

    .line 6
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    iget p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-nez p1, :cond_2

    .line 9
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mIsShowLog:Z

    if-eqz p1, :cond_1

    .line 10
    const-string p1, "PowerManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V

    const-wide/32 v0, 0x20000

    .line 13
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    const-string p1, "SuspendBlockers"

    iget v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mNameHash:I

    invoke-static {v0, v1, p1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    .line 15
    const-string p1, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" was released without being acquired!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    sget v2, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 16
    invoke-static {p1, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 18
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ": ref count="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " ["

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    move v3, v2

    .line 35
    :goto_0
    if-ge v3, v1, :cond_5

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroid/util/LongArray;

    .line 52
    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/util/LongArray;->size()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_0

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_0
    if-lez v3, :cond_1

    .line 63
    .line 64
    const-string v6, ", "

    .line 65
    .line 66
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_4

    .line 72
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, ": ("

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move v4, v2

    .line 81
    :goto_2
    invoke-virtual {v5}, Landroid/util/LongArray;->size()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-ge v4, v6, :cond_3

    .line 86
    .line 87
    if-lez v4, :cond_2

    .line 88
    .line 89
    const-string v6, ", "

    .line 90
    .line 91
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_2
    sget-object v6, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 95
    .line 96
    new-instance v7, Ljava/util/Date;

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Landroid/util/LongArray;->get(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string v4, ")"

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const-string v1, "]"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    monitor-exit p0

    .line 133
    return-object v0

    .line 134
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw v0
.end method
