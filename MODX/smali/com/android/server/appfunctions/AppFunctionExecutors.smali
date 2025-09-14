.class public abstract Lcom/android/server/appfunctions/AppFunctionExecutors;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 10
    move-result v1

    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 18
    move-result v2

    .line 19
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 23
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 26
    new-instance v7, Lcom/android/server/appfunctions/NamedThreadFactory;

    .line 28
    const-string v0, "AppFunctionExecutors"

    .line 30
    invoke-direct {v7, v0}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 33
    const-wide/16 v3, 0x0

    .line 35
    move-object v0, v8

    .line 36
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 39
    sput-object v8, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 41
    return-void
.end method
