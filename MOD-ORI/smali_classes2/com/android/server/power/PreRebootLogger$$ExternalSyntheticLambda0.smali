.class public final synthetic Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/power/PreRebootLogger;->sLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v2, Lcom/android/server/power/PreRebootLogger;->BUFFERS_TO_DUMP:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aget-object v2, v2, v3

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/android/server/power/PreRebootLogger;->dumpLogsLocked(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/android/server/power/PreRebootLogger;->SERVICES_TO_DUMP:[Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    const/4 v4, 0x2

    .line 19
    if-ge v3, v4, :cond_0

    .line 20
    .line 21
    aget-object v4, v2, v3

    .line 22
    .line 23
    invoke-static {v0, v4}, Lcom/android/server/power/PreRebootLogger;->dumpServiceLocked(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method
