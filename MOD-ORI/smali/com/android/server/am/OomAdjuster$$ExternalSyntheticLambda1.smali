.class public final synthetic Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 6
    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-wide/16 v1, 0x40

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v5, "setProcessGroup "

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " to "

    .line 32
    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 59
    .line 60
    .line 61
    :cond_2
    throw p0

    .line 62
    :catch_0
    if-eqz v3, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 66
    return p0
.end method
