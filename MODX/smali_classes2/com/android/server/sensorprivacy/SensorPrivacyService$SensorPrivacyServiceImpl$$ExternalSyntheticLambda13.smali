.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v0, "showSensorUserReminderDialog  taskId="

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v0, p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mTaskId:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "  mIsFolded="

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mIsFolded:Z

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "  "

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v0, p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mPackageName:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "SensorPrivacyService"

    .line 43
    .line 44
    invoke-static {p0, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroid/util/ArraySet;

    .line 54
    .line 55
    iget-object v2, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    if-nez p0, :cond_0

    .line 61
    .line 62
    const-string p0, "Unable to show sensor use dialog because sensor set is null. Was the dialog queue modified from outside the handler thread?"

    .line 63
    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_0
    new-instance v2, Landroid/content/Intent;

    .line 70
    .line 71
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const/4 v4, 0x0

    .line 90
    const/4 v5, -0x1

    .line 91
    const/4 v6, 0x1

    .line 92
    iget p2, p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mTaskId:I

    .line 93
    .line 94
    if-ne p2, v5, :cond_2

    .line 95
    .line 96
    iget-object v7, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 97
    .line 98
    iget-boolean v8, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mIsFolded:Z

    .line 99
    .line 100
    if-eqz v8, :cond_1

    .line 101
    .line 102
    iget-boolean v7, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mIsLargeCoverScreen:Z

    .line 103
    .line 104
    if-eqz v7, :cond_1

    .line 105
    .line 106
    move v7, v6

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move v7, v4

    .line 109
    :goto_0
    invoke-virtual {v3, v7}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v3, p2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {v3, v6, v6}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 117
    .line 118
    .line 119
    const/high16 v7, 0x840000

    .line 120
    .line 121
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    if-ne p2, v5, :cond_3

    .line 125
    .line 126
    const/high16 p2, 0x18000000

    .line 127
    .line 128
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    :cond_3
    const-string p2, "android.intent.extra.PACKAGE_NAME"

    .line 132
    .line 133
    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-ne p2, v6, :cond_4

    .line 141
    .line 142
    sget-object p2, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Ljava/io/Serializable;

    .line 149
    .line 150
    invoke-virtual {v2, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    const/4 v0, 0x2

    .line 159
    if-ne p2, v0, :cond_5

    .line 160
    .line 161
    sget-object p0, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    :goto_2
    iget-object p0, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 175
    .line 176
    invoke-virtual {p0, v2, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string p2, "Attempted to show sensor use dialog for "

    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p0, " sensors"

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :goto_3
    return-void
.end method
