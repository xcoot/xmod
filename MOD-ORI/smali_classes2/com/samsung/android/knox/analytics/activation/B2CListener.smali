.class public final Lcom/samsung/android/knox/analytics/activation/B2CListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PERMISSION_KNOX_ANALYTICS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] B2CListener"


# instance fields
.field public final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field public mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final checkRemovedReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final register()V
    .locals 7

    .line 1
    const-string v0, "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;-><init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    .line 13
    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    .line 15
    .line 16
    const-string v1, "B2CListenerThread"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v5, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object v5, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    .line 38
    .line 39
    const-string v4, "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    return-void
.end method
