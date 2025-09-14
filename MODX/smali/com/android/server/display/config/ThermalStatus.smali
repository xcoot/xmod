.class public final enum Lcom/android/server/display/config/ThermalStatus;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/config/ThermalStatus;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/display/config/ThermalStatus;

    .line 3
    const-string/jumbo v1, "none"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/display/config/ThermalStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Lcom/android/server/display/config/ThermalStatus;

    .line 12
    const-string/jumbo v2, "light"

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v2, v2}, Lcom/android/server/display/config/ThermalStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v2, Lcom/android/server/display/config/ThermalStatus;

    .line 21
    const-string/jumbo v3, "moderate"

    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-direct {v2, v4, v3, v3}, Lcom/android/server/display/config/ThermalStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v3, Lcom/android/server/display/config/ThermalStatus;

    .line 30
    const-string/jumbo v4, "severe"

    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v5, v4, v4}, Lcom/android/server/display/config/ThermalStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v4, Lcom/android/server/display/config/ThermalStatus;

    .line 39
    const-string/jumbo v5, "critical"

    .line 42
    const/4 v6, 0x4

    .line 43
    invoke-direct {v4, v6, v5, v5}, Lcom/android/server/display/config/ThermalStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v5, Lcom/android/server/display/config/ThermalStatus;

    .line 48
    const-string/jumbo v6, "emergency"

    .line 51
    const/4 v7, 0x5

    .line 52
    invoke-direct {v5, v7, v6, v6}, Lcom/android/server/display/config/ThermalStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v6, Lcom/android/server/display/config/ThermalStatus;

    .line 57
    const-string/jumbo v7, "shutdown"

    .line 60
    const/4 v8, 0x6

    .line 61
    invoke-direct {v6, v8, v7, v7}, Lcom/android/server/display/config/ThermalStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    filled-new-array/range {v0 .. v6}, [Lcom/android/server/display/config/ThermalStatus;

    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/android/server/display/config/ThermalStatus;->$VALUES:[Lcom/android/server/display/config/ThermalStatus;

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/android/server/display/config/ThermalStatus;->rawName:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/display/config/ThermalStatus;->values()[Lcom/android/server/display/config/ThermalStatus;

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
    iget-object v4, v3, Lcom/android/server/display/config/ThermalStatus;->rawName:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/display/config/ThermalStatus;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/config/ThermalStatus;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/display/config/ThermalStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/display/config/ThermalStatus;->$VALUES:[Lcom/android/server/display/config/ThermalStatus;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/display/config/ThermalStatus;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/display/config/ThermalStatus;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getRawName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/ThermalStatus;->rawName:Ljava/lang/String;

    .line 3
    return-object p0
.end method
