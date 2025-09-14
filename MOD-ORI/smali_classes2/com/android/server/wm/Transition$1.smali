.class public final Lcom/android/server/wm/Transition$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# instance fields
.field public final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Transition$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransactionCommitTimeout()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/wm/Transition$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/Transition$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
