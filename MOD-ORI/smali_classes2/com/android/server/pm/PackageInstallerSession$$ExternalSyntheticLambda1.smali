.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;IJLandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$3:Landroid/app/PendingIntent;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-wide v5, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$2:J

    .line 6
    .line 7
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;->f$3:Landroid/app/PendingIntent;

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 22
    .line 23
    iget-object v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    new-instance v8, Landroid/util/ArraySet;

    .line 29
    .line 30
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalListeners:Ljava/util/Set;

    .line 31
    .line 32
    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget v9, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageArchiver;->notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw v0
.end method
