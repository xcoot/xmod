.class public final Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "ActivationReceiver: onReceive() "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p1, "com.samsung.android.knox.analytics.intent.extra.B2C_PACKAGE_NAME"

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "com.samsung.android.knox.analytics.intent.extra.B2C_FEATURE"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "com.samsung.android.knox.analytics.intent.extra.B2C_ACTIVATION_STATUS"

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 58
    .line 59
    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    if-ne p2, p1, :cond_0

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 66
    .line 67
    iget-object v0, p1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 68
    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    new-instance p2, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;-><init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 77
    .line 78
    new-instance p1, Landroid/content/IntentFilter;

    .line 79
    .line 80
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string p2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo p2, "package"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 95
    .line 96
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p2, v0, p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    if-nez p2, :cond_1

    .line 108
    .line 109
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->checkRemovedReceiver()V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    return-void
.end method
