.class public final synthetic Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;->f$0:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;->f$0:F

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
    iget v0, p2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 11
    .line 12
    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput p0, p2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    iput p0, p1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 22
    .line 23
    iget-object p0, p1, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    iget-object p2, p1, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p2, p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    sub-int/2addr p0, v0

    .line 38
    :goto_0
    if-ltz p0, :cond_0

    .line 39
    .line 40
    iget-object p2, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 p0, p0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
