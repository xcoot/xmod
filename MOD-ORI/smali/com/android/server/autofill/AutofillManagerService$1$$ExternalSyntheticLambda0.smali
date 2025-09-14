.class public final synthetic Lcom/android/server/autofill/AutofillManagerService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final visit(Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/lit8 p0, p0, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz p0, :cond_3

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 22
    .line 23
    iget-boolean v1, v1, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v2, "destroyFinishedSessionsLocked(): "

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v2, v0, Lcom/android/server/autofill/Session;->id:I

    .line 40
    .line 41
    const-string v3, "AutofillManagerServiceImpl"

    .line 42
    .line 43
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 60
    .line 61
    :cond_2
    :goto_1
    add-int/lit8 p0, p0, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-void
.end method
