.class final enum Lcom/android/server/credentials/RequestSession$RequestSessionStatus;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public static final enum COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public static final enum IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 2
    .line 3
    const-string v1, "IN_PROGRESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 12
    .line 13
    const-string v2, "CANCELLED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 20
    .line 21
    const-string v3, "COMPLETE"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 28
    .line 29
    filled-new-array {v0, v1, v2}, [Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->$VALUES:[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 34
    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/RequestSession$RequestSessionStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->$VALUES:[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 8
    .line 9
    return-object v0
.end method
