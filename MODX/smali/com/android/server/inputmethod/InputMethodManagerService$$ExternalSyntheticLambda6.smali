.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 3
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 10
    monitor-enter v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    iput-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    .line 14
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 16
    if-eq p0, v2, :cond_0

    .line 18
    monitor-exit v1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeInitImeNavbarConfigLocked(I)V

    .line 25
    monitor-exit v1

    .line 26
    :goto_0
    return-void

    .line 27
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method
