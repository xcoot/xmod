.class public final Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# instance fields
.field public mCallback:Lcom/android/server/powerstats/PowerStatsLogger$1;


# virtual methods
.method public final read(Ljava/io/InputStream;)V
    .locals 5

    .line 1
    const-string v0, "PowerStatsLogger"

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ne v3, v1, :cond_2

    .line 17
    .line 18
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    const v2, 0x8000

    .line 29
    .line 30
    .line 31
    if-ge v1, v2, :cond_1

    .line 32
    .line 33
    new-array v2, v1, [B

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ne v3, v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;->mCallback:Lcom/android/server/powerstats/PowerStatsLogger$1;

    .line 42
    .line 43
    iget v3, v1, Lcom/android/server/powerstats/PowerStatsLogger$1;->$r8$classId:I

    .line 44
    .line 45
    packed-switch v3, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    :try_start_0
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    .line 49
    .line 50
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 51
    .line 52
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v4}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/StateResidencyResult;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsLogger$1;->val$pos:Landroid/util/proto/ProtoOutputStream;

    .line 63
    .line 64
    invoke-static {v2, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/StateResidencyResult;Landroid/util/proto/ProtoOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    sget v2, Lcom/android/server/powerstats/PowerStatsLogger;->$r8$clinit:I

    .line 70
    .line 71
    const-string v2, "Failed to write residency data to incident report."

    .line 72
    .line 73
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_0
    :try_start_1
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    .line 78
    .line 79
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 80
    .line 81
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v4}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsLogger$1;->val$pos:Landroid/util/proto/ProtoOutputStream;

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    invoke-static {v2, v1, v3}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    .line 99
    sget v2, Lcom/android/server/powerstats/PowerStatsLogger;->$r8$clinit:I

    .line 100
    .line 101
    const-string v2, "Failed to write energy model data to incident report."

    .line 102
    .line 103
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_1
    :try_start_2
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    .line 108
    .line 109
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 110
    .line 111
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v3, v4}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyMeasurement;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsLogger$1;->val$pos:Landroid/util/proto/ProtoOutputStream;

    .line 122
    .line 123
    invoke-static {v2, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyMeasurement;Landroid/util/proto/ProtoOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_2
    move-exception v1

    .line 128
    sget v2, Lcom/android/server/powerstats/PowerStatsLogger;->$r8$clinit:I

    .line 129
    .line 130
    const-string v2, "Failed to write energy meter data to incident report."

    .line 131
    .line 132
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 138
    .line 139
    const-string p1, "Invalid bytes read, expected: "

    .line 140
    .line 141
    const-string v0, ", actual: "

    .line 142
    .line 143
    invoke-static {v1, v3, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 152
    .line 153
    const-string p1, "DataElement size is invalid: "

    .line 154
    .line 155
    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 164
    .line 165
    const-string p1, "Did not read 4 bytes ("

    .line 166
    .line 167
    const-string v0, ")"

    .line 168
    .line 169
    invoke-static {v3, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_3
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
