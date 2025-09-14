.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 6
    .line 7
    const/4 p1, 0x6

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
