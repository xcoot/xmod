.class public final synthetic Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WallpaperController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WallpaperController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 13
    .line 14
    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 23
    .line 24
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 25
    .line 26
    :cond_0
    return-void
.end method
