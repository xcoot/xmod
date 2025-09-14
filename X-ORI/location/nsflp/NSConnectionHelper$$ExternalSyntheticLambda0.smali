.class public final synthetic Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/Location;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/os/Message;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroid/location/INSLocationManager;->onMessageUpdated(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v0, "NSConnectionHelper"

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {v0, p0}, Landroid/location/INSLocationManager;->onGnssEventUpdated(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception p0

    .line 52
    const-string v0, "NSConnectionHelper"

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_1
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Landroid/location/Location;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    :try_start_2
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-interface {v0, p0}, Landroid/location/INSLocationManager;->onPassiveLocationReported(Landroid/location/Location;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_2
    move-exception p0

    .line 80
    const-string v0, "NSConnectionHelper"

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_2
    return-void

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Landroid/location/GnssStatus;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    :try_start_3
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-interface {v0, p0}, Landroid/location/INSLocationManager;->onSatelliteStatusUpdated(Landroid/location/GnssStatus;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :catch_3
    move-exception p0

    .line 108
    const-string v0, "NSConnectionHelper"

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_3
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
