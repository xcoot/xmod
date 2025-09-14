.class public final synthetic Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;->f$1:Z

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v1, "ConnectionHelper"

    .line 10
    const-string v2, "(*) bind to service "

    .line 12
    const-string v3, "already bound to service "

    .line 14
    :try_start_0
    iget-object v4, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v5, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    .line 18
    if-eqz v4, :cond_0

    .line 20
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    .line 40
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 43
    new-instance v4, Landroid/content/Intent;

    .line 45
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 48
    iget-object v6, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPackageName:Ljava/lang/String;

    .line 50
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    .line 73
    iget-object v3, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 75
    const/4 v5, 0x1

    .line 76
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_1

    .line 82
    const-string p0, "bind failed!"

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    .line 91
    const-string/jumbo p0, "schedule bind timer for 30000 secs"

    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

    .line 99
    const-wide/16 v2, 0x7530

    .line 101
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    iput-boolean v5, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mHasCallbacks:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    goto :goto_1

    .line 107
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    :goto_1
    return-void
.end method
