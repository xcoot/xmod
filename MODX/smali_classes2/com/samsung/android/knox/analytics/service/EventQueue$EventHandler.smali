.class public final Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p1, "handleMessage(): msg is null!"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->waitVersioningCompleted()V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const-string v2, "KnoxAnalyticsData"

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "handleMessage(): invalid msg.what"

    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_CLEANED_LOG_API"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;IZ)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_KA_DEACTIVATION"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->enqueueEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->stop()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_LOG_API"

    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->enqueueEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void
.end method
