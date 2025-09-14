.class public final Lcom/android/internal/util/jobs/ConcurrentUtils$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic val$linuxThreadPriority:I

.field public final synthetic val$poolName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1;->val$poolName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1;->val$linuxThreadPriority:I

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 14
    iput-object p1, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1;->val$poolName:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;-><init>(Lcom/android/internal/util/jobs/ConcurrentUtils$1;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 29
    return-object v0
.end method
