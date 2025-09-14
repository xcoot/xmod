.class public final Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

.field public wifiApState:Z

.field public wifiManager:Ljava/lang/Object;

.field public wifiState:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final cancelFastDrainRestriction()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 17
    .line 18
    const-string/jumbo v2, "disable_mobile_data_by_ibs"

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Recover mobiledata check mobiledataState = "

    .line 32
    .line 33
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ", operMobileState = "

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v3, "IntelligentBatterySaverFastDrainAction"

    .line 58
    .line 59
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    const-string/jumbo v1, "recover mobiledata"

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 89
    .line 90
    .line 91
    :cond_0
    const/4 p0, 0x0

    .line 92
    invoke-virtual {v0, v2, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const-string/jumbo v2, "wifi"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 108
    .line 109
    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 112
    .line 113
    const-string/jumbo v2, "disable_wifi_by_ibs"

    .line 114
    .line 115
    .line 116
    if-eqz v1, :cond_1

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, "Recover wifi check wifiState = "

    .line 127
    .line 128
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-boolean v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v3, ", operWifiState = "

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v3, "IntelligentBatterySaverFastDrainAction"

    .line 153
    .line 154
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 158
    .line 159
    if-nez v1, :cond_1

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_1

    .line 166
    .line 167
    const-string/jumbo v1, "recover wifi"

    .line 168
    .line 169
    .line 170
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 174
    .line 175
    invoke-virtual {v3, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 184
    .line 185
    .line 186
    :cond_1
    const/4 p0, 0x0

    .line 187
    invoke-virtual {v0, v2, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final doFastDrainRestriction()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string/jumbo v2, "wifi"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v4, "wifiApState = "

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "Disable mobiledata check wifiApState = "

    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ", mobiledataState = "

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 85
    .line 86
    const-string v3, "IntelligentBatterySaverFastDrainAction"

    .line 87
    .line 88
    invoke-static {v3, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string/jumbo v4, "mobiledataState = "

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 114
    .line 115
    if-nez v0, :cond_1

    .line 116
    .line 117
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 118
    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    const-string/jumbo v0, "mobiledata set disable"

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 138
    .line 139
    .line 140
    const/4 p0, 0x1

    .line 141
    const-string/jumbo v0, "disable_mobile_data_by_ibs"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    :cond_1
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 149
    .line 150
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    const-string/jumbo v2, "wifi"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 162
    .line 163
    if-eqz v1, :cond_2

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 170
    .line 171
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "Disable wifi check wifiApState = "

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, ", wifiState = "

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 199
    .line 200
    const-string v3, "IntelligentBatterySaverFastDrainAction"

    .line 201
    .line 202
    invoke-static {v3, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 203
    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 206
    .line 207
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 208
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string/jumbo v4, "wifi wifiState = "

    .line 212
    .line 213
    .line 214
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-boolean v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 218
    .line 219
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v4, " wifiApState = "

    .line 223
    .line 224
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-boolean v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 228
    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiApState:Z

    .line 240
    .line 241
    if-nez v1, :cond_2

    .line 242
    .line 243
    iget-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiState:Z

    .line 244
    .line 245
    if-eqz v1, :cond_2

    .line 246
    .line 247
    const-string/jumbo v1, "wifi set disable"

    .line 248
    .line 249
    .line 250
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 254
    .line 255
    invoke-virtual {v2, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;->wifiManager:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 261
    .line 262
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 264
    .line 265
    .line 266
    const/4 p0, 0x1

    .line 267
    const-string/jumbo v1, "disable_wifi_by_ibs"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(Ljava/lang/String;Z)V

    .line 271
    .line 272
    .line 273
    :cond_2
    return-void

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
