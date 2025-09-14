.class final enum Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public static final enum IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public static final enum TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public static final enum USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

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
    sput-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 12
    .line 13
    const-string v2, "USER_INTERACTION"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 22
    .line 23
    const-string v3, "NOT_STARTED"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 30
    .line 31
    const-string v4, "TERMINATED"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 38
    .line 39
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->$VALUES:[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 44
    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->$VALUES:[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 8
    .line 9
    return-object v0
.end method
