.class public final enum Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 10
    .line 11
    const-string v2, "ALREADY_DIED"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 18
    .line 19
    const-string v3, "EXECUTING_SERVICE"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 26
    .line 27
    const-string v4, "RUNNING_INTENT"

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 34
    .line 35
    const-string v5, "ACTIVITY_TIME"

    .line 36
    .line 37
    const/4 v6, 0x4

    .line 38
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    sput-object v4, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 42
    .line 43
    new-instance v5, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 44
    .line 45
    const-string v6, "VISIBLE_ADJ"

    .line 46
    .line 47
    const/4 v7, 0x5

    .line 48
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 52
    .line 53
    const-string v7, "HAS_CONNECTION_PROVIDER"

    .line 54
    .line 55
    const/4 v8, 0x6

    .line 56
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    filled-new-array/range {v0 .. v6}, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 64
    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 8
    .line 9
    return-object v0
.end method
