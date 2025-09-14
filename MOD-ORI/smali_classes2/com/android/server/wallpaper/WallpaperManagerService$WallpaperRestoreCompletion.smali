.class public final Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onSemWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSemWallpaperColorsAnalysisRequested(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWallpaperChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    .line 1
    return-void
.end method
