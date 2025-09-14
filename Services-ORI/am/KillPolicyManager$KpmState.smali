.class public final enum Lcom/android/server/am/KillPolicyManager$KpmState;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "None"

    .line 5
    .line 6
    const-string v3, "NONE"

    .line 7
    .line 8
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "Light"

    .line 17
    .line 18
    const-string v4, "LIGHT"

    .line 19
    .line 20
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "Normal"

    .line 29
    .line 30
    const-string v5, "NORMAL"

    .line 31
    .line 32
    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 36
    .line 37
    new-instance v3, Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const-string v5, "Heavy"

    .line 41
    .line 42
    const-string v6, "HEAVY"

    .line 43
    .line 44
    invoke-direct {v3, v4, v6, v5}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 48
    .line 49
    new-instance v4, Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const-string v6, "Critical"

    .line 53
    .line 54
    const-string v7, "CRITICAL"

    .line 55
    .line 56
    invoke-direct {v4, v5, v7, v6}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 60
    .line 61
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$KpmState;->mName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$KpmState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmState;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
