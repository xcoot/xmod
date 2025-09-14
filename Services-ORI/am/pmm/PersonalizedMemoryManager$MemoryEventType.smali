.class public final enum Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

.field public static final enum APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

.field public static final enum LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;


# instance fields
.field private mTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 2
    .line 3
    const-string v1, "LMKD_KILL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 12
    .line 13
    const-string v2, "PREV_PROC_DIED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v2, v2}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 20
    .line 21
    const-string v3, "DEVICE_IDLE"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v4, v3, v3}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 28
    .line 29
    const-string v4, "APP_LAUNCHED"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-direct {v3, v5, v4, v4}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 36
    .line 37
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->$VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->mTypeName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->$VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->mTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
