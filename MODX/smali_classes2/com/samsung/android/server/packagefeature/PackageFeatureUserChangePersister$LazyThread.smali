.class public final Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 2
    .line 3
    const-string p1, "PackageFeatureUserChangePersister"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$msaveFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$mloadFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
