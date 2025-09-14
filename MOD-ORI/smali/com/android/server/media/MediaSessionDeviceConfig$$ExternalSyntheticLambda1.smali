.class public final synthetic Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/provider/DeviceConfig$Properties;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;->f$0:Landroid/provider/DeviceConfig$Properties;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;->f$0:Landroid/provider/DeviceConfig$Properties;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x2710

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sparse-switch v3, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string/jumbo v3, "media_session_calback_fgs_allowlist_duration_ms"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    goto :goto_0

    .line 31
    :sswitch_1
    const-string/jumbo v3, "media_session_callback_fgs_while_in_use_temp_allow_duration_ms"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :sswitch_2
    const-string/jumbo v3, "media_button_receiver_fgs_allowlist_duration_ms"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x0

    .line 54
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 59
    .line 60
    .line 61
    move-result-wide p0

    .line 62
    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsAllowlistDurationMs:J

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_1
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 66
    .line 67
    .line 68
    move-result-wide p0

    .line 69
    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide p0

    .line 76
    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    .line 77
    .line 78
    :goto_1
    return-void

    .line 79
    :sswitch_data_0
    .sparse-switch
        -0x75c89a12 -> :sswitch_2
        -0x3f30504f -> :sswitch_1
        0x6b7d1e9e -> :sswitch_0
    .end sparse-switch

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
