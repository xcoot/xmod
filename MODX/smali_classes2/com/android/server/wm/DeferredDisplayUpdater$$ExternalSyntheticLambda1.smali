.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

.field public final synthetic f$1:Landroid/view/DisplayInfo;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeferredDisplayUpdater;Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$1:Landroid/view/DisplayInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$1:Landroid/view/DisplayInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    .line 6
    .line 7
    iput-object v1, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
