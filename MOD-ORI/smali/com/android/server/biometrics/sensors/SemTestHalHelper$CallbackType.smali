.class public final enum Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 2
    .line 3
    const-string v1, "ACQUIRED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 12
    .line 13
    const-string v2, "ERROR"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 22
    .line 23
    const-string v3, "ENROLL_RESULT"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 32
    .line 33
    const-string v4, "AUTHENTICATED"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 42
    .line 43
    const-string v5, "REMOVED"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 50
    .line 51
    const-string v6, "ENUMERATE"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 58
    .line 59
    const-string v7, "TSP_FOD"

    .line 60
    .line 61
    const/4 v8, 0x6

    .line 62
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 66
    .line 67
    filled-new-array/range {v0 .. v6}, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->$VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 72
    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->$VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 8
    .line 9
    return-object v0
.end method
