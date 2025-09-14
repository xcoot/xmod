.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl;
.super Lcom/samsung/android/isrb/IIsrbManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBootComplete:Z

.field public mBuildtime:J

.field public mContext:Landroid/content/Context;

.field public mErrAlertNum:I

.field public mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

.field public mIsNetworkReady:Z

.field public mIsSystemErrPopup:Z

.field public mLooper:Landroid/os/Looper;

.field public mPreviousTipsDate:I

.field public mPreviousTipsMonth:I

.field public mPreviousTipsTime:I

.field public mPreviousTipsYear:I

.field public mReceiver:Lcom/android/server/isrb/IsrbManagerServiceImpl$1;

.field public mSystemReady:Z


# virtual methods
.method public final isBootCompleteState()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    .line 3
    return p0
.end method

.method public final setFakeTime()V
    .locals 2

    .line 1
    const-string v0, "IsrbManagerServiceImpl"

    .line 3
    const-string v1, "Fake time Check in Hooker"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    return-void
.end method

.method public final setIsrbEnable(Z)V
    .locals 0

    .line 1
    const-string/jumbo p0, "persist.sys.enable_isrb"

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public final showSystemErrDialog()V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    .line 11
    const-string/jumbo v2, "sys.isrb.networkcrash"

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result v2

    .line 19
    xor-int/2addr v2, v1

    .line 20
    iput-boolean v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    .line 22
    iget v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    .line 24
    const/16 v4, 0xc

    .line 26
    if-ge v2, v4, :cond_0

    .line 28
    add-int/2addr v2, v1

    .line 29
    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    .line 31
    :cond_0
    const v1, 0x10406b2

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 40
    iget-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    .line 42
    if-nez v1, :cond_1

    .line 44
    const v1, 0x10406b0

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 50
    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, v2}, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;-><init>(I)V

    .line 56
    const v2, 0x10406ae

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const v1, 0x10406b1

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 69
    iget v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    .line 71
    if-ge v1, v4, :cond_2

    .line 73
    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;

    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-direct {v1, v2}, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;-><init>(I)V

    .line 79
    const v2, 0x10406ad

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_2
    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;

    .line 87
    invoke-direct {v1, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    .line 90
    const v2, 0x10406af

    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;

    .line 102
    invoke-direct {v1, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 111
    move-result-object p0

    .line 112
    const/16 v1, 0x7d3

    .line 114
    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    .line 117
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 123
    return-void
.end method
