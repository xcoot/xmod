.class public final synthetic Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

.field public final synthetic f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

.field public final synthetic f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;ZLcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$3:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v4, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 15
    .line 16
    iget-object v5, v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 17
    .line 18
    sget-object v6, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 24
    .line 25
    iget-object v5, v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 26
    .line 27
    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;Z)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_4
    invoke-virtual {v4}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :catch_0
    move-exception v0

    .line 46
    goto :goto_3

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_2
    move-exception v1

    .line 55
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 59
    :goto_1
    :try_start_7
    invoke-virtual {v4}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_3
    move-exception v1

    .line 64
    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 68
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 69
    .line 70
    .line 71
    :goto_4
    return-void
.end method
