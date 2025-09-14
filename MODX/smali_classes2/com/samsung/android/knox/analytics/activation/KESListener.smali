.class public final Lcom/samsung/android/knox/analytics/activation/KESListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

.field public static final EXTRA_ENROLL_STATUS:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.ENROLLED"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.PACKAGE_NAME"

.field public static final KME_BROADCAST_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/analytics/activation/KESListener;

    .line 2
    .line 3
    const-string v0, "[KnoxAnalytics] KESListener"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v1, "onReceive("

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ")"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 43
    .line 44
    const-string p1, "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.PACKAGE_NAME"

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.ENROLLED"

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKes(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final register()V
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "start()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v4, Landroid/content/IntentFilter;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

    .line 15
    .line 16
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x2

    .line 23
    const-string v5, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 24
    .line 25
    move-object v3, p0

    .line 26
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    return-void
.end method
