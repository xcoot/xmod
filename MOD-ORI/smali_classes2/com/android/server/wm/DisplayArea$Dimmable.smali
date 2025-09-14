.class public Lcom/android/server/wm/DisplayArea$Dimmable;
.super Lcom/android/server/wm/DisplayArea;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/wm/Dimmer;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 2
    .line 3
    return-object p0
.end method

.method public prepareSurfaces()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    new-instance v2, Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayArea;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iput-object v1, v2, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    .line 59
    .line 60
    :cond_3
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void
.end method
