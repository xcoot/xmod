.class final enum Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public static final enum DYNAMIC_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public static final enum FIXED_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public static final enum INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public static final enum STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 2
    .line 3
    const-string v1, "INITIAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 10
    .line 11
    new-instance v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 12
    .line 13
    const-string v2, "STORED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 20
    .line 21
    new-instance v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 22
    .line 23
    const-string v3, "DYNAMIC_CODES"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->DYNAMIC_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 30
    .line 31
    new-instance v3, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 32
    .line 33
    const-string v4, "FIXED_CODES"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->FIXED_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->$VALUES:[Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 46
    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->$VALUES:[Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 8
    .line 9
    return-object v0
.end method
