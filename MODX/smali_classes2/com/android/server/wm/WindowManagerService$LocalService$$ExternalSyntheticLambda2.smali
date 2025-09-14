.class public final synthetic Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object p0, p1, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
