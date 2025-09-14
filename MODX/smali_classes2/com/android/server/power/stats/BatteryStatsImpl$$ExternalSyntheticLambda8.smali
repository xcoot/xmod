.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryPermil()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryCCInfo()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    .line 22
    .line 23
    sub-int/2addr v4, v2

    .line 24
    if-lez v4, :cond_2

    .line 25
    .line 26
    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargePermil:I

    .line 27
    .line 28
    add-int/2addr v5, v4

    .line 29
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargePermil:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    .line 39
    .line 40
    sub-int/2addr v4, v2

    .line 41
    if-lez v4, :cond_2

    .line 42
    .line 43
    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceChargePermil:I

    .line 44
    .line 45
    add-int/2addr v5, v4

    .line 46
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenDozeSinceChargePermil:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    iget v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    .line 56
    .line 57
    sub-int/2addr v4, v2

    .line 58
    if-lez v4, :cond_2

    .line 59
    .line 60
    iget v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargePermil:I

    .line 61
    .line 62
    add-int/2addr v5, v4

    .line 63
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargePermil:I

    .line 64
    .line 65
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x0

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    .line 73
    .line 74
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    .line 75
    .line 76
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    .line 86
    .line 87
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    .line 88
    .line 89
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-static {p0}, Landroid/view/Display;->isOffState(I)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_5

    .line 97
    .line 98
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelPermil:I

    .line 99
    .line 100
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenDozeUnplugLevelPermil:I

    .line 101
    .line 102
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelPermil:I

    .line 103
    .line 104
    :cond_5
    :goto_1
    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    .line 111
    .line 112
    sub-int/2addr v1, v3

    .line 113
    if-lez v1, :cond_8

    .line 114
    .line 115
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargeCoulombCounter:I

    .line 116
    .line 117
    add-int/2addr v2, v1

    .line 118
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOnSinceChargeCoulombCounter:I

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 128
    .line 129
    sub-int/2addr v1, v3

    .line 130
    if-lez v1, :cond_8

    .line 131
    .line 132
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    .line 133
    .line 134
    add-int/2addr v2, v1

    .line 135
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_8

    .line 143
    .line 144
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 145
    .line 146
    sub-int/2addr v1, v3

    .line 147
    if-lez v1, :cond_8

    .line 148
    .line 149
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    .line 150
    .line 151
    add-int/2addr v2, v1

    .line 152
    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeAmountScreenOffSinceChargeCoulombCounter:I

    .line 153
    .line 154
    :cond_8
    :goto_2
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_9

    .line 159
    .line 160
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    .line 161
    .line 162
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_9
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_a

    .line 170
    .line 171
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    .line 172
    .line 173
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_a
    invoke-static {p0}, Landroid/view/Display;->isOffState(I)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-eqz p0, :cond_b

    .line 181
    .line 182
    iput v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOnUnplugLevelCoulombCounter:I

    .line 183
    .line 184
    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffUnplugLevelCoulombCounter:I

    .line 185
    .line 186
    :cond_b
    :goto_3
    return-void
.end method
