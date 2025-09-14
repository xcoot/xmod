.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notifyPackageInstallStatusChange(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iput-boolean p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 23
    .line 24
    :cond_0
    monitor-exit v1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    .line 27
    .line 28
    :cond_0
    monitor-exit v1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
