.class public final enum Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;


# instance fields
.field private final threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    const-string v2, "UNDER_500"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 12
    .line 13
    const/16 v2, 0x3e8

    .line 14
    .line 15
    const-string v3, "UNDER_1000"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 22
    .line 23
    const/16 v3, 0x5dc

    .line 24
    .line 25
    const-string v4, "UNDER_1500"

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-direct {v2, v5, v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 32
    .line 33
    const/16 v4, 0x7d0

    .line 34
    .line 35
    const-string v5, "UNDER_2000"

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    invoke-direct {v3, v6, v4, v5}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 42
    .line 43
    const/16 v5, 0x9c4

    .line 44
    .line 45
    const-string v6, "UNDER_2500"

    .line 46
    .line 47
    const/4 v7, 0x4

    .line 48
    invoke-direct {v4, v7, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 52
    .line 53
    const/16 v6, 0xbb8

    .line 54
    .line 55
    const-string v7, "UNDER_3000"

    .line 56
    .line 57
    const/4 v8, 0x5

    .line 58
    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 62
    .line 63
    const/16 v7, 0xfa0

    .line 64
    .line 65
    const-string v8, "UNDER_4000"

    .line 66
    .line 67
    const/4 v9, 0x6

    .line 68
    invoke-direct {v6, v9, v7, v8}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 72
    .line 73
    const/16 v8, 0x1388

    .line 74
    .line 75
    const-string v9, "UNDER_5000"

    .line 76
    .line 77
    const/4 v10, 0x7

    .line 78
    invoke-direct {v7, v10, v8, v9}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 82
    .line 83
    const/16 v9, 0x2710

    .line 84
    .line 85
    const-string v10, "UNDER_10000"

    .line 86
    .line 87
    const/16 v11, 0x8

    .line 88
    .line 89
    invoke-direct {v8, v11, v9, v10}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v9, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 93
    .line 94
    const/4 v10, -0x1

    .line 95
    const-string v11, "OVER_THAN_10000"

    .line 96
    .line 97
    const/16 v12, 0x9

    .line 98
    .line 99
    invoke-direct {v9, v12, v10, v11}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;-><init>(IILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    filled-new-array/range {v0 .. v9}, [Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->$VALUES:[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 107
    .line 108
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->threshold:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->$VALUES:[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getThreshold()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->threshold:I

    .line 2
    .line 3
    return p0
.end method
