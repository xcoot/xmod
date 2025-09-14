.class public final synthetic Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;->f$2:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;->f$1:F

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;->f$2:F

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->this$0:Lcom/android/server/wm/RefreshRatePolicy;

    .line 16
    .line 17
    iget v4, v3, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 18
    .line 19
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v3, v3, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 24
    .line 25
    invoke-static {v3, p0}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    iget-object v2, v2, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 32
    .line 33
    invoke-direct {v3, v1, p0}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
