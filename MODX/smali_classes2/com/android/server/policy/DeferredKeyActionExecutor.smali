.class public final Lcom/android/server/policy/DeferredKeyActionExecutor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBuffers:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/policy/DeferredKeyActionExecutor;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getActionsBufferWithLazyCleanUp(IJ)Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v1, v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mDownTime:J

    .line 12
    .line 13
    cmp-long v1, v1, p2

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    sget-boolean v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->DEBUG:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "getActionsBufferWithLazyCleanUp: cleaning up gesture actions for key "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "DeferredKeyAction"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    .line 47
    .line 48
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;-><init>(IJ)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-object v0
.end method

.method public final queueKeyAction(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    const/16 v0, 0x108

    .line 2
    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/policy/DeferredKeyActionExecutor;->getActionsBufferWithLazyCleanUp(IJ)Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-boolean p2, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mExecutable:Z

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    sget-boolean p2, Lcom/android/server/policy/DeferredKeyActionExecutor;->DEBUG:Z

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p3, "addAction: execute action for key "

    .line 18
    .line 19
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mKeyCode:I

    .line 23
    .line 24
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p2, "DeferredKeyAction"

    .line 36
    .line 37
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 45
    .line 46
    check-cast p0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
