.class public final Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;
.super Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public mHub:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final onAirplaneModeSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAirplaneModeSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_1(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onLocationSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onMicrophoneSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onMicrophoneSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_1(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onWifiSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onWifiSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_1(Z)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getHubs()Landroid/util/Pair;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/hardware/contexthub/V1_1/IContexthub;

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/hardware/contexthub/V1_1/IContexthub;->getHubs()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 34
    .line 35
    new-instance v2, Landroid/hardware/location/ContextHubInfo;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Landroid/util/Pair;

    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 63
    .line 64
    invoke-interface {p0}, Landroid/hardware/contexthub/V1_0/IContexthub;->getHubs()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 83
    .line 84
    new-instance v2, Landroid/hardware/location/ContextHubInfo;

    .line 85
    .line 86
    invoke-direct {v2, v1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    new-instance p0, Landroid/util/Pair;

    .line 94
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAirplaneModeSettingChanged(Z)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onLocationSettingChanged(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/hardware/contexthub/V1_1/IContexthub;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0, p1}, Landroid/hardware/contexthub/V1_1/IContexthub;->onSettingChanged(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "IContextHubWrapper"

    .line 17
    .line 18
    const-string v0, "Failed to send setting change to Contexthub"

    .line 19
    .line 20
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    :pswitch_0
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onMicrophoneSettingChanged(Z)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onWifiSettingChanged(Z)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final supportsAirplaneModeSettingNotifications()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportsLocationSettingNotifications()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportsMicrophoneSettingNotifications()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportsWifiSettingNotifications()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
