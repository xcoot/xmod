.class public final Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final cancelFastDrainRestriction()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 8
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 10
    const-string/jumbo v1, "bluetooth"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 19
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 25
    const-string/jumbo v1, "disable_bt_by_ibs"

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 42
    const-string v2, "IntelligentBatterySaverFastDrainAction"

    .line 44
    const-string v3, "Recover BT"

    .line 46
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(Ljava/lang/String;Z)V

    .line 61
    return-void

    .line 62
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 64
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 66
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 68
    const/4 v2, 0x0

    .line 69
    const-string v3, "IntelligentBatterySaverFastDrainPolicy"

    .line 71
    if-nez v1, :cond_1

    .line 73
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 75
    if-eqz v1, :cond_1

    .line 77
    const-string v1, "Create shared preferences when get state."

    .line 79
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 84
    const-string/jumbo v4, "oper_pref"

    .line 87
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 93
    :cond_1
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 95
    if-nez v0, :cond_2

    .line 97
    move v0, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const-string/jumbo v1, "disable_gps_by_ibs"

    .line 102
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 105
    move-result v0

    .line 106
    const-string/jumbo v1, "getIntState type = disable_gps_by_ibs state = "

    .line 109
    invoke-static {v0, v1, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    if-eqz v0, :cond_4

    .line 114
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 119
    move-result-object v1

    .line 120
    const-string/jumbo v3, "display_night_theme_scheduled"

    .line 123
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 126
    move-result v1

    .line 127
    const/4 v3, 0x1

    .line 128
    if-ne v3, v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 135
    move-result-object v1

    .line 136
    const-string/jumbo v4, "display_night_theme_scheduled_type"

    .line 139
    const/4 v5, 0x2

    .line 140
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 143
    move-result v1

    .line 144
    if-ne v3, v1, :cond_3

    .line 146
    goto :goto_1

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    move-result-object v1

    .line 153
    const-string/jumbo v3, "location_mode"

    .line 156
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v3, "gpsState = "

    .line 164
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, " recover gps"

    .line 172
    const-string v3, "IntelligentBatterySaverFastDrainAction"

    .line 174
    invoke-static {v1, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 179
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 181
    const-string/jumbo v1, "recover gps"

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 187
    invoke-static {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$msaveIntState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 190
    :cond_4
    :goto_1
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final doFastDrainRestriction()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 8
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 16
    move-result-object v1

    .line 17
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 19
    const-string/jumbo v2, "bluetooth"

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 28
    const/4 v3, 0x7

    .line 29
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    move-result v3

    .line 37
    const/16 v4, 0x8

    .line 39
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    move-result v0

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 57
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 64
    move-result-object v1

    .line 65
    new-instance v6, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda5;

    .line 67
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_0

    .line 76
    add-int/2addr v3, v0

    .line 77
    if-lez v3, :cond_1

    .line 79
    :cond_0
    move v0, v5

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move v0, v4

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 90
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_2

    .line 102
    move v4, v5

    .line 103
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    const-string v3, "Disable BT check btEnabled= "

    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    const-string v3, ", btConnected = "

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    const-string v6, "IntelligentBatterySaverFastDrainAction"

    .line 127
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 132
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    const-string v8, "BlueTooth btEnabled= "

    .line 138
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 157
    if-eqz v4, :cond_3

    .line 159
    if-nez v0, :cond_3

    .line 161
    const-string v0, "Disable BT"

    .line 163
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 168
    invoke-virtual {v2, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 174
    const-string/jumbo v0, "disable_bt_by_ibs"

    .line 177
    invoke-virtual {p0, v0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(Ljava/lang/String;Z)V

    .line 180
    :cond_3
    return-void

    .line 181
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 183
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 188
    move-result-object v0

    .line 189
    const-string/jumbo v1, "location_mode"

    .line 192
    const/4 v2, 0x0

    .line 193
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_5

    .line 199
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 204
    move-result-object v3

    .line 205
    const-string/jumbo v4, "display_night_theme_scheduled"

    .line 208
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 211
    move-result v3

    .line 212
    const/4 v4, 0x1

    .line 213
    if-ne v4, v3, :cond_4

    .line 215
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 220
    move-result-object v3

    .line 221
    const-string/jumbo v5, "display_night_theme_scheduled_type"

    .line 224
    const/4 v6, 0x2

    .line 225
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 228
    move-result v3

    .line 229
    if-ne v4, v3, :cond_4

    .line 231
    goto :goto_1

    .line 232
    :cond_4
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 237
    move-result-object v3

    .line 238
    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v2, "gpsState = "

    .line 246
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v3, " gps set disable"

    .line 254
    const-string v4, "IntelligentBatterySaverFastDrainAction"

    .line 256
    invoke-static {v1, v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 261
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 281
    invoke-static {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$msaveIntState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 284
    :cond_5
    :goto_1
    return-void

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
