.class public final Lcom/android/server/connectivity/NetdEventListenerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    const-string/jumbo p2, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_3

    .line 30
    const-string/jumbo p2, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string/jumbo p2, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 49
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance p0, Ljava/io/File;

    .line 56
    const-string p1, "/data/log/err/mobiledata_dns.dat"

    .line 58
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 73
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->writeMobileDataDnsFile()V

    .line 76
    :cond_4
    :goto_1
    return-void
.end method
