.class public final enum Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 2
    .line 3
    const-string v1, "ON"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 12
    .line 13
    const-string v1, "OFF"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 22
    .line 23
    const-string v1, "OFF_FORCEFUL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 30
    .line 31
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->$values()[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 8
    .line 9
    return-object v0
.end method
