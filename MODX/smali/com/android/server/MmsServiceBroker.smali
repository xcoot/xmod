.class public final Lcom/android/server/MmsServiceBroker;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

.field public static final FAKE_MMS_SENT_URI:Landroid/net/Uri;

.field public static final FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

.field public static final FAKE_SMS_SENT_URI:Landroid/net/Uri;

.field public static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field public volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mConnection:Lcom/android/server/MmsServiceBroker$2;

.field public final mConnectionHandler:Lcom/android/server/MmsServiceBroker$1;

.field public final mContext:Landroid/content/Context;

.field public volatile mService:Lcom/android/internal/telephony/IMms;

.field public final mServiceStubForFailure:Lcom/android/server/MmsServiceBroker$3;


# direct methods
.method public static -$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 7
    const-string v1, "appops"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/AppOpsManager;

    .line 15
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 19
    return-object p0
.end method

.method public static -$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 8
    monitor-exit p0

    .line 9
    goto :goto_2

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_4

    .line 12
    :cond_0
    const-string v0, "MmsServiceBroker"

    .line 14
    const-string v1, "MmsService not connected. Try connecting..."

    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Lcom/android/server/MmsServiceBroker$1;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const-wide/16 v2, 0xfa0

    .line 35
    add-long/2addr v0, v2

    .line 36
    :goto_0
    const-wide/16 v4, 0x0

    .line 38
    cmp-long v4, v2, v4

    .line 40
    if-lez v4, :cond_2

    .line 42
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v2

    .line 47
    :try_start_2
    const-string v3, "MmsServiceBroker"

    .line 49
    const-string v4, "Connection wait interrupted"

    .line 51
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :goto_1
    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 56
    if-eqz v2, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 60
    monitor-exit p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    move-result-wide v2

    .line 66
    sub-long v2, v0, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string v0, "MmsServiceBroker"

    .line 71
    const-string v1, "Can not connect to MmsService (timed out)"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    const/4 v0, 0x0

    .line 78
    :goto_2
    if-eqz v0, :cond_3

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/server/MmsServiceBroker$3;

    .line 83
    :goto_3
    return-object v0

    .line 84
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-string/jumbo v1, "com.android.mms.service"

    .line 6
    const-string/jumbo v2, "com.android.mms.service.MmsService"

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sput-object v0, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 14
    const-string/jumbo v0, "content://sms/sent/0"

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    .line 23
    const-string/jumbo v0, "content://mms/sent/0"

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    .line 32
    const-string/jumbo v0, "content://sms/draft/0"

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    .line 41
    const-string/jumbo v0, "content://mms/draft/0"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 7
    new-instance v1, Lcom/android/server/MmsServiceBroker$1;

    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$1;-><init>(Lcom/android/server/MmsServiceBroker;)V

    .line 12
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Lcom/android/server/MmsServiceBroker$1;

    .line 14
    new-instance v1, Lcom/android/server/MmsServiceBroker$2;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$2;-><init>(Lcom/android/server/MmsServiceBroker;)V

    .line 19
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Lcom/android/server/MmsServiceBroker$2;

    .line 21
    new-instance v1, Lcom/android/server/MmsServiceBroker$3;

    .line 23
    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$3;-><init>(Lcom/android/server/MmsServiceBroker;)V

    .line 26
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/server/MmsServiceBroker$3;

    .line 28
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 32
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/MmsServiceBroker$BinderService;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;)V

    .line 6
    const-string/jumbo v1, "imms"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 12
    return-void
.end method
