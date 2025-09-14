.class public final synthetic Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "ConnectionHelper"

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget v2, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->$r8$clinit:I

    .line 16
    .line 17
    const-string v2, "binder died"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v2, "(!) unbound from service "

    .line 34
    .line 35
    :try_start_0
    sget v3, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->$r8$clinit:I

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p0, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    iget-object p0, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 73
    .line 74
    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    :goto_0
    iget-object p0, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    iput-object v2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 84
    .line 85
    const/4 v2, -0x1

    .line 86
    iput v2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

    .line 89
    .line 90
    if-eqz p0, :cond_1

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    .line 95
    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    iget p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mDeathEvent:I

    .line 99
    .line 100
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :goto_1
    sget v2, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->$r8$clinit:I

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p0, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    .line 117
    .line 118
    .line 119
    :cond_1
    :goto_2
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
