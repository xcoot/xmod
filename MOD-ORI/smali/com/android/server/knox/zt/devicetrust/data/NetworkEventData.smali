.class public final Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final destIp:Ljava/lang/String;

.field public final destPort:I

.field public final eventType:I

.field public final family:I

.field public final ifIndex:I

.field public interfaceName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public final protocol:I

.field public final srcIp:Ljava/lang/String;

.field public final srcPort:I

.field public timestamp:J

.field public final uid:I


# direct methods
.method public constructor <init>(IJIIIILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->ifIndex:I

    .line 11
    .line 12
    iput p6, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->family:I

    .line 13
    .line 14
    iput p7, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->protocol:I

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcIp:Ljava/lang/String;

    .line 17
    .line 18
    iput p9, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcPort:I

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destIp:Ljava/lang/String;

    .line 21
    .line 22
    iput p11, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final adjustToActualTimeInMillis(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    const-wide/32 v0, 0xf4240

    .line 5
    .line 6
    .line 7
    div-long/2addr p1, v0

    .line 8
    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    .line 9
    .line 10
    return-void
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "eventType"

    .line 7
    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "timestamp"

    .line 15
    .line 16
    .line 17
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "uid"

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "ifIndex"

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->ifIndex:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "family"

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->family:I

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "protocol"

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->protocol:I

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "sourcePort"

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcPort:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "destPort"

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "sourceAddr"

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcIp:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "remoteAddr"

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destIp:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "packageName"

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->packageName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "interfaceName"

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->interfaceName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method

.method public final setInterfaceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->interfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->ifIndex:I

    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->family:I

    .line 12
    .line 13
    iget v6, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->protocol:I

    .line 14
    .line 15
    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcIp:Ljava/lang/String;

    .line 16
    .line 17
    iget v8, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcPort:I

    .line 18
    .line 19
    iget-object v9, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destIp:Ljava/lang/String;

    .line 20
    .line 21
    iget v10, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    .line 22
    .line 23
    iget-object v11, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->interfaceName:Ljava/lang/String;

    .line 26
    .line 27
    const-string v12, "EventType : "

    .line 28
    .line 29
    const-string v13, " | Time : "

    .line 30
    .line 31
    invoke-static {v0, v12, v1, v2, v13}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, " | UID : "

    .line 36
    .line 37
    const-string v2, " |Interface Idx : "

    .line 38
    .line 39
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 40
    .line 41
    .line 42
    const-string v1, " | Family : "

    .line 43
    .line 44
    const-string v2, " | Protocol : "

    .line 45
    .line 46
    invoke-static {v5, v6, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 47
    .line 48
    .line 49
    const-string v1, " |Source IP : "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " | Source port : "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " |Dest IP : "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " | Dest port : "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " | Package Name: "

    .line 82
    .line 83
    const-string v2, " | Interface: "

    .line 84
    .line 85
    invoke-static {v0, v1, v11, v2, p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
