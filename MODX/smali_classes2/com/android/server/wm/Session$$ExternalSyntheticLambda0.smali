.class public final synthetic Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WallpaperController;

    .line 6
    .line 7
    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v1, p2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 13
    .line 14
    if-ne v1, v0, :cond_0

    .line 15
    .line 16
    iget v1, p2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 17
    .line 18
    if-eq v1, p0, :cond_1

    .line 19
    .line 20
    :cond_0
    iput v0, p2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 21
    .line 22
    iput p0, p2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 23
    .line 24
    iget-object p0, p1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    .line 29
    .line 30
    xor-int/lit8 p0, p0, 0x1

    .line 31
    .line 32
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
