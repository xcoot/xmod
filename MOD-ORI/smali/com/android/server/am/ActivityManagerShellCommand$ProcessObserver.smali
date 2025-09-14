.class public final Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIam:Landroid/app/IActivityManager;

.field public mPw:Ljava/io/PrintWriter;


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 2

    .line 1
    const-string v0, "New foreground process: "

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mIam:Landroid/app/IActivityManager;

    .line 6
    .line 7
    const-string v1, "android"

    .line 8
    .line 9
    invoke-interface {p3, p2, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 p3, 0x2

    .line 14
    if-ne p2, p3, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    .line 17
    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    .line 35
    .line 36
    const-string p2, "No top app found"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    .line 48
    .line 49
    const-string p2, "Error occurred in binder call"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_1
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
