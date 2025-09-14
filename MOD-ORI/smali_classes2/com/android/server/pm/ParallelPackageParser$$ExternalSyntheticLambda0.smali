.class public final synthetic Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ParallelPackageParser;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v4, "parallel parsePackage ["

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, "]"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-wide/32 v4, 0x40000

    .line 36
    .line 37
    .line 38
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iput-object v1, v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iput-object p0, v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    iput-object p0, v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    :try_start_2
    iget-object p0, v0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 58
    .line 59
    check-cast p0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iput-object p0, v0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    .line 81
    .line 82
    :goto_2
    return-void

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method
