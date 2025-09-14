.class public final enum Lcom/android/server/display/config/AutoBrightnessModeName;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/config/AutoBrightnessModeName;

.field public static final enum _default:Lcom/android/server/display/config/AutoBrightnessModeName;

.field public static final enum doze:Lcom/android/server/display/config/AutoBrightnessModeName;

.field public static final enum idle:Lcom/android/server/display/config/AutoBrightnessModeName;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "default"

    .line 7
    const-string v3, "_default"

    .line 9
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/display/config/AutoBrightnessModeName;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    sput-object v0, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 14
    new-instance v1, Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 16
    const-string/jumbo v2, "idle"

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v1, v3, v2, v2}, Lcom/android/server/display/config/AutoBrightnessModeName;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    sput-object v1, Lcom/android/server/display/config/AutoBrightnessModeName;->idle:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 25
    new-instance v2, Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 27
    const-string/jumbo v3, "doze"

    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-direct {v2, v4, v3, v3}, Lcom/android/server/display/config/AutoBrightnessModeName;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    sput-object v2, Lcom/android/server/display/config/AutoBrightnessModeName;->doze:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 36
    filled-new-array {v0, v1, v2}, [Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/android/server/display/config/AutoBrightnessModeName;->$VALUES:[Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/android/server/display/config/AutoBrightnessModeName;->rawName:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessModeName;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/display/config/AutoBrightnessModeName;->values()[Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    aget-object v3, v0, v2

    .line 11
    iget-object v4, v3, Lcom/android/server/display/config/AutoBrightnessModeName;->rawName:Ljava/lang/String;

    .line 13
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 19
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessModeName;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/display/config/AutoBrightnessModeName;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/display/config/AutoBrightnessModeName;->$VALUES:[Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/display/config/AutoBrightnessModeName;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getRawName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightnessModeName;->rawName:Ljava/lang/String;

    .line 3
    return-object p0
.end method
