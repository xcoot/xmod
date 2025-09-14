.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mIdentity:Ljava/lang/Object;

.field public final mPermitted:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->$r8$classId:I

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 6
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mPermitted:Z

    .line 8
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mIdentity:Ljava/lang/Object;

    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " provider stationary/idle "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mPermitted:Z

    .line 23
    if-eqz v1, :cond_0

    .line 25
    const-string/jumbo v1, "throttled"

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string/jumbo v1, "unthrottled"

    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", request = "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mIdentity:Ljava/lang/Object;

    .line 42
    check-cast p0, Landroid/location/provider/ProviderRequest;

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " provider client "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mIdentity:Ljava/lang/Object;

    .line 69
    check-cast v1, Landroid/location/util/identity/CallerIdentity;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, " -> "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-boolean p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mPermitted:Z

    .line 81
    if-eqz p0, :cond_1

    .line 83
    const-string/jumbo p0, "foreground"

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const-string p0, "background"

    .line 89
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, " provider client "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mIdentity:Ljava/lang/Object;

    .line 114
    check-cast v1, Landroid/location/util/identity/CallerIdentity;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, " -> "

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-boolean p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mPermitted:Z

    .line 126
    if-eqz p0, :cond_2

    .line 128
    const-string/jumbo p0, "permitted"

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    const-string/jumbo p0, "unpermitted"

    .line 135
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
