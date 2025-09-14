.class public final Lcom/android/server/MmsServiceBroker$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$1;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    const-string p0, "MmsServiceBroker"

    .line 8
    const-string p1, "Unknown message"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$1;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string p1, "MmsServiceBroker"

    .line 21
    const-string v1, "Connecting to MmsService"

    .line 23
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 29
    if-eqz p1, :cond_1

    .line 31
    const-string p1, "MmsServiceBroker"

    .line 33
    const-string v0, "Already connected"

    .line 35
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    monitor-exit p0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 44
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 47
    sget-object v1, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 54
    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Lcom/android/server/MmsServiceBroker$2;

    .line 56
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_2

    .line 62
    const-string p1, "MmsServiceBroker"

    .line 64
    const-string v0, "Failed to bind to MmsService"

    .line 66
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    :try_start_2
    const-string v0, "MmsServiceBroker"

    .line 73
    const-string v1, "Forbidden to bind to MmsService"

    .line 75
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_2
    :goto_0
    monitor-exit p0

    .line 79
    :goto_1
    return-void

    .line 80
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw p1
.end method
