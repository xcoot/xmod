.class public final Lcom/android/server/webkit/WebViewUpdateService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sAppWaitingForRelroCompletionDelay:Lcom/android/modules/expresslog/Histogram;

.field public static final sPrepareWebViewInSystemServerLatency:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

.field public mWebViewUpdatedReceiver:Lcom/android/server/webkit/WebViewUpdateService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 2
    .line 3
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 4
    .line 5
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 6
    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/high16 v5, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "webview.value_prepare_webview_in_system_server_latency"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/server/webkit/WebViewUpdateService;->sPrepareWebViewInSystemServerLatency:Lcom/android/modules/expresslog/Histogram;

    .line 22
    .line 23
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 24
    .line 25
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 26
    .line 27
    const v2, 0x3fb33333    # 1.4f

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v2, "webview.value_app_waiting_for_relro_completion_delay"

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/android/server/webkit/WebViewUpdateService;->sAppWaitingForRelroCompletionDelay:Lcom/android/modules/expresslog/Histogram;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    .line 11
    .line 12
    sget-object v1, Lcom/android/server/webkit/SystemImpl$LazyHolder;->INSTANCE:Lcom/android/server/webkit/SystemImpl;

    .line 13
    .line 14
    invoke-direct {v0, p1, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemImpl;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    .line 21
    .line 22
    sget-object v1, Lcom/android/server/webkit/SystemImpl$LazyHolder;->INSTANCE:Lcom/android/server/webkit/SystemImpl;

    .line 23
    .line 24
    invoke-direct {v0, p1, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemImpl;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateService$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateService$1;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Lcom/android/server/webkit/WebViewUpdateService$1;

    .line 7
    .line 8
    new-instance v4, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 19
    .line 20
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "package"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    array-length v1, v0

    .line 41
    const/4 v2, 0x0

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, v1, :cond_0

    .line 44
    .line 45
    aget-object v5, v0, v3

    .line 46
    .line 47
    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v4, v5, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Lcom/android/server/webkit/WebViewUpdateService$1;

    .line 60
    .line 61
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v3, v7

    .line 66
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const-string v0, "android.intent.action.USER_STARTED"

    .line 70
    .line 71
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Lcom/android/server/webkit/WebViewUpdateService$1;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v1, "webviewupdate"

    .line 94
    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
