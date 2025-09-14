.class public final Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

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
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "PackageRemovedReceiver: onReceive() "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p1, p2, v1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "B2C application removed: "

    .line 68
    .line 69
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->checkRemovedReceiver()V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method
