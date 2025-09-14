.class public final Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field protected static final MOBILE_RADIO_POWER_STATE_UPDATE_FREQ_MS:J = 0x927c0L

.field static final NETWORK_TYPES:[I


# instance fields
.field public mCallDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

.field public mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

.field public mDeviceStats:[J

.field public mEnergyConsumerIds:[I

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastCallDuration:J

.field public mLastConsumedEnergyUws:[J

.field public mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field public mLastNetworkStats:Landroid/net/NetworkStats;

.field public mLastScanDuration:J

.field public mLastUpdateTimestampMillis:J

.field public mLastVoltageMv:I

.field public mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

.field public volatile mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mScanDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

.field public volatile mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->NETWORK_TYPES:[I

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    .line 17
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 18
    .line 19
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 31
    .line 32
    return-void
.end method

.method public static mapRadioAccessNetworkTypeToRadioAccessTechnology(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const-string v1, "Unhandled RadioAccessNetworkType ("

    .line 6
    .line 7
    const-string v2, "), mapping to OTHER"

    .line 8
    .line 9
    const-string v3, "MobileRadioPowerStatsCollector"

    .line 10
    .line 11
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return v0

    .line 15
    :pswitch_0
    const/4 p0, 0x2

    .line 16
    return p0

    .line 17
    :pswitch_1
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :pswitch_2
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mIsInitialized:Z

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const-wide/16 v6, -0x1

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-object v8

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 22
    .line 23
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 24
    .line 25
    iput-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 26
    .line 27
    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v9, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    .line 30
    .line 31
    .line 32
    iput-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    invoke-direct {v9, v1, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V

    .line 47
    .line 48
    .line 49
    iput-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    const/4 v10, 0x1

    .line 59
    invoke-direct {v9, v1, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V

    .line 60
    .line 61
    .line 62
    iput-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-direct {v9, v1, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V

    .line 73
    .line 74
    .line 75
    iput-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v8}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getEnergyConsumerIds(ILjava/lang/String;)[I

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 84
    .line 85
    array-length v1, v1

    .line 86
    new-array v1, v1, [J

    .line 87
    .line 88
    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 89
    .line 90
    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 94
    .line 95
    invoke-direct {v1}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 99
    .line 100
    const-string/jumbo v9, "sleep"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5, v4, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 108
    .line 109
    const-string v9, "idle"

    .line 110
    .line 111
    invoke-virtual {v1, v5, v4, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 116
    .line 117
    const-string/jumbo v9, "scan"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v5, v4, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 125
    .line 126
    const-string v9, "call"

    .line 127
    .line 128
    invoke-virtual {v1, v5, v5, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    .line 133
    .line 134
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 135
    .line 136
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 137
    .line 138
    array-length v9, v9

    .line 139
    invoke-virtual {v1, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 143
    .line 144
    iget v9, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 145
    .line 146
    add-int/lit8 v10, v9, 0x1

    .line 147
    .line 148
    iput v10, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 149
    .line 150
    iget-object v10, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string/jumbo v11, "rx"

    .line 153
    .line 154
    .line 155
    invoke-static {v10, v9, v5, v11, v4}, Lcom/android/server/power/stats/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 159
    .line 160
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 165
    .line 166
    iget v10, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 167
    .line 168
    add-int v11, v10, v9

    .line 169
    .line 170
    iput v11, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 171
    .line 172
    iget-object v11, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string/jumbo v12, "tx"

    .line 175
    .line 176
    .line 177
    invoke-static {v11, v10, v9, v12, v4}, Lcom/android/server/power/stats/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    iput v10, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    .line 181
    .line 182
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 183
    .line 184
    const-string/jumbo v9, "rx-pkts"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v5, v4, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 192
    .line 193
    const-string/jumbo v9, "rx-B"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v5, v4, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 201
    .line 202
    const-string/jumbo v9, "tx-pkts"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v5, v4, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 210
    .line 211
    const-string/jumbo v9, "tx-B"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v5, v4, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    iput v9, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    .line 219
    .line 220
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 221
    .line 222
    const-string/jumbo v9, "usage"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v5, v5, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    iput v9, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 230
    .line 231
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 237
    .line 238
    const-string/jumbo v9, "power"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v5, v2, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    iput v9, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 246
    .line 247
    new-instance v13, Landroid/util/SparseArray;

    .line 248
    .line 249
    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 250
    .line 251
    .line 252
    move v1, v4

    .line 253
    :goto_0
    const/4 v9, 0x3

    .line 254
    if-ge v1, v9, :cond_9

    .line 255
    .line 256
    if-ne v1, v3, :cond_2

    .line 257
    .line 258
    move v9, v2

    .line 259
    goto :goto_1

    .line 260
    :cond_2
    move v9, v5

    .line 261
    :goto_1
    move v10, v4

    .line 262
    :goto_2
    if-ge v10, v9, :cond_8

    .line 263
    .line 264
    if-ne v1, v3, :cond_3

    .line 265
    .line 266
    shl-int/lit8 v11, v10, 0x8

    .line 267
    .line 268
    or-int/2addr v11, v1

    .line 269
    goto :goto_3

    .line 270
    :cond_3
    move v11, v1

    .line 271
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    if-eqz v1, :cond_4

    .line 277
    .line 278
    sget-object v14, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    .line 279
    .line 280
    aget-object v14, v14, v1

    .line 281
    .line 282
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    :cond_4
    if-eqz v10, :cond_6

    .line 286
    .line 287
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    if-nez v14, :cond_5

    .line 292
    .line 293
    const-string v14, " "

    .line 294
    .line 295
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    :cond_5
    invoke-static {v10}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    :cond_6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->isEmpty()Z

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    if-nez v14, :cond_7

    .line 310
    .line 311
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    goto :goto_4

    .line 316
    :cond_7
    const-string/jumbo v12, "other"

    .line 317
    .line 318
    .line 319
    :goto_4
    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    add-int/lit8 v10, v10, 0x1

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 326
    .line 327
    goto :goto_0

    .line 328
    :cond_9
    new-instance v1, Landroid/os/PersistableBundle;

    .line 329
    .line 330
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 331
    .line 332
    .line 333
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 334
    .line 335
    invoke-virtual {v9, v1}, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 336
    .line 337
    .line 338
    new-instance v9, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 339
    .line 340
    iget-object v10, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 341
    .line 342
    iget v12, v10, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 343
    .line 344
    iget v14, v10, Lcom/android/server/power/stats/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 345
    .line 346
    iget v15, v10, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 347
    .line 348
    const/16 v11, 0x8

    .line 349
    .line 350
    move-object v10, v9

    .line 351
    move-object/from16 v16, v1

    .line 352
    .line 353
    invoke-direct/range {v10 .. v16}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 354
    .line 355
    .line 356
    new-instance v1, Lcom/android/internal/os/PowerStats;

    .line 357
    .line 358
    invoke-direct {v1, v9}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 359
    .line 360
    .line 361
    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 362
    .line 363
    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 364
    .line 365
    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    .line 366
    .line 367
    iput-boolean v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mIsInitialized:Z

    .line 368
    .line 369
    :goto_5
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 370
    .line 371
    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 372
    .line 373
    const-wide/16 v9, 0x0

    .line 374
    .line 375
    invoke-static {v1, v9, v10}, Ljava/util/Arrays;->fill([JJ)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 379
    .line 380
    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 381
    .line 382
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 383
    .line 384
    .line 385
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 386
    .line 387
    const-string v11, "MobileRadioPowerStatsCollector"

    .line 388
    .line 389
    if-nez v1, :cond_a

    .line 390
    .line 391
    goto/16 :goto_a

    .line 392
    .line 393
    :cond_a
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 394
    .line 395
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 396
    .line 397
    .line 398
    iget-object v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 399
    .line 400
    new-instance v13, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 401
    .line 402
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 403
    .line 404
    .line 405
    new-instance v14, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$1;

    .line 406
    .line 407
    invoke-direct {v14, v1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v12, v13, v14}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 411
    .line 412
    .line 413
    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 414
    .line 415
    const-wide/16 v13, 0x4e20

    .line 416
    .line 417
    invoke-virtual {v1, v13, v14, v12}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    check-cast v1, Landroid/telephony/ModemActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .line 423
    move-object v8, v1

    .line 424
    goto :goto_6

    .line 425
    :catch_0
    const-string v1, "Cannot acquire ModemActivityInfo"

    .line 426
    .line 427
    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    :goto_6
    if-nez v8, :cond_b

    .line 431
    .line 432
    goto/16 :goto_a

    .line 433
    .line 434
    :cond_b
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 435
    .line 436
    if-nez v1, :cond_c

    .line 437
    .line 438
    invoke-virtual {v8, v8}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    goto :goto_7

    .line 443
    :cond_c
    invoke-virtual {v1, v8}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    :goto_7
    iput-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 448
    .line 449
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    .line 450
    .line 451
    .line 452
    move-result-wide v12

    .line 453
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 454
    .line 455
    iget-wide v14, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    .line 456
    .line 457
    sub-long v14, v12, v14

    .line 458
    .line 459
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 460
    .line 461
    .line 462
    move-result-wide v14

    .line 463
    iput-wide v14, v8, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 464
    .line 465
    iput-wide v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    .line 466
    .line 467
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 468
    .line 469
    iget-object v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    .line 470
    .line 471
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    .line 472
    .line 473
    .line 474
    move-result-wide v13

    .line 475
    iget v8, v8, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 476
    .line 477
    aput-wide v13, v12, v8

    .line 478
    .line 479
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 480
    .line 481
    iget-object v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    .line 482
    .line 483
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    .line 484
    .line 485
    .line 486
    move-result-wide v13

    .line 487
    iget v8, v8, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 488
    .line 489
    aput-wide v13, v12, v8

    .line 490
    .line 491
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    .line 492
    .line 493
    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->getAsLong()J

    .line 494
    .line 495
    .line 496
    move-result-wide v12

    .line 497
    iget-wide v14, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    .line 498
    .line 499
    cmp-long v8, v12, v14

    .line 500
    .line 501
    if-ltz v8, :cond_d

    .line 502
    .line 503
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 504
    .line 505
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    .line 506
    .line 507
    sub-long v14, v12, v14

    .line 508
    .line 509
    iget v8, v8, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    .line 510
    .line 511
    aput-wide v14, v4, v8

    .line 512
    .line 513
    :cond_d
    iput-wide v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    .line 514
    .line 515
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    .line 516
    .line 517
    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->getAsLong()J

    .line 518
    .line 519
    .line 520
    move-result-wide v12

    .line 521
    iget-wide v14, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    .line 522
    .line 523
    cmp-long v4, v12, v14

    .line 524
    .line 525
    if-ltz v4, :cond_e

    .line 526
    .line 527
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 528
    .line 529
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    .line 530
    .line 531
    sub-long v14, v12, v14

    .line 532
    .line 533
    iget v4, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 534
    .line 535
    aput-wide v14, v8, v4

    .line 536
    .line 537
    :cond_e
    iput-wide v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    .line 538
    .line 539
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 540
    .line 541
    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    .line 542
    .line 543
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    .line 547
    .line 548
    .line 549
    move-result v8

    .line 550
    if-nez v8, :cond_f

    .line 551
    .line 552
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 553
    .line 554
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    .line 555
    .line 556
    .line 557
    move-result-wide v21

    .line 558
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis()[I

    .line 559
    .line 560
    .line 561
    move-result-object v23

    .line 562
    const/16 v19, 0x0

    .line 563
    .line 564
    const/16 v20, 0x0

    .line 565
    .line 566
    move-object/from16 v17, v2

    .line 567
    .line 568
    move-object/from16 v18, v4

    .line 569
    .line 570
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    .line 571
    .line 572
    .line 573
    goto :goto_a

    .line 574
    :cond_f
    const/4 v8, 0x0

    .line 575
    :goto_8
    sget-object v12, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->NETWORK_TYPES:[I

    .line 576
    .line 577
    array-length v12, v12

    .line 578
    if-ge v8, v12, :cond_12

    .line 579
    .line 580
    const/4 v12, 0x6

    .line 581
    if-ne v8, v12, :cond_10

    .line 582
    .line 583
    const/4 v12, 0x0

    .line 584
    :goto_9
    if-ge v12, v2, :cond_11

    .line 585
    .line 586
    iget-object v13, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 587
    .line 588
    invoke-virtual {v1, v8, v12}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    .line 589
    .line 590
    .line 591
    move-result-wide v21

    .line 592
    invoke-virtual {v1, v8, v12}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    .line 593
    .line 594
    .line 595
    move-result-object v23

    .line 596
    move-object/from16 v17, v13

    .line 597
    .line 598
    move-object/from16 v18, v4

    .line 599
    .line 600
    move/from16 v19, v8

    .line 601
    .line 602
    move/from16 v20, v12

    .line 603
    .line 604
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    .line 605
    .line 606
    .line 607
    add-int/lit8 v12, v12, 0x1

    .line 608
    .line 609
    goto :goto_9

    .line 610
    :cond_10
    iget-object v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 611
    .line 612
    invoke-virtual {v1, v8}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    .line 613
    .line 614
    .line 615
    move-result-wide v21

    .line 616
    invoke-virtual {v1, v8}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(I)[I

    .line 617
    .line 618
    .line 619
    move-result-object v23

    .line 620
    const/16 v20, 0x0

    .line 621
    .line 622
    move-object/from16 v17, v12

    .line 623
    .line 624
    move-object/from16 v18, v4

    .line 625
    .line 626
    move/from16 v19, v8

    .line 627
    .line 628
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    .line 629
    .line 630
    .line 631
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 632
    .line 633
    goto :goto_8

    .line 634
    :cond_12
    :goto_a
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

    .line 635
    .line 636
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    check-cast v1, Landroid/net/NetworkStats;

    .line 641
    .line 642
    if-nez v1, :cond_13

    .line 643
    .line 644
    goto/16 :goto_d

    .line 645
    .line 646
    :cond_13
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    .line 647
    .line 648
    const-string/jumbo v4, "modem"

    .line 649
    .line 650
    .line 651
    invoke-static {v1, v2, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/lang/String;)Ljava/util/List;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    .line 656
    .line 657
    check-cast v2, Ljava/util/ArrayList;

    .line 658
    .line 659
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    sub-int/2addr v1, v5

    .line 664
    :goto_b
    if-ltz v1, :cond_16

    .line 665
    .line 666
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    check-cast v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;

    .line 671
    .line 672
    iget-wide v12, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mRxBytes:J

    .line 673
    .line 674
    iget-wide v14, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mTxBytes:J

    .line 675
    .line 676
    iget-wide v6, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mRxPackets:J

    .line 677
    .line 678
    move-wide/from16 v18, v6

    .line 679
    .line 680
    iget-wide v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mTxPackets:J

    .line 681
    .line 682
    cmp-long v7, v12, v9

    .line 683
    .line 684
    if-nez v7, :cond_14

    .line 685
    .line 686
    cmp-long v7, v14, v9

    .line 687
    .line 688
    if-nez v7, :cond_14

    .line 689
    .line 690
    cmp-long v7, v18, v9

    .line 691
    .line 692
    if-nez v7, :cond_14

    .line 693
    .line 694
    cmp-long v7, v5, v9

    .line 695
    .line 696
    if-nez v7, :cond_14

    .line 697
    .line 698
    goto :goto_c

    .line 699
    :cond_14
    iget-object v7, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 700
    .line 701
    iget v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mUid:I

    .line 702
    .line 703
    invoke-virtual {v7, v4}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 708
    .line 709
    iget-object v7, v7, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 710
    .line 711
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v7

    .line 715
    check-cast v7, [J

    .line 716
    .line 717
    if-nez v7, :cond_15

    .line 718
    .line 719
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 720
    .line 721
    iget v7, v7, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 722
    .line 723
    new-array v7, v7, [J

    .line 724
    .line 725
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 726
    .line 727
    iget-object v8, v8, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 728
    .line 729
    invoke-virtual {v8, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 730
    .line 731
    .line 732
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 733
    .line 734
    iget v8, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 735
    .line 736
    aput-wide v12, v7, v8

    .line 737
    .line 738
    iget v8, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    .line 739
    .line 740
    aput-wide v14, v7, v8

    .line 741
    .line 742
    iget v8, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 743
    .line 744
    aput-wide v18, v7, v8

    .line 745
    .line 746
    iget v4, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 747
    .line 748
    aput-wide v5, v7, v4

    .line 749
    .line 750
    goto :goto_c

    .line 751
    :cond_15
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 752
    .line 753
    iget v8, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 754
    .line 755
    aget-wide v21, v7, v8

    .line 756
    .line 757
    add-long v21, v21, v12

    .line 758
    .line 759
    aput-wide v21, v7, v8

    .line 760
    .line 761
    iget v8, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    .line 762
    .line 763
    aget-wide v12, v7, v8

    .line 764
    .line 765
    add-long/2addr v12, v14

    .line 766
    aput-wide v12, v7, v8

    .line 767
    .line 768
    iget v8, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 769
    .line 770
    aget-wide v12, v7, v8

    .line 771
    .line 772
    add-long v12, v12, v18

    .line 773
    .line 774
    aput-wide v12, v7, v8

    .line 775
    .line 776
    iget v4, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 777
    .line 778
    aget-wide v12, v7, v4

    .line 779
    .line 780
    add-long/2addr v12, v5

    .line 781
    aput-wide v12, v7, v4

    .line 782
    .line 783
    :goto_c
    add-int/lit8 v1, v1, -0x1

    .line 784
    .line 785
    const/4 v5, 0x1

    .line 786
    const-wide/16 v6, -0x1

    .line 787
    .line 788
    goto :goto_b

    .line 789
    :cond_16
    :goto_d
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 790
    .line 791
    array-length v1, v1

    .line 792
    if-eqz v1, :cond_1c

    .line 793
    .line 794
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 795
    .line 796
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->getAsInt()I

    .line 797
    .line 798
    .line 799
    move-result v1

    .line 800
    if-gtz v1, :cond_17

    .line 801
    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    .line 803
    .line 804
    const-string v3, "Unexpected battery voltage ("

    .line 805
    .line 806
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    const-string v1, " mV) when querying energy consumers"

    .line 813
    .line 814
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    invoke-static {v11, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .line 823
    .line 824
    goto :goto_11

    .line 825
    :cond_17
    iget v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastVoltageMv:I

    .line 826
    .line 827
    if-eqz v2, :cond_18

    .line 828
    .line 829
    add-int/2addr v2, v1

    .line 830
    div-int/2addr v2, v3

    .line 831
    goto :goto_e

    .line 832
    :cond_18
    move v2, v1

    .line 833
    :goto_e
    iput v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastVoltageMv:I

    .line 834
    .line 835
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 836
    .line 837
    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 838
    .line 839
    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getConsumedEnergyUws([I)[J

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    if-nez v1, :cond_19

    .line 844
    .line 845
    goto :goto_11

    .line 846
    :cond_19
    array-length v3, v1

    .line 847
    const/4 v4, 0x1

    .line 848
    sub-int/2addr v3, v4

    .line 849
    :goto_f
    if-ltz v3, :cond_1c

    .line 850
    .line 851
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 852
    .line 853
    aget-wide v4, v4, v3

    .line 854
    .line 855
    const-wide/16 v6, -0x1

    .line 856
    .line 857
    cmp-long v8, v4, v6

    .line 858
    .line 859
    if-eqz v8, :cond_1a

    .line 860
    .line 861
    aget-wide v11, v1, v3

    .line 862
    .line 863
    sub-long/2addr v11, v4

    .line 864
    goto :goto_10

    .line 865
    :cond_1a
    move-wide v11, v9

    .line 866
    :goto_10
    cmp-long v4, v11, v9

    .line 867
    .line 868
    if-gez v4, :cond_1b

    .line 869
    .line 870
    move-wide v11, v9

    .line 871
    :cond_1b
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 872
    .line 873
    iget-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 874
    .line 875
    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 876
    .line 877
    invoke-static {v2, v11, v12}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(IJ)J

    .line 878
    .line 879
    .line 880
    move-result-wide v11

    .line 881
    invoke-virtual {v4, v5, v3, v11, v12}, Lcom/android/server/power/stats/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 882
    .line 883
    .line 884
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 885
    .line 886
    aget-wide v11, v1, v3

    .line 887
    .line 888
    aput-wide v11, v4, v3

    .line 889
    .line 890
    add-int/lit8 v3, v3, -0x1

    .line 891
    .line 892
    goto :goto_f

    .line 893
    :cond_1c
    :goto_11
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 894
    .line 895
    iget-wide v1, v1, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 896
    .line 897
    cmp-long v1, v1, v9

    .line 898
    .line 899
    if-nez v1, :cond_1d

    .line 900
    .line 901
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 902
    .line 903
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 904
    .line 905
    .line 906
    move-result-wide v1

    .line 907
    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 908
    .line 909
    iget-wide v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    .line 910
    .line 911
    sub-long v4, v1, v4

    .line 912
    .line 913
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 914
    .line 915
    .line 916
    move-result-wide v4

    .line 917
    iput-wide v4, v3, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 918
    .line 919
    iput-wide v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    .line 920
    .line 921
    :cond_1d
    iget-object v0, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 922
    .line 923
    return-object v0
.end method
