.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:Lcom/android/server/wallpaper/WallpaperData;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;->f$1:Lcom/android/server/wallpaper/WallpaperData;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;->f$1:Lcom/android/server/wallpaper/WallpaperData;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 8
    .line 9
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 15
    .line 16
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
