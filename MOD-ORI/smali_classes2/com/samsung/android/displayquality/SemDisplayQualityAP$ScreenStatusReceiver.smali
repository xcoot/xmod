.class final Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;


# direct methods
.method public static synthetic $r8$lambda$UFzDN-gLG2m1X2vCxGgpiDGKL3E(Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->lambda$onReceive$0(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 1
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOnAsync()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOffAsync()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOn()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOff()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 33
    .line 34
    iget-boolean p2, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mUseScreenStatusAsyncHandle:Z

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-instance v0, Ljava/lang/Thread;

    .line 43
    .line 44
    new-instance v1, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method
