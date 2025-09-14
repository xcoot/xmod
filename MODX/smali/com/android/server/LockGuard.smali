.class public abstract Lcom/android/server/LockGuard;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sKnown:Landroid/util/ArrayMap;

.field public static final sKnownFixed:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    sput-object v0, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/util/ArrayMap;-><init>(IZ)V

    .line 14
    sput-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    .line 16
    return-void
.end method

.method public static findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/server/LockGuard$LockInfo;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/android/server/LockGuard$LockInfo;

    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v2, Landroid/util/ArraySet;

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v2, v3, v4}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 23
    iput-object v2, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "0x"

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 35
    move-result v3

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, " ["

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v3, Ljava/lang/Throwable;

    .line 50
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 53
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 56
    move-result-object v3

    .line 57
    const/4 v4, 0x2

    .line 58
    aget-object v3, v3, v4

    .line 60
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "]"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    iput-object v2, v1, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    return-object v1
.end method

.method public static guard(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p0, :cond_2

    .line 4
    sget-object v1, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    .line 6
    aget-object v2, v1, v0

    .line 8
    if-eqz v2, :cond_1

    .line 10
    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 16
    aget-object v1, v1, p0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "Calling thread "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, " is holding "

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {v0}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " while trying to acquire "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {p0}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    if-eqz v1, :cond_0

    .line 66
    invoke-static {v1}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    .line 69
    move-result-object v1

    .line 70
    iget-boolean v1, v1, Lcom/android/server/LockGuard$LockInfo;->doWtf:Z

    .line 72
    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    .line 76
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v2, Ljava/lang/Thread;

    .line 81
    new-instance v3, Lcom/android/server/LockGuard$$ExternalSyntheticLambda0;

    .line 83
    invoke-direct {v3, v1}, Lcom/android/server/LockGuard$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;)V

    .line 86
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    .line 95
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 98
    const-string v3, "LockGuard"

    .line 100
    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method

.method public static installLock(Ljava/lang/Object;IZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    .line 3
    aput-object p0, v0, p1

    .line 5
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    .line 8
    move-result-object p0

    .line 9
    iput-boolean p2, p0, Lcom/android/server/LockGuard$LockInfo;->doWtf:Z

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "Lock-"

    .line 15
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static installNewLock(IZ)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {v0, p0, p1}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;IZ)V

    .line 9
    return-object v0
.end method

.method public static lockToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_0
    const-string p0, "EDMS"

    return-object p0

    .line 7
    :pswitch_1
    const-string p0, "DPMS"

    return-object p0

    .line 8
    :pswitch_2
    const-string p0, "ACTIVITY"

    return-object p0

    .line 9
    :pswitch_3
    const-string p0, "PROCESS"

    return-object p0

    .line 10
    :pswitch_4
    const-string p0, "WINDOW"

    return-object p0

    .line 11
    :pswitch_5
    const-string p0, "STORAGE"

    return-object p0

    .line 12
    :pswitch_6
    const-string p0, "PACKAGES"

    return-object p0

    .line 13
    :pswitch_7
    const-string p0, "USER"

    return-object p0

    .line 14
    :pswitch_8
    const-string p0, "POWER"

    return-object p0

    .line 15
    :pswitch_9
    const-string p0, "APP_OPS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lockToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p0, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
