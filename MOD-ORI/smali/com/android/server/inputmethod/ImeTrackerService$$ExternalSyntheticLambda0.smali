.class public final synthetic Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ImeTrackerService;

.field public final synthetic f$1:Landroid/view/inputmethod/ImeTracker$Token;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;->f$1:Landroid/view/inputmethod/ImeTracker$Token;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;->f$1:Landroid/view/inputmethod/ImeTracker$Token;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, p0, v2, v3}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 13
    .line 14
    .line 15
    monitor-exit v1

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method
