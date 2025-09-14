.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/os/IRemoteCallback;

.field public final synthetic f$7:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;IIZZLcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$1:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$3:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$4:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$5:Z

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$7:Lcom/android/server/wallpaper/WallpaperData;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$1:Landroid/content/ComponentName;

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$2:I

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$3:I

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$4:Z

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$5:Z

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;->f$7:Lcom/android/server/wallpaper/WallpaperData;

    .line 14
    .line 15
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponentInternal(Landroid/content/ComponentName;Ljava/lang/String;IIZZLandroid/os/Bundle;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
