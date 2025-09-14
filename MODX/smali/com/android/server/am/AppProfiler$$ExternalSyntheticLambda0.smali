.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 3
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 5
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 7
    iget-boolean v1, v0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iput-boolean v2, v0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    .line 14
    :cond_0
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 16
    const/4 v3, 0x7

    .line 17
    if-lt v1, v3, :cond_1

    .line 19
    const/16 v3, 0x10

    .line 21
    if-lt v1, v3, :cond_2

    .line 23
    :cond_1
    iget-boolean v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 25
    if-eqz v0, :cond_3

    .line 27
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 29
    if-eqz p0, :cond_3

    .line 31
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 33
    if-eqz p0, :cond_3

    .line 35
    const/16 v0, 0x14

    .line 37
    :try_start_0
    invoke-interface {p0, v0}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 40
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 42
    iput-boolean v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 44
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 46
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 48
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    :cond_3
    return-void
.end method
