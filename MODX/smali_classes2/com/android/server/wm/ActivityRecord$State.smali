.class final enum Lcom/android/server/wm/ActivityRecord$State;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum FINISHING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum PAUSED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum PAUSING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum RESUMED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STARTED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STOPPED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STOPPING:Lcom/android/server/wm/ActivityRecord$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    .line 2
    .line 3
    const-string v1, "INITIALIZING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/wm/ActivityRecord$State;

    .line 12
    .line 13
    const-string v2, "STARTED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/wm/ActivityRecord$State;

    .line 22
    .line 23
    const-string v3, "RESUMED"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/wm/ActivityRecord$State;

    .line 32
    .line 33
    const-string v4, "PAUSING"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/wm/ActivityRecord$State;

    .line 42
    .line 43
    const-string v5, "PAUSED"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/wm/ActivityRecord$State;

    .line 52
    .line 53
    const-string v6, "STOPPING"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 60
    .line 61
    new-instance v6, Lcom/android/server/wm/ActivityRecord$State;

    .line 62
    .line 63
    const-string v7, "STOPPED"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    .line 70
    .line 71
    new-instance v7, Lcom/android/server/wm/ActivityRecord$State;

    .line 72
    .line 73
    const-string v8, "FINISHING"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    .line 80
    .line 81
    new-instance v8, Lcom/android/server/wm/ActivityRecord$State;

    .line 82
    .line 83
    const-string v9, "DESTROYING"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    .line 91
    .line 92
    new-instance v9, Lcom/android/server/wm/ActivityRecord$State;

    .line 93
    .line 94
    const-string v10, "DESTROYED"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 102
    .line 103
    new-instance v10, Lcom/android/server/wm/ActivityRecord$State;

    .line 104
    .line 105
    const-string v11, "RESTARTING_PROCESS"

    .line 106
    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v10, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    .line 113
    .line 114
    filled-new-array/range {v0 .. v10}, [Lcom/android/server/wm/ActivityRecord$State;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->$VALUES:[Lcom/android/server/wm/ActivityRecord$State;

    .line 119
    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$State;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wm/ActivityRecord$State;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/ActivityRecord$State;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/ActivityRecord$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->$VALUES:[Lcom/android/server/wm/ActivityRecord$State;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/wm/ActivityRecord$State;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/wm/ActivityRecord$State;

    .line 8
    .line 9
    return-object v0
.end method
