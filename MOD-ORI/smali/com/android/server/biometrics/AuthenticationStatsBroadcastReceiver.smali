.class public final Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCollectorConsumer:Ljava/util/function/Consumer;

.field public final mModality:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/function/Consumer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mCollectorConsumer:Ljava/util/function/Consumer;

    .line 18
    .line 19
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mModality:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "android.intent.extra.user_handle"

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Received: "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "AuthenticationStatsBroadcastReceiver"

    .line 42
    .line 43
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mCollectorConsumer:Ljava/util/function/Consumer;

    .line 47
    .line 48
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 49
    .line 50
    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mModality:I

    .line 51
    .line 52
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/biometrics/AuthenticationStatsCollector;-><init>(Landroid/content/Context;ILcom/android/server/biometrics/sensors/BiometricNotificationImpl;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method
