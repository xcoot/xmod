.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4
    .line 5
    check-cast p1, Landroid/view/Display;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(Landroid/view/Display;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method
