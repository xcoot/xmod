.class public final Lcom/android/server/pm/ParallelPackageParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public volatile mInterruptedInThread:Ljava/lang/String;

.field public final mPackageParser:Lcom/android/internal/pm/parsing/PackageParser2;

.field public final mQueue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/internal/pm/parsing/PackageParser2;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public parsePackage(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/internal/pm/parsing/PackageParser2;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 11
    .line 12
    iget p2, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParserException;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .locals 3

    .line 1
    const-string v0, "Interrupted in "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    check-cast p0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 16
    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/InterruptedException;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v1, p0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method
