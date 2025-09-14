.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    const-string/jumbo v4, "microphone"

    .line 6
    .line 7
    .line 8
    const-string v5, "camera"

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const-string v8, "Invalid sensor"

    .line 30
    .line 31
    const/4 v9, 0x4

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    sparse-switch v10, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    :goto_0
    move v10, v0

    .line 40
    goto :goto_1

    .line 41
    :sswitch_0
    const-string v10, "disable"

    .line 42
    .line 43
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-nez v10, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v10, v3

    .line 51
    goto :goto_1

    .line 52
    :sswitch_1
    const-string v10, "enable_except_allowlisted_apps"

    .line 53
    .line 54
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-nez v10, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v10, v2

    .line 62
    goto :goto_1

    .line 63
    :sswitch_2
    const-string v10, "enable"

    .line 64
    .line 65
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-nez v10, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    move v10, v1

    .line 73
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    if-nez v10, :cond_4

    .line 91
    .line 92
    :goto_2
    move v2, v1

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move v2, v3

    .line 108
    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return v0

    .line 114
    :cond_7
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 115
    .line 116
    invoke-virtual {p0, v6, v9, v2, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_9

    .line 120
    .line 121
    :pswitch_1
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraPrivacyAllowlist()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_11

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    if-nez v8, :cond_8

    .line 137
    .line 138
    :goto_4
    move v2, v1

    .line 139
    goto :goto_5

    .line 140
    :cond_8
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_9

    .line 145
    .line 146
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_a

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_9
    move v2, v3

    .line 154
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 155
    .line 156
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 157
    .line 158
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isAutomotive(Landroid/content/Context;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_c

    .line 165
    .line 166
    if-eq v2, v3, :cond_b

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_b
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 170
    .line 171
    const/4 p1, 0x3

    .line 172
    invoke-virtual {p0, v6, v9, v2, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyState(IIII)V

    .line 173
    .line 174
    .line 175
    goto :goto_9

    .line 176
    :cond_c
    :goto_6
    const-string p0, "Command not valid for this sensor"

    .line 177
    .line 178
    invoke-virtual {v7, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return v0

    .line 182
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    if-nez v10, :cond_d

    .line 192
    .line 193
    :goto_7
    move v3, v1

    .line 194
    goto :goto_8

    .line 195
    :cond_d
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_f

    .line 200
    .line 201
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_e

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_e
    move v3, v2

    .line 209
    :cond_f
    :goto_8
    if-nez v3, :cond_10

    .line 210
    .line 211
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return v0

    .line 215
    :cond_10
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 216
    .line 217
    invoke-virtual {p0, v6, v9, v3, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    .line 218
    .line 219
    .line 220
    :cond_11
    :goto_9
    return v1

    .line 221
    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_2
        0x20ffcc75 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Sensor privacy manager (sensor_privacy) commands:"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "  help"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "  enable USER_ID SENSOR"

    .line 26
    .line 27
    const-string v3, "    Enable privacy for a certain sensor."

    .line 28
    .line 29
    const-string v4, "  disable USER_ID SENSOR"

    .line 30
    .line 31
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "    Disable privacy for a certain sensor."

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraPrivacyAllowlist()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isAutomotive(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_0

    .line 59
    .line 60
    const-string p0, "  enable_except_allowlisted_apps USER_ID SENSOR"

    .line 61
    .line 62
    const-string v2, "    Enable privacy except for automotive apps which are required by OEM."

    .line 63
    .line 64
    invoke-static {v0, p0, v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method
