.class public final Lcom/android/server/CachedDeviceStateService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/CachedDeviceStateService;


# direct methods
.method public constructor <init>(Lcom/android/server/CachedDeviceStateService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v3

    .line 15
    sparse-switch v3, :sswitch_data_0

    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x2

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 32
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v0

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 43
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v2, v1

    .line 51
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 54
    goto :goto_2

    .line 55
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    .line 57
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    .line 62
    goto :goto_2

    .line 63
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    .line 65
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 67
    const-string/jumbo p1, "plugged"

    .line 70
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v0, v1

    .line 78
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    .line 81
    goto :goto_2

    .line 82
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    .line 84
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    .line 89
    :goto_2
    return-void

    .line 90
    nop

    .line 91
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_2
        -0x5bb23923 -> :sswitch_1
        -0x56ac2893 -> :sswitch_0
    .end sparse-switch

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
