.class final enum Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;


# instance fields
.field private final displayState:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 2
    .line 3
    const-string v1, "ON"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 11
    .line 12
    const-string v2, "ON_SUSPEND"

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x6

    .line 16
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 20
    .line 21
    const-string v5, "VR"

    .line 22
    .line 23
    const/4 v6, 0x5

    .line 24
    invoke-direct {v2, v3, v6, v5}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 28
    .line 29
    const-string v5, "DOZE"

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    invoke-direct {v3, v7, v7, v5}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 36
    .line 37
    const-string v7, "DOZE_SUSPEND"

    .line 38
    .line 39
    const/4 v8, 0x4

    .line 40
    invoke-direct {v5, v8, v8, v7}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v7, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 44
    .line 45
    const-string v8, "OFF"

    .line 46
    .line 47
    invoke-direct {v7, v6, v4, v8}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(IILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move-object v4, v5

    .line 51
    move-object v5, v7

    .line 52
    filled-new-array/range {v0 .. v5}, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->$VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->displayState:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->$VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDisplayState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->displayState:I

    .line 2
    .line 3
    return p0
.end method
