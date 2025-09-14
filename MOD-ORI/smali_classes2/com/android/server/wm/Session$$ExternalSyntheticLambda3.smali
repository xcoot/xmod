.class public final synthetic Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;->f$0:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;->f$0:Z

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WallpaperController;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    iput-boolean p0, p2, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
