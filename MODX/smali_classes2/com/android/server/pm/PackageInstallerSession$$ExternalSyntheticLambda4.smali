.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/FileUtils$ProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:Landroid/system/Int64Ref;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;->f$1:Landroid/system/Int64Ref;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;->f$1:Landroid/system/Int64Ref;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 6
    .line 7
    iget-wide v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v1, v1, v3

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    iget-wide v1, p0, Landroid/system/Int64Ref;->value:J

    .line 16
    .line 17
    sub-long v1, p1, v1

    .line 18
    .line 19
    iput-wide p1, p0, Landroid/system/Int64Ref;->value:J

    .line 20
    .line 21
    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget p1, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 25
    .line 26
    long-to-float p2, v1

    .line 27
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 28
    .line 29
    iget-wide v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 30
    .line 31
    long-to-float v1, v1

    .line 32
    div-float/2addr p2, v1

    .line 33
    add-float/2addr p2, p1

    .line 34
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_0
    :goto_0
    return-void
.end method
