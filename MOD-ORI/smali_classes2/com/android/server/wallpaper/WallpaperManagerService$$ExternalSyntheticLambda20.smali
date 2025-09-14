.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:Lcom/android/server/wallpaper/WallpaperData;

.field public final synthetic f$2:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;->f$1:Lcom/android/server/wallpaper/WallpaperData;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;->f$2:Lcom/android/server/wallpaper/WallpaperData;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;->f$1:Lcom/android/server/wallpaper/WallpaperData;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;->f$2:Lcom/android/server/wallpaper/WallpaperData;

    .line 6
    .line 7
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/window/flags/Flags;->offloadColorExtraction()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 22
    .line 23
    .line 24
    if-eq p0, v1, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 27
    .line 28
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 32
    .line 33
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
