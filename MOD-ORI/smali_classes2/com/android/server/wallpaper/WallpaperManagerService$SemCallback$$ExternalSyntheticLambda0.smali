.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$8:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Landroid/content/ComponentName;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$8:Landroid/os/Bundle;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;->f$8:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-boolean p0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 21
    .line 22
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponentInternal(Landroid/content/ComponentName;Ljava/lang/String;IIZZLandroid/os/Bundle;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
