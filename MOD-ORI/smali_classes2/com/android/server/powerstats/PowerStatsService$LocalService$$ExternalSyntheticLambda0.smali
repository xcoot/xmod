.class public final synthetic Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/powerstats/PowerStatsService$LocalService;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsService$LocalService;Ljava/util/concurrent/CompletableFuture;[II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$2:[I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$2:[I

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$2:[I

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;->f$2:[I

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2, p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_8

    .line 67
    .line 68
    array-length v3, p0

    .line 69
    if-nez v3, :cond_0

    .line 70
    .line 71
    array-length v3, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    array-length v3, p0

    .line 74
    :goto_0
    if-eqz v2, :cond_1

    .line 75
    .line 76
    array-length v4, v2

    .line 77
    if-eq v3, v4, :cond_8

    .line 78
    .line 79
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v5, "Requested ids:"

    .line 82
    .line 83
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    array-length v5, p0

    .line 87
    if-nez v5, :cond_2

    .line 88
    .line 89
    const-string v5, "ALL"

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_2
    const-string v5, "["

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    move v7, v6

    .line 101
    :goto_1
    array-length v8, p0

    .line 102
    const-string v9, ", "

    .line 103
    .line 104
    const-string v10, ")"

    .line 105
    .line 106
    const-string v11, ",name:"

    .line 107
    .line 108
    const-string v12, ",ord:"

    .line 109
    .line 110
    const-string v13, "(type:"

    .line 111
    .line 112
    if-ge v7, v8, :cond_4

    .line 113
    .line 114
    aget v8, p0, v7

    .line 115
    .line 116
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    aget-object v13, v0, v8

    .line 123
    .line 124
    iget-byte v13, v13, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 125
    .line 126
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    aget-object v12, v0, v8

    .line 133
    .line 134
    iget v12, v12, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 135
    .line 136
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    aget-object v8, v0, v8

    .line 143
    .line 144
    iget-object v8, v8, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    add-int/lit8 v8, v3, -0x1

    .line 153
    .line 154
    if-eq v7, v8, :cond_3

    .line 155
    .line 156
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    const-string p0, "], Received result ids:"

    .line 163
    .line 164
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    if-nez v2, :cond_5

    .line 168
    .line 169
    const-string/jumbo p0, "null"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    array-length p0, v2

    .line 180
    :goto_2
    if-ge v6, p0, :cond_7

    .line 181
    .line 182
    aget-object v3, v2, v6

    .line 183
    .line 184
    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 185
    .line 186
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    aget-object v5, v0, v3

    .line 193
    .line 194
    iget-byte v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 195
    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    aget-object v5, v0, v3

    .line 203
    .line 204
    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 205
    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    aget-object v3, v0, v3

    .line 213
    .line 214
    iget-object v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    add-int/lit8 v3, p0, -0x1

    .line 223
    .line 224
    if-eq v6, v3, :cond_6

    .line 225
    .line 226
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_7
    const-string p0, "]"

    .line 233
    .line 234
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v0, "Missing result from getEnergyConsumedAsync call. "

    .line 240
    .line 241
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    const-string v0, "PowerStatsService"

    .line 252
    .line 253
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :cond_8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
