.class final enum Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;


# instance fields
.field private simpleKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2
    .line 3
    const-string/jumbo v1, "in"

    .line 4
    .line 5
    .line 6
    const-string v2, "INIT"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 13
    .line 14
    const-string/jumbo v2, "no"

    .line 15
    .line 16
    .line 17
    const-string v3, "NO_SATELLITE"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 26
    .line 27
    const-string/jumbo v3, "sh"

    .line 28
    .line 29
    .line 30
    const-string v4, "SHADOW"

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    invoke-direct {v2, v5, v4, v3}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 37
    .line 38
    new-instance v3, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 39
    .line 40
    const-string/jumbo v4, "di"

    .line 41
    .line 42
    .line 43
    const-string v5, "DEEP_INDOOR"

    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    invoke-direct {v3, v6, v5, v4}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v3, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 50
    .line 51
    new-instance v4, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 52
    .line 53
    const-string/jumbo v5, "mi"

    .line 54
    .line 55
    .line 56
    const-string v6, "MILD_INDOOR"

    .line 57
    .line 58
    const/4 v7, 0x4

    .line 59
    invoke-direct {v4, v7, v6, v5}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v4, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 63
    .line 64
    new-instance v5, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 65
    .line 66
    const-string/jumbo v6, "od"

    .line 67
    .line 68
    .line 69
    const-string v7, "OUTDOOR"

    .line 70
    .line 71
    const/4 v8, 0x5

    .line 72
    invoke-direct {v5, v8, v7, v6}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v5, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 76
    .line 77
    filled-new-array/range {v0 .. v5}, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 82
    .line 83
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->simpleKeyword:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 8
    .line 9
    return-object v0
.end method
