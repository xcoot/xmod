.class public final enum Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 3
    const-string v1, "INTEGER"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 11
    new-instance v1, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 13
    const-string v2, "TEXT"

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 21
    new-instance v2, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 23
    const-string v3, "NUMERIC"

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v2, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 31
    new-instance v3, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 33
    const-string v4, "BLOB"

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v3, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 41
    new-instance v4, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 43
    const-string v5, "REAL"

    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v4, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 9
    return-object v0
.end method
