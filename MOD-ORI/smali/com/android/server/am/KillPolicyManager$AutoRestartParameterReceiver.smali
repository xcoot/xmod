.class public Lcom/android/server/am/KillPolicyManager$AutoRestartParameterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p0, "MIN_TRIGGER_SIZE"

    .line 2
    .line 3
    const/16 p1, 0xa

    .line 4
    .line 5
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const-string p1, "NEVER_COLLECT_WITHIN"

    .line 10
    .line 11
    const/16 v0, 0xc

    .line 12
    .line 13
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const-string v0, "COMPACT_TRIGGER_SIZE"

    .line 18
    .line 19
    const/16 v1, 0x12c

    .line 20
    .line 21
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v1, "NATIVE_FLOOD_RATIO"

    .line 26
    .line 27
    const/16 v2, 0x1e

    .line 28
    .line 29
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const-string v3, "SYSPERS_FLOOD_RATIO"

    .line 34
    .line 35
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    sget-object v2, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    .line 40
    .line 41
    int-to-long v3, p0

    .line 42
    invoke-virtual {v2, v3, v4}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    sput p0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 49
    .line 50
    :cond_0
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    .line 51
    .line 52
    int-to-long v2, p1

    .line 53
    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    sput p1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    .line 60
    .line 61
    :cond_1
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    .line 62
    .line 63
    int-to-long v2, v0

    .line 64
    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    sput v0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 71
    .line 72
    :cond_2
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    .line 73
    .line 74
    int-to-long v2, v1

    .line 75
    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    sput v1, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 82
    .line 83
    :cond_3
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    .line 84
    .line 85
    int-to-long v0, p2

    .line 86
    invoke-virtual {p0, v0, v1}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    sput p2, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 93
    .line 94
    :cond_4
    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 95
    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string p1, "Auto Restart Parameter Updated. {sMinTriggerSize="

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget p1, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, ", sNeverCollectWithin="

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    sget p1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, ", sCompactTriggerSize="

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    sget p1, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, ", sNativeFloodRatio="

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    sget p1, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p1, ", sSyspersFloodRatio="

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    sget p1, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 146
    .line 147
    const-string/jumbo p2, "}"

    .line 148
    .line 149
    .line 150
    const-string v0, "ActivityManager_kpm"

    .line 151
    .line 152
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    return-void
.end method
