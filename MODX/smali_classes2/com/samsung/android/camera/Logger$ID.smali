.class public final enum Lcom/samsung/android/camera/Logger$ID;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/camera/Logger$ID;

.field public static final enum CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    .line 2
    .line 3
    const-string v1, "CAMERA_EVENT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/camera/Logger$ID;

    .line 12
    .line 13
    const-string v2, "SHAKE_EVENT_LISTENER"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    .line 20
    .line 21
    new-instance v2, Lcom/samsung/android/camera/Logger$ID;

    .line 22
    .line 23
    const-string v3, "REQUEST_INJECTOR_SERVICE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 30
    .line 31
    new-instance v3, Lcom/samsung/android/camera/Logger$ID;

    .line 32
    .line 33
    const-string v4, "VISION_SERVER_RECEIVER"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/samsung/android/camera/Logger$ID;

    .line 40
    .line 41
    const-string v5, "FOLD_EVENT"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 48
    .line 49
    new-instance v5, Lcom/samsung/android/camera/Logger$ID;

    .line 50
    .line 51
    const-string v6, "POST_PROCESS_EVENT"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lcom/samsung/android/camera/Logger$ID;->POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 58
    .line 59
    new-instance v6, Lcom/samsung/android/camera/Logger$ID;

    .line 60
    .line 61
    const-string v7, "CAMERA_APPLICATION_EVENT"

    .line 62
    .line 63
    const/4 v8, 0x6

    .line 64
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Lcom/samsung/android/camera/Logger$ID;->CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 68
    .line 69
    new-instance v7, Lcom/samsung/android/camera/Logger$ID;

    .line 70
    .line 71
    const-string v8, "DATABASE_EVENT"

    .line 72
    .line 73
    const/4 v9, 0x7

    .line 74
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    sput-object v7, Lcom/samsung/android/camera/Logger$ID;->DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 78
    .line 79
    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/camera/Logger$ID;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->$VALUES:[Lcom/samsung/android/camera/Logger$ID;

    .line 84
    .line 85
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/Logger$ID;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/camera/Logger$ID;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/camera/Logger$ID;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/Logger$ID;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->$VALUES:[Lcom/samsung/android/camera/Logger$ID;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/camera/Logger$ID;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/camera/Logger$ID;

    .line 8
    .line 9
    return-object v0
.end method
