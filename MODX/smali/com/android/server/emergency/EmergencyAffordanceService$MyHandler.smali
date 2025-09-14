.class public final Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "airplane_mode_on"

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 9
    if-eq v0, v3, :cond_5

    .line 11
    const/4 v4, 0x2

    .line 12
    const-string v5, "EmergencyAffordanceService"

    .line 14
    if-eq v0, v4, :cond_3

    .line 16
    const/4 v4, 0x3

    .line 17
    if-eq v0, v4, :cond_2

    .line 19
    const/4 v4, 0x4

    .line 20
    if-eq v0, v4, :cond_0

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    const-string v0, "Unexpected message received: "

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget p1, p1, Landroid/os/Message;->what:I

    .line 31
    invoke-static {p0, p1, v5}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 44
    move-result p1

    .line 45
    if-ne p1, v3, :cond_1

    .line 47
    move v1, v3

    .line 48
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()V

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 68
    iget-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    .line 70
    if-eqz p1, :cond_4

    .line 72
    const-string p0, "Ignore empty countryIso report when APM is on."

    .line 74
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateNetworkCountry()V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 94
    move-result p1

    .line 95
    if-ne p1, v3, :cond_6

    .line 97
    move v1, v3

    .line 98
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateNetworkCountry()V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 109
    :goto_0
    return-void
.end method
