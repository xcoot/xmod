.class public final enum Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

.field public static final enum HOT:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

.field public static final enum UNKNOWN:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;


# instance fields
.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 2
    .line 3
    const-string v1, "COLD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x7

    .line 7
    const-string v4, "cold"

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 13
    .line 14
    const-string v2, "WARM"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    const-string/jumbo v5, "warm"

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 26
    .line 27
    const-string v3, "HOT"

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    const/16 v5, 0x9

    .line 31
    .line 32
    const-string v6, "hot"

    .line 33
    .line 34
    invoke-direct {v2, v4, v5, v3, v6}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->HOT:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 38
    .line 39
    new-instance v3, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 40
    .line 41
    const-string v4, "UNKNOWN"

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    const/4 v6, -0x1

    .line 45
    const-string/jumbo v7, "unknown"

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v5, v6, v4, v7}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v3, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->UNKNOWN:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 52
    .line 53
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->$VALUES:[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->type:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->name:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->$VALUES:[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->type:I

    .line 2
    .line 3
    return p0
.end method
