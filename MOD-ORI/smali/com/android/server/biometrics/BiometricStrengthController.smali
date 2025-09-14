.class public final Lcom/android/server/biometrics/BiometricStrengthController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceConfigListener:Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;

.field public final mService:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricStrengthController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mDeviceConfigListener:Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mService:Lcom/android/server/biometrics/BiometricService;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final updateStrengths()V
    .locals 11

    .line 1
    const-string/jumbo v0, "biometrics"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "biometric_strengths"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "null"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mService:Lcom/android/server/biometrics/BiometricService;

    .line 19
    .line 20
    const-string v2, "BiometricStrengthController"

    .line 21
    .line 22
    if-nez v1, :cond_5

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const-string v0, "Flags are null or empty"

    .line 40
    .line 41
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    const-string v4, ","

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    array-length v5, v4

    .line 57
    const/4 v6, 0x0

    .line 58
    move v7, v6

    .line 59
    :goto_0
    if-ge v7, v5, :cond_2

    .line 60
    .line 61
    aget-object v8, v4, v7

    .line 62
    .line 63
    const-string v9, ":"

    .line 64
    .line 65
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    aget-object v9, v8, v6

    .line 70
    .line 71
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const/4 v10, 0x1

    .line 76
    aget-object v8, v8, v10

    .line 77
    .line 78
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    add-int/lit8 v7, v7, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move-object v3, v1

    .line 97
    goto :goto_1

    .line 98
    :catch_0
    const-string v1, "Can\'t parse flag: "

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :goto_1
    if-nez v3, :cond_3

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_3
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 127
    .line 128
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 129
    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    const-string/jumbo v5, "updateStrengths: update sensorId="

    .line 155
    .line 156
    .line 157
    const-string v6, " to newStrength="

    .line 158
    .line 159
    invoke-static {v1, v4, v5, v6, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/BiometricSensor;->updateStrength(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string/jumbo v3, "updateStrengths: revert sensorId="

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget v3, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 193
    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v3, " to oemStrength="

    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget v3, v0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 203
    .line 204
    invoke-static {v1, v3, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricSensor;->updateStrength(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_6
    :goto_5
    return-void
.end method
