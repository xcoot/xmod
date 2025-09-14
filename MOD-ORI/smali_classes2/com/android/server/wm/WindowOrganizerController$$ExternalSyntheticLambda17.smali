.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoostedRequested:Z

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    .line 20
    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_1

    .line 28
    .line 29
    iget-object v3, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    .line 30
    .line 31
    check-cast v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    .line 46
    .line 47
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method
