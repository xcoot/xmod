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

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 6
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    iput-object p3, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mCollectorConsumer:Ljava/util/function/Consumer;

    .line 19
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mModality:I

    .line 21
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "android.intent.extra.user_handle"

    .line 3
    const/16 v1, -0x2710

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "Received: "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    const-string v0, "AuthenticationStatsBroadcastReceiver"

    .line 43
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mCollectorConsumer:Ljava/util/function/Consumer;

    .line 48
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 50
    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mModality:I

    .line 52
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    .line 54
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/biometrics/AuthenticationStatsCollector;-><init>(Landroid/content/Context;ILcom/android/server/biometrics/sensors/BiometricNotificationImpl;)V

    .line 60
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    :cond_0
    return-void
.end method
