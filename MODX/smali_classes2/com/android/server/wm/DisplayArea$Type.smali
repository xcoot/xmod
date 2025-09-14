.class final enum Lcom/android/server/wm/DisplayArea$Type;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum ANY:Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    const-string v1, "ABOVE_TASKS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/wm/DisplayArea$Type;

    .line 12
    .line 13
    const-string v2, "BELOW_TASKS"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/wm/DisplayArea$Type;

    .line 22
    .line 23
    const-string v3, "ANY"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/android/server/wm/DisplayArea$Type;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->$VALUES:[Lcom/android/server/wm/DisplayArea$Type;

    .line 36
    .line 37
    return-void
.end method

.method public static typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/wm/DisplayArea;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Lcom/android/server/wm/WindowToken;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    instance-of v0, p0, Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    check-cast p0, Lcom/android/server/wm/WindowToken;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 v0, 0x2

    .line 27
    if-ge p0, v0, :cond_1

    .line 28
    .line 29
    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 33
    .line 34
    :goto_0
    return-object p0

    .line 35
    :cond_2
    instance-of v0, p0, Lcom/android/server/wm/Task;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Unknown container: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/DisplayArea$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/DisplayArea$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/DisplayArea$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->$VALUES:[Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/wm/DisplayArea$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/wm/DisplayArea$Type;

    .line 8
    .line 9
    return-object v0
.end method
