.class public abstract Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    const-wide v1, 0x20b00000001L

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 27
    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/Channel;->id:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 28
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    const-wide v4, 0x10900000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 29
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    const-wide v4, 0x10900000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    const-wide v1, 0x20b00000001L

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 40
    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 41
    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    aget-object v3, p0, v0

    iget-byte v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const-wide v4, 0x10500000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 43
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    const-wide v4, 0x10900000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 45
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    const-wide v4, 0x20b00000002L

    .line 46
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 47
    aget-object v6, v0, v3

    iget v6, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 48
    aget-object v6, v0, v3

    iget-wide v9, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    const-wide v11, 0x10300000002L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 49
    aget-object v6, v0, v3

    iget-wide v9, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    const-wide v13, 0x10300000003L

    invoke-virtual {v1, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    if-eqz p2, :cond_1

    .line 50
    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    array-length v6, v6

    move v9, v2

    :goto_1
    if-ge v9, v6, :cond_1

    .line 51
    aget-object v10, v0, v3

    iget-object v10, v10, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    aget-object v10, v10, v9

    const-wide v13, 0x20b00000004L

    .line 52
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 53
    iget v15, v10, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    invoke-virtual {v1, v7, v8, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 54
    iget-wide v7, v10, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v1, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 55
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/EnergyMeasurement;Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    const-wide v1, 0x20b00000002L

    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 33
    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 34
    aget-object v3, p0, v0

    iget-wide v3, v3, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    const-wide v5, 0x10300000002L

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 35
    aget-object v3, p0, v0

    iget-wide v3, v3, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    const-wide v5, 0x10300000004L

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 36
    aget-object v3, p0, v0

    iget-wide v3, v3, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    const-wide v5, 0x10300000003L

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V
    .locals 14

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-wide v2, 0x20b00000001L

    .line 2
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3
    aget-object v4, p0, v1

    iget v4, v4, Landroid/hardware/power/stats/PowerEntity;->id:I

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4
    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5
    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    if-eqz v4, :cond_1

    .line 6
    array-length v4, v4

    move v9, v0

    :goto_1
    if-ge v9, v4, :cond_1

    .line 7
    aget-object v10, p0, v1

    iget-object v10, v10, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v10, v10, v9

    const-wide v11, 0x20b00000003L

    .line 8
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 9
    iget v13, v10, Landroid/hardware/power/stats/State;->id:I

    invoke-virtual {p1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10
    iget-object v10, v10, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 11
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/StateResidencyResult;Landroid/util/proto/ProtoOutputStream;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 13
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 14
    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v4, v4

    const-wide v5, 0x20b00000002L

    .line 15
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 16
    aget-object v9, v0, v3

    iget v9, v9, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    const-wide v10, 0x10500000001L

    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move v9, v2

    :goto_1
    if-ge v9, v4, :cond_1

    .line 17
    aget-object v12, v0, v3

    iget-object v12, v12, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v12, v12, v9

    .line 18
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 19
    iget v15, v12, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-virtual {v1, v10, v11, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000002L

    .line 20
    iget-wide v10, v12, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000003L

    .line 21
    iget-wide v10, v12, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000004L

    .line 22
    iget-wide v10, v12, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 23
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    const-wide v5, 0x20b00000002L

    const-wide v10, 0x10500000001L

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static unpackEnergyConsumerAttributionProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .locals 4

    .line 1
    const-string v0, "ProtoStreamUtils"

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/hardware/power/stats/EnergyConsumerAttribution;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_2

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "Unhandled field in EnergyConsumerAttributionProto: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-wide v2, 0x10300000002L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, v1, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-wide v2, 0x10500000001L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iput v2, v1, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-object v1

    .line 71
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "Wire Type mismatch in EnergyConsumerAttributionProto: "

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_0
.end method

.method public static unpackEnergyConsumerResultProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 6

    .line 1
    const-string v0, "ProtoStreamUtils"

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/hardware/power/stats/EnergyConsumerResult;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, -0x1

    .line 18
    if-eq v3, v4, :cond_4

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v3, v4, :cond_3

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v3, v4, :cond_2

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    if-eq v3, v4, :cond_1

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "Unhandled field in EnergyConsumerResultProto: "

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-wide v3, 0x20b00000004L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-static {p0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackEnergyConsumerAttributionProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-wide v3, 0x10300000003L

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    iput-wide v3, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const-wide v3, 0x10300000002L

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    iput-wide v3, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-wide v3, 0x10500000001L

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    iput v3, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    new-array v3, v3, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 124
    .line 125
    iput-object v3, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    return-object v1

    .line 128
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v4, "Wire Type mismatch in EnergyConsumerResultProto: "

    .line 131
    .line 132
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0
.end method

.method public static unpackEnergyMeasurementProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyMeasurement;
    .locals 4

    .line 1
    const-string v0, "ProtoStreamUtils"

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/power/stats/EnergyMeasurement;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/hardware/power/stats/EnergyMeasurement;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_4

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eq v2, v3, :cond_3

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v2, v3, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "Unhandled field in EnergyMeasurementProto: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-wide v2, 0x10300000004L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, v1, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-wide v2, 0x10300000003L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    iput-wide v2, v1, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-wide v2, 0x10300000002L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    iput-wide v2, v1, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const-wide v2, 0x10500000001L

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, v1, Landroid/hardware/power/stats/EnergyMeasurement;->id:I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return-object v1

    .line 101
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v3, "Wire Type mismatch in EnergyMeasurementProto: "

    .line 104
    .line 105
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_0
.end method

.method public static unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 5

    .line 31
    const-string v0, "ProtoStreamUtils"

    new-instance v1, Landroid/util/proto/ProtoInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    .line 34
    new-instance v3, Landroid/hardware/power/stats/EnergyConsumerResult;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide v2, 0x20b00000002L

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 36
    invoke-static {v1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackEnergyConsumerResultProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 38
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 39
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/stats/EnergyConsumerResult;

    return-object v2

    .line 40
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wire Type mismatch in proto: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyMeasurement;
    .locals 5

    .line 16
    const-string v0, "ProtoStreamUtils"

    new-instance v1, Landroid/util/proto/ProtoInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    .line 19
    new-instance v3, Landroid/hardware/power/stats/EnergyMeasurement;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide v2, 0x20b00000002L

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 21
    invoke-static {v1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackEnergyMeasurementProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/power/stats/EnergyMeasurement;

    .line 24
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/stats/EnergyMeasurement;

    return-object v2

    .line 25
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wire Type mismatch in proto: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unpackProtoMessage([B)[Landroid/hardware/power/stats/StateResidencyResult;
    .locals 5

    .line 1
    const-string v0, "ProtoStreamUtils"

    new-instance v1, Landroid/util/proto/ProtoInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    .line 4
    new-instance v3, Landroid/hardware/power/stats/StateResidencyResult;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide v2, 0x20b00000002L

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 6
    invoke-static {v1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackStateResidencyResultProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/power/stats/StateResidencyResult;

    .line 9
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/stats/StateResidencyResult;

    return-object v2

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in PowerStatsServiceResidencyProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wire Type mismatch in PowerStatsServiceResidencyProto: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unpackStateResidencyProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/StateResidency;
    .locals 4

    .line 1
    const-string v0, "ProtoStreamUtils"

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/power/stats/StateResidency;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/hardware/power/stats/StateResidency;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_4

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eq v2, v3, :cond_3

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v2, v3, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "Unhandled field in StateResidencyProto: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-wide v2, 0x10300000004L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, v1, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-wide v2, 0x10300000003L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    iput-wide v2, v1, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-wide v2, 0x10300000002L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    iput-wide v2, v1, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const-wide v2, 0x10500000001L

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, v1, Landroid/hardware/power/stats/StateResidency;->id:I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return-object v1

    .line 101
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v3, "Wire Type mismatch in StateResidencyProto: "

    .line 104
    .line 105
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_0
.end method

.method public static unpackStateResidencyResultProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/StateResidencyResult;
    .locals 6

    .line 1
    const-string v0, "ProtoStreamUtils"

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/power/stats/StateResidencyResult;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/hardware/power/stats/StateResidencyResult;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, -0x1

    .line 18
    if-eq v3, v4, :cond_2

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v3, v4, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v3, v4, :cond_0

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "Unhandled field in StateResidencyResultProto: "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-wide v3, 0x20b00000002L

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {p0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackStateResidencyProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/StateResidency;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-wide v3, 0x10500000001L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iput v3, v1, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    new-array v3, v3, [Landroid/hardware/power/stats/StateResidency;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, [Landroid/hardware/power/stats/StateResidency;

    .line 94
    .line 95
    iput-object v3, v1, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    return-object v1

    .line 98
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v4, "Wire Type mismatch in StateResidencyResultProto: "

    .line 101
    .line 102
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_0
.end method
