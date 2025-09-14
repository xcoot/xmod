.class public final Lcom/android/server/appfunctions/MetadataSyncAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_RESULT_COUNT_PER_PAGE:I


# instance fields
.field public final mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

.field public final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field public mCurrentSyncTask:Ljava/util/concurrent/Future;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 6
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec;->getResultCountPerPage()I

    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->DEFAULT_RESULT_COUNT_PER_PAGE:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/app/appsearch/AppSearchManager;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 18
    new-instance p1, Lcom/android/server/appfunctions/NamedThreadFactory;

    .line 20
    const-string p2, "AppFunctionSyncExecutors"

    .line 22
    invoke-direct {p1, p2}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 31
    iput-object p3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 33
    return-void
.end method

.method public static convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/app/appsearch/AppSearchResult;

    .line 25
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    return-object p0
.end method

.method public static getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B
    .locals 3

    .line 1
    const-string v0, "MetadataSyncAdapter"

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const v1, 0x8000080

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 22
    if-nez p1, :cond_0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "Signing info not found for package: "

    .line 28
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 33
    invoke-static {p1, p0, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object v2

    .line 37
    :cond_0
    :try_start_1
    const-string p1, "SHA256"

    .line 39
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 42
    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 45
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_2

    .line 51
    array-length v0, p0

    .line 52
    if-nez v0, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    aget-object p0, p0, v0

    .line 58
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :catch_0
    :cond_2
    :goto_0
    return-object v2

    .line 71
    :catch_1
    const-string p0, "Package name info not found for package: "

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v2
.end method

.method public static getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 8

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 38
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/util/ArraySet;

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    .line 50
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 53
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/util/ArraySet;

    .line 59
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-object v5, v4

    .line 63
    check-cast v5, Landroid/util/ArraySet;

    .line 65
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v4

    .line 69
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 75
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Landroid/util/ArraySet;

    .line 87
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-object v7, v6

    .line 91
    check-cast v7, Landroid/util/ArraySet;

    .line 93
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_2

    .line 99
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_0

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    return-object v0
.end method

.method public static getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 15
    new-instance v1, Landroid/app/appsearch/SearchSpec$Builder;

    .line 17
    invoke-direct {v1}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 20
    filled-new-array {p1}, [Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p4}, Landroid/app/appsearch/SearchSpec$Builder;->setResultCountPerPage(I)Landroid/app/appsearch/SearchSpec$Builder;

    .line 31
    move-result-object p4

    .line 32
    new-instance v1, Landroid/app/appsearch/PropertyPath;

    .line 34
    invoke-direct {v1, p2}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v2, Landroid/app/appsearch/PropertyPath;

    .line 39
    invoke-direct {v2, p3}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p4, p1, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addProjectionPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 53
    move-result-object p1

    .line 54
    check-cast p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    .line 59
    move-result-object p4

    .line 60
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    .line 62
    invoke-direct {v1, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/SearchSpec;)V

    .line 65
    invoke-virtual {p4, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 68
    move-result-object p1

    .line 69
    new-instance p4, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda5;

    .line 71
    invoke-direct {p4, p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)V

    .line 74
    invoke-virtual {p1, p4}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/util/List;

    .line 94
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 97
    move-result p4

    .line 98
    if-nez p4, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object p1

    .line 104
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result p4

    .line 108
    if-eqz p4, :cond_0

    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object p4

    .line 114
    check-cast p4, Landroid/app/appsearch/SearchResult;

    .line 116
    invoke-virtual {p4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1, p3}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    .line 127
    move-result-object p4

    .line 128
    invoke-virtual {p4, p2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p4

    .line 132
    new-instance v2, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;

    .line 134
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroid/util/ArraySet;

    .line 143
    invoke-virtual {v1, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    goto :goto_2

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->close()V

    .line 163
    return-object v0

    .line 164
    :goto_2
    if-eqz p0, :cond_2

    .line 166
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    goto :goto_3

    .line 170
    :catchall_1
    move-exception p0

    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 174
    :cond_2
    :goto_3
    throw p1
.end method

.method public static getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->DEFAULT_RESULT_COUNT_PER_PAGE:I

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Landroid/util/ArraySet;

    .line 29
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 32
    move-result v5

    .line 33
    add-int/2addr v4, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-ne v4, v0, :cond_2

    .line 37
    const-string v1, "b/400587895: getPackageToFunctionIdMapWithRetry is retrying for schemaType = "

    .line 39
    const-string v2, "MetadataSyncAdapter"

    .line 41
    invoke-static {v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/16 v1, 0xc8

    .line 46
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p0

    .line 58
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_1

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/util/ArraySet;

    .line 70
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 73
    move-result p2

    .line 74
    add-int/2addr v3, p2

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    if-eq v3, v0, :cond_2

    .line 78
    const-string p0, "b/400587895: First search yields "

    .line 80
    const-string p2, " results, but the second one with higher page size yields "

    .line 82
    const-string p3, " results. schemaType = "

    .line 84
    invoke-static {v4, v3, p0, p2, p3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0, p1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    return-object v1
.end method

.method public static getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1, p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final submitSyncRequest(Z)Lcom/android/internal/infra/AndroidFuture;
    .locals 8

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    .line 3
    const-string v1, "apps-db"

    .line 5
    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 11
    move-result-object v4

    .line 12
    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    .line 14
    const-string v1, "appfunctions-db"

    .line 16
    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 22
    move-result-object v5

    .line 23
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 25
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 28
    new-instance v1, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;

    .line 30
    move-object v2, v1

    .line 31
    move-object v3, p0

    .line 32
    move v6, p1

    .line 33
    move-object v7, v0

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 37
    iget-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter p1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    .line 42
    if-eqz v2, :cond_0

    .line 44
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    .line 67
    monitor-exit p1

    .line 68
    return-object v0

    .line 69
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;Z)V

    return-void
.end method

.method public trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    const-string v0, "AppFunctionStaticMetadata"

    const-string/jumbo v1, "functionId"

    const-string/jumbo v2, "packageName"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 3
    const-string v0, "AppFunctionRuntimeMetadata"

    .line 4
    invoke-static {p2, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 6
    invoke-static {p1, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p3, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 9
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11
    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 12
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createAppFunctionRuntimeSchema(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    .line 20
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_4
    invoke-static {}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createParentAppFunctionRuntimeSchema()Landroid/app/appsearch/AppSearchSchema;

    move-result-object p1

    .line 22
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 24
    new-instance v0, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    .line 25
    invoke-virtual {v0, v3}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/appsearch/AppSearchSchema;

    .line 27
    invoke-virtual {v4}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v5}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPackageNameFromSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-static {p1, v5}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 30
    :cond_5
    invoke-virtual {v4}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/app/appsearch/PackageIdentifier;

    invoke-direct {v8, v5, v6}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 31
    invoke-virtual {v0, v7, v3, v8}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 32
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 33
    iget-object v6, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    iget-object v7, v6, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 34
    iget-object v7, v7, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->trustedAgentList:Ljava/util/List;

    .line 35
    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v6, v6, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 37
    iget-object v6, v6, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->normalAgentList:Ljava/util/List;

    .line 38
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 40
    invoke-static {p1, v6}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_4

    .line 41
    :cond_6
    const-string/jumbo v8, "setSchemaTypeVisibilityForAgentPackages packageName : "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "MetadataSyncAdapter"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v4}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/app/appsearch/PackageIdentifier;

    invoke-direct {v9, v6, v7}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 43
    invoke-virtual {v0, v8, v3, v9}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    goto :goto_4

    .line 44
    :cond_7
    invoke-virtual {v4}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 45
    invoke-virtual {v0, v5, v6}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 46
    invoke-virtual {v4}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 47
    invoke-virtual {v0, v4, v5}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    goto/16 :goto_3

    .line 48
    :cond_8
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    move-result-object p0

    .line 49
    move-object p1, p2

    check-cast p1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p3

    new-instance v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p0, v4}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    .line 52
    invoke-virtual {p3, v0}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/SetSchemaResponse;

    .line 54
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_d

    .line 56
    new-instance p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    const-string p3, "app_functions_runtime"

    invoke-direct {p0, p3}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    move p3, p1

    .line 57
    :goto_5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_b

    .line 58
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 60
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 61
    invoke-static {v0, v5}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    goto :goto_6

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 63
    :cond_b
    invoke-virtual {p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object p0

    .line 64
    move-object p3, p2

    check-cast p3, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p3}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v2, p3, p0, v4}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    .line 67
    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchBatchResult;

    .line 69
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_c

    goto :goto_7

    .line 70
    :cond_c
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    .line 72
    :cond_d
    :goto_7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_11

    .line 73
    new-instance p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    move p3, p1

    .line 74
    :goto_8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_f

    .line 75
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 77
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    new-array v5, v3, [Landroid/app/appsearch/GenericDocument;

    new-instance v6, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {v6, v0, v4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v6}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v4

    aput-object v4, v5, p1

    .line 80
    invoke-virtual {p0, v5}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    goto :goto_9

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    .line 81
    :cond_f
    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    .line 82
    check-cast p2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p3, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p2, p0, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    .line 85
    invoke-virtual {p1, p3}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchBatchResult;

    .line 87
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_a

    .line 88
    :cond_10
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 89
    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_11
    :goto_a
    return-void
.end method
