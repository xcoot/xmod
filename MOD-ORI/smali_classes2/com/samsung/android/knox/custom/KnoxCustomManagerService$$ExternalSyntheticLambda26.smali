.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getUsbConnectionType$122()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$stopTcpDump$157()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_1
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLoadingLogoPath$13()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_2
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getMacAddress$117()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_3
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$powerOff$118()Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_4
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$clearDexLoadingLogo$6()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_5
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$startSmartView$51()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_6
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLockScreenHiddenItems$73()Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_7
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getEthernetState$64()Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_8
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$launchProkioskHomeActivity$153()Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_9
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getZeroPageState$136()Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_a
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getAppsButtonState$130()Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :pswitch_b
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getMobileNetworkType$106()Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_c
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSystemSoundsSilent$86()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :pswitch_d
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$removeLockScreen$54()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_e
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getHomeScreenMode$139()Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_f
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLockScreenHideOwnerInfo$151()Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_10
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$startProKioskMode$28()Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :pswitch_11
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getFavoriteAppsMaxCount$134()Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :pswitch_12
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDeveloperOptionsHidden$35()Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
