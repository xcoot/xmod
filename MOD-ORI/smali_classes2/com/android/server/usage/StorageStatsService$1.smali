.class public final Lcom/android/server/usage/StorageStatsService$1;
.super Landroid/os/storage/StorageEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/storage/VolumeInfo;->type:I

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-ne p3, p2, :cond_2

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 29
    .line 30
    invoke-interface {p0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    :try_start_2
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 40
    :catch_1
    move-exception p0

    .line 41
    const-string p1, "StorageStatsService"

    .line 42
    .line 43
    const-string p2, "Failed to invalidate mounts"

    .line 44
    .line 45
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method
