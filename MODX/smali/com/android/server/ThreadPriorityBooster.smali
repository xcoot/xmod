.class public Lcom/android/server/ThreadPriorityBooster;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ENABLE_LOCK_GUARD:Z = false

.field public static final PRIORITY_NOT_ADJUSTED:I = 0x7fffffff


# instance fields
.field public volatile mBoostToPriority:I

.field public final mLockGuardIndex:I

.field public final mThreadState:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/ThreadPriorityBooster$1;

    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    .line 11
    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 13
    iput p2, p0, Lcom/android/server/ThreadPriorityBooster;->mLockGuardIndex:I

    .line 15
    return-void
.end method


# virtual methods
.method public boost()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 9
    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 11
    if-nez v1, :cond_0

    .line 13
    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    .line 15
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    .line 18
    move-result v1

    .line 19
    iget v2, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 21
    if-le v1, v2, :cond_0

    .line 23
    iget v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    .line 25
    iget p0, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 27
    invoke-static {v2, p0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 30
    iput v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    .line 32
    :cond_0
    iget p0, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 34
    add-int/lit8 p0, p0, 0x1

    .line 36
    iput p0, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 38
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 9
    iget v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 15
    if-nez v0, :cond_0

    .line 17
    iget v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    .line 19
    const v1, 0x7fffffff

    .line 22
    if-eq v0, v1, :cond_0

    .line 24
    iget v2, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    .line 26
    invoke-static {v2, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 29
    iput v1, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    .line 31
    :cond_0
    return-void
.end method

.method public final setBoostToPriority(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 3
    iget-object p0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 11
    iget v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    .line 17
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 20
    move-result v0

    .line 21
    if-eq v0, p1, :cond_0

    .line 23
    iget p0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    .line 25
    invoke-static {p0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 28
    :cond_0
    return-void
.end method
