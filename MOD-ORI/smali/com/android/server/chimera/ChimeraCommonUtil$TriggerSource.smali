.class public final enum Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_LMKD_GENIE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "LMKD"

    .line 5
    .line 6
    const-string v3, "TRIGGER_SOURCE_LMKD"

    .line 7
    .line 8
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "BottleneckHint"

    .line 17
    .line 18
    const-string v4, "TRIGGER_SOURCE_BOTTLENECK_HINT"

    .line 19
    .line 20
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "HomeIdle"

    .line 29
    .line 30
    const-string v5, "TRIGGER_SOURCE_HOME_IDLE"

    .line 31
    .line 32
    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 36
    .line 37
    new-instance v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const-string v5, "PMMCritical"

    .line 41
    .line 42
    const-string v6, "TRIGGER_SOURCE_PMM_CRITICAL"

    .line 43
    .line 44
    invoke-direct {v3, v4, v6, v5}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 48
    .line 49
    new-instance v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const-string v6, "DeviceIdle"

    .line 53
    .line 54
    const-string v7, "TRIGGER_SOURCE_DEVICE_IDLE"

    .line 55
    .line 56
    invoke-direct {v4, v5, v7, v6}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 60
    .line 61
    new-instance v5, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 62
    .line 63
    const/4 v6, 0x5

    .line 64
    const-string v7, "AppLaunchIntent"

    .line 65
    .line 66
    const-string v8, "TRIGGER_SOURCE_APP_LAUNCH_INTENT"

    .line 67
    .line 68
    invoke-direct {v5, v6, v8, v7}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v5, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 72
    .line 73
    new-instance v6, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 74
    .line 75
    const/4 v7, 0x6

    .line 76
    const-string v8, "Quota"

    .line 77
    .line 78
    const-string v9, "TRIGGER_SOURCE_QUOTA"

    .line 79
    .line 80
    invoke-direct {v6, v7, v9, v8}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v6, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 84
    .line 85
    new-instance v7, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 86
    .line 87
    const/4 v8, 0x7

    .line 88
    const-string v9, "LMKDGenie"

    .line 89
    .line 90
    const-string v10, "TRIGGER_SOURCE_LMKD_GENIE"

    .line 91
    .line 92
    invoke-direct {v7, v8, v10, v9}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v7, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD_GENIE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 96
    .line 97
    filled-new-array/range {v0 .. v7}, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 102
    .line 103
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 8
    .line 9
    return-object v0
.end method
