.class public final synthetic Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/print/RemotePrintService;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    check-cast p1, Lcom/android/server/print/UserState;

    .line 30
    .line 31
    iget-object p0, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :pswitch_1
    check-cast p1, Lcom/android/server/print/UserState;

    .line 43
    .line 44
    iget-object p0, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p1, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    const/4 p1, 0x0

    .line 68
    :goto_0
    if-ge p1, p0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/android/server/print/UserState$3;

    .line 75
    .line 76
    :try_start_2
    iget-object v1, v1, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    .line 77
    .line 78
    check-cast v1, Landroid/print/IPrintServicesChangeListener;

    .line 79
    .line 80
    invoke-interface {v1}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    const-string v2, "UserState"

    .line 86
    .line 87
    const-string v3, "Error notifying for print services change"

    .line 88
    .line 89
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    :goto_2
    return-void

    .line 96
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    throw p1

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
