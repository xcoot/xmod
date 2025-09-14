.class public final Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/uri/UriGrantsManagerService;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "uri-grants"

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    .line 6
    .line 7
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 16
    .line 17
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/uri/UriMetricsHelper;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-class v0, Landroid/app/StatsManager;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/app/StatsManager;

    .line 38
    .line 39
    sget-object v0, Lcom/android/server/uri/UriMetricsHelper;->DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;

    .line 40
    .line 41
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    new-instance v2, Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/uri/UriMetricsHelper;)V

    .line 46
    .line 47
    .line 48
    const/16 p0, 0x27a4

    .line 49
    .line 50
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "uri_grants"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/uri/UriMetricsHelper;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lcom/android/server/uri/UriMetricsHelper;-><init>(Landroid/content/Context;Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    .line 17
    .line 18
    new-instance p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 21
    .line 22
    .line 23
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 24
    .line 25
    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
