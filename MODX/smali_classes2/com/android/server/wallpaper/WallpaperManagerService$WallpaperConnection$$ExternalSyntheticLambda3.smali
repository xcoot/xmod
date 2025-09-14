.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field public final synthetic f$1:Landroid/graphics/RectF;

.field public final synthetic f$2:Landroid/app/WallpaperColors;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/RectF;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$2:Landroid/app/WallpaperColors;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/RectF;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$2:Landroid/app/WallpaperColors;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$3:I

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    invoke-direct {p1, v3, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 30
    .line 31
    new-instance v4, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    invoke-direct {v4, v0, p0, v1, p1}, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wallpaper/LocalColorRepository;ILandroid/graphics/RectF;Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v2

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method
