.class public final synthetic Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v2, "ConnectionHelper"

    .line 12
    const-string v3, "(!) bound to service "

    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_0
    sget v5, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->$r8$clinit:I

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v3, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 38
    iput-object p0, v3, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 40
    iget-object p0, v3, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPackageName:Ljava/lang/String;

    .line 42
    invoke-static {v3, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mgetPidFromPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Ljava/lang/String;)I

    .line 45
    move-result p0

    .line 46
    iput p0, v3, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    .line 48
    iget-object p0, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 50
    iget-object v3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 52
    if-eqz v3, :cond_1

    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    .line 58
    iget-object p0, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 60
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

    .line 62
    if-eqz p0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 66
    iget-object v3, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    .line 68
    if-eqz v3, :cond_0

    .line 70
    iget p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mAliveEvent:I

    .line 72
    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 75
    :cond_0
    iget-object p0, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 77
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 79
    new-instance v3, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda2;

    .line 81
    invoke-direct {v3, v0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;)V

    .line 84
    invoke-interface {p0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    sget v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->$r8$clinit:I

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 100
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    .line 103
    :cond_1
    :goto_0
    return-void
.end method
