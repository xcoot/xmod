.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->startChangeResolution(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$Transaction;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
