.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const-string p3, "att_iqi_report_diagnostic"

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 16
    .line 17
    invoke-static {p1, p3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move p2, v1

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 22
    .line 23
    iget-boolean p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const-string p1, "IQIServiceBrokerExt"

    .line 28
    .line 29
    const-string/jumbo p3, "onChange: opt="

    .line 30
    .line 31
    .line 32
    const-string v0, " service="

    .line 33
    .line 34
    invoke-static {p2, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 39
    .line 40
    iget-boolean v0, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string/jumbo v0, "running"

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v0, "stopped"

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-static {p3, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    if-nez p2, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 57
    .line 58
    iget-boolean p3, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    .line 59
    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    iget-object p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p1

    .line 65
    :try_start_0
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 66
    .line 67
    iput-boolean v1, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    .line 68
    .line 69
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object p1, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    iget-object p2, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    .line 73
    .line 74
    new-instance p3, Landroid/content/IntentFilter;

    .line 75
    .line 76
    const-string v0, "com.att.iqi.action.UPLOAD_COMPLETE"

    .line 77
    .line 78
    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x2

    .line 82
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    .line 94
    .line 95
    const-wide/16 p2, 0x7530

    .line 96
    .line 97
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_3
    if-ne p2, v1, :cond_5

    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 107
    .line 108
    iget-boolean p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    invoke-static {p0, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_1
    return-void
.end method
