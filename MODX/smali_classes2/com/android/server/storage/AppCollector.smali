.class public final Lcom/android/server/storage/AppCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

.field public mStats:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lcom/android/server/storage/AppCollector$BackgroundHandler;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string/jumbo v0, "user"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v5, v0

    .line 26
    check-cast v5, Landroid/os/UserManager;

    .line 27
    .line 28
    const-string/jumbo v0, "storagestats"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    move-object v6, p1

    .line 36
    check-cast v6, Landroid/app/usage/StorageStatsManager;

    .line 37
    .line 38
    move-object v0, v7

    .line 39
    move-object v1, p0

    .line 40
    move-object v3, p2

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/android/server/storage/AppCollector$BackgroundHandler;-><init>(Lcom/android/server/storage/AppCollector;Landroid/os/Looper;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/usage/StorageStatsManager;)V

    .line 42
    .line 43
    .line 44
    iput-object v7, p0, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    .line 45
    .line 46
    return-void
.end method
