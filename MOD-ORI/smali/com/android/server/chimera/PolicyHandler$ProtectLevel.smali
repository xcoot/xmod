.class public final enum Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public static final enum HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public static final enum NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 2
    .line 3
    const-string v1, "NORMAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 12
    .line 13
    const-string v2, "HEAVY"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 26
    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 8
    .line 9
    return-object v0
.end method
