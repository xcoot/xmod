.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
.super Landroid/os/AsyncTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 3
    const-string p1, "NetworkAnalytics:NetworkAnalyticsDriver"

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const-string v2, "_deliverDataToRecipients: Starting Async task."

    .line 12
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 20
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 22
    if-eqz v2, :cond_2

    .line 24
    if-eqz v1, :cond_1

    .line 26
    const-string v1, "_deliverDataToRecipients: Initialzing handler thread from Async task."

    .line 28
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 33
    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 35
    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->initializeHandlerThread()V

    .line 38
    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 40
    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 48
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 50
    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->readDevice()Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 56
    const-wide/16 v1, 0x19

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    if-eqz v1, :cond_3

    .line 64
    const-string v1, "_deliverDataToRecipients: Data Delivery object is null. Terminate."

    .line 66
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 71
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_3

    .line 75
    :goto_2
    const-string/jumbo v2, "doInBackground: Exception"

    .line 78
    invoke-static {p1, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :catch_1
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 83
    sget-object p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->TAG:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    .line 88
    :goto_3
    const/4 p0, 0x0

    .line 89
    return-object p0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 3
    return-void
.end method

.method public final onPreExecute()V
    .locals 0

    .line 1
    return-void
.end method
