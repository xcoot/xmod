.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "BookKeeping time : 30_SECONDS_EXPIRED; OptOutTriggered="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 9
    .line 10
    iget-boolean v2, v2, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "IQIServiceBrokerExt"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 39
    .line 40
    iget-boolean v2, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput-boolean v2, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method
