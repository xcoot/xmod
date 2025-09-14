.class final enum Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public static final enum MAIN_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public static final enum MAIN_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public static final enum SUB_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public static final enum SUB_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 10
    .line 11
    const-string v2, "MAIN_MAIN"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 20
    .line 21
    const-string v3, "MAIN_SUB"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 28
    .line 29
    new-instance v3, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 30
    .line 31
    const-string v4, "SUB_MAIN"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->SUB_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 38
    .line 39
    new-instance v4, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 40
    .line 41
    const-string v5, "SUB_SUB"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->SUB_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->$VALUES:[Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 54
    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->$VALUES:[Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 8
    .line 9
    return-object v0
.end method
