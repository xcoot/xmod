.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2
    .line 3
    check-cast p1, Landroid/view/Display;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 10
    .line 11
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(Landroid/view/Display;I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method
