.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceChange(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 6
    .line 7
    const-string v1, "IQIServiceBrokerExt"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "onIQIServiceChangeCallback : IQIService enable: "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string/jumbo v0, "running"

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo v0, "stopped"

    .line 30
    .line 31
    .line 32
    :goto_0
    const-string/jumbo v2, "onIQIServiceChangeCallback : newServiceState "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_2
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    const-wide/16 v2, 0x7e7

    .line 51
    .line 52
    invoke-virtual {p1, v2, v3}, Lcom/att/iqi/lib/IQIManager;->setUnlockCode(J)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-boolean p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    const-string/jumbo p0, "main unlock key was successfully set: #*xxx*2023#"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_3
    const/4 p0, 0x1

    .line 69
    invoke-static {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method
