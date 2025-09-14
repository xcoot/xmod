.class public Lcom/android/internal/util/jobs/ArrayUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field public static final EMPTY_FILE:[Ljava/io/File;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x49

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    sput-object v0, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/io/File;

    .line 10
    sput-object v0, Lcom/android/internal/util/jobs/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    if-nez p0, :cond_0

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static addAll(Landroid/util/ArraySet;Ljava/util/Collection;)Landroid/util/ArraySet;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 3
    new-instance p0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_1
    return-object p0
.end method

.method public static appendBoolean([ZZ)[Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p0, :cond_0

    .line 5
    new-array p0, v1, [Z

    .line 7
    aput-boolean p1, p0, v0

    .line 9
    return-object p0

    .line 10
    :cond_0
    array-length v2, p0

    .line 11
    add-int/2addr v1, v2

    .line 12
    new-array v1, v1, [Z

    .line 14
    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    aput-boolean p1, v1, v2

    .line 19
    return-object v1
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    .line 3
    :cond_0
    array-length p3, p1

    add-int/lit8 v1, p3, 0x1

    .line 4
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, v0, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 7
    :goto_0
    aput-object p2, p0, v0

    return-object p0
.end method

.method public static appendInt([II)[I
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([IIZ)[I

    move-result-object p0

    return-object p0
.end method

.method public static appendInt([IIZ)[I
    .locals 3

    if-nez p0, :cond_0

    .line 1
    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_2

    .line 3
    aget v2, p0, p2

    if-ne v2, p1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, v0, 0x1

    .line 4
    new-array p2, p2, [I

    .line 5
    invoke-static {p0, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput p1, p2, v0

    return-object p2
.end method

.method public static appendLong([JJ)[J
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p0

    return-object p0
.end method

.method public static appendLong([JJZ)[J
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 1
    new-array p0, v1, [J

    aput-wide p1, p0, v0

    return-object p0

    .line 2
    :cond_0
    array-length v2, p0

    if-nez p3, :cond_2

    move p3, v0

    :goto_0
    if-ge p3, v2, :cond_2

    .line 3
    aget-wide v3, p0, p3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    return-object p0

    :cond_1
    add-int/2addr p3, v1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v2

    .line 4
    new-array p3, v1, [J

    .line 5
    invoke-static {p0, v0, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-wide p1, p3, v2

    return-object p3
.end method

.method public static checkBounds(II)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 3
    if-le p0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 8
    const-string/jumbo v1, "length="

    .line 11
    const-string v2, "; index="

    .line 13
    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0
.end method

.method public static cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static cloneOrNull([J)[J
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static varargs concat([[B)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 11
    new-array p0, v0, [B

    return-object p0

    .line 12
    :cond_0
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    if-eqz v4, :cond_1

    .line 13
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    new-array v1, v3, [B

    .line 15
    array-length v2, p0

    move v3, v0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v5, p0, v3

    if-eqz v5, :cond_3

    .line 16
    array-length v6, v5

    invoke-static {v5, v0, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static varargs concat(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    if-eqz p1, :cond_7

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    if-nez v4, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    array-length v4, v4

    add-int/2addr v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 4
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_3
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 6
    array-length v0, p1

    move v2, v1

    move v3, v2

    :goto_2
    if-ge v2, v0, :cond_6

    aget-object v4, p1, v2

    if-eqz v4, :cond_5

    .line 7
    array-length v5, v4

    if-nez v5, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-object p0

    .line 10
    :cond_7
    :goto_4
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static contains([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static contains([JJ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static containsAll([C[C)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v4, p1, v3

    .line 4
    invoke-static {p0, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([CC)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 2
    invoke-static {p0, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    move v2, v0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_2

    .line 9
    aget-object v3, p1, v2

    .line 11
    invoke-static {p0, v3}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return v0
.end method

.method public static convertToIntArray(Landroid/util/ArraySet;)[I
    .locals 4

    .line 4
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 5
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static convertToIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertToLongArray([I)[J
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    new-array v0, v0, [J

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_1

    .line 12
    aget v2, p0, v1

    .line 14
    int-to-long v2, v2

    .line 15
    aput-wide v2, v0, v1

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-object v0
.end method

.method private static createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    if-ne p0, v0, :cond_0

    .line 5
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 7
    return-object p0

    .line 8
    :cond_0
    const-class v0, Ljava/lang/Object;

    .line 10
    if-ne p0, v0, :cond_1

    .line 12
    sget-object p0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 14
    return-object p0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, [Ljava/lang/Object;

    .line 22
    return-object p0
.end method

.method public static deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_8

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v0

    .line 17
    const-class v1, [Z

    .line 19
    if-ne v0, v1, :cond_0

    .line 21
    check-cast p0, [Z

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v0

    .line 32
    const-class v1, [B

    .line 34
    if-ne v0, v1, :cond_1

    .line 36
    check-cast p0, [B

    .line 38
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v0

    .line 47
    const-class v1, [C

    .line 49
    if-ne v0, v1, :cond_2

    .line 51
    check-cast p0, [C

    .line 53
    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    move-result-object v0

    .line 62
    const-class v1, [D

    .line 64
    if-ne v0, v1, :cond_3

    .line 66
    check-cast p0, [D

    .line 68
    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    move-result-object v0

    .line 77
    const-class v1, [F

    .line 79
    if-ne v0, v1, :cond_4

    .line 81
    check-cast p0, [F

    .line 83
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    move-result-object v0

    .line 92
    const-class v1, [I

    .line 94
    if-ne v0, v1, :cond_5

    .line 96
    check-cast p0, [I

    .line 98
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    move-result-object v0

    .line 107
    const-class v1, [J

    .line 109
    if-ne v0, v1, :cond_6

    .line 111
    check-cast p0, [J

    .line 113
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    move-result-object v0

    .line 122
    const-class v1, [S

    .line 124
    if-ne v0, v1, :cond_7

    .line 126
    check-cast p0, [S

    .line 128
    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_7
    check-cast p0, [Ljava/lang/Object;

    .line 135
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :cond_8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method

.method public static defeatNullable([I)[I
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Landroid/util/EmptyArray;->INT:[I

    :goto_0
    return-object p0
.end method

.method public static defeatNullable([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/android/internal/util/jobs/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    :goto_0
    return-object p0
.end method

.method public static defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 3
    if-ne p0, v0, :cond_0

    .line 5
    sget-object p0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result v0

    .line 12
    const v1, 0x7fffffff

    .line 15
    and-int/2addr v0, v1

    .line 16
    rem-int/lit8 v0, v0, 0x49

    .line 18
    sget-object v1, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 20
    aget-object v1, v1, v0

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 31
    move-result-object v2

    .line 32
    if-eq v2, p0, :cond_2

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    sget-object p0, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 41
    aput-object v1, p0, v0

    .line 43
    :cond_2
    check-cast v1, [Ljava/lang/Object;

    .line 45
    return-object v1
.end method

.method public static emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/jobs/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    :goto_0
    return-object p0
.end method

.method public static equals([B[BI)Z
    .locals 5

    .line 1
    if-ltz p2, :cond_5

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, p1, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    if-eqz p0, :cond_4

    .line 10
    if-eqz p1, :cond_4

    .line 12
    array-length v2, p0

    .line 13
    if-lt v2, p2, :cond_4

    .line 15
    array-length v2, p1

    .line 16
    if-ge v2, p2, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, p2, :cond_3

    .line 22
    aget-byte v3, p0, v2

    .line 24
    aget-byte v4, p1, v2

    .line 26
    if-eq v3, v4, :cond_2

    .line 28
    return v1

    .line 29
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    return v0

    .line 33
    :cond_4
    :goto_1
    return v1

    .line 34
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    throw p0
.end method

.method public static filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->size([Ljava/lang/Object;)I

    .line 11
    move-result v0

    .line 12
    new-array v1, v0, [Z

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v3, v0, :cond_2

    .line 19
    aget-object v5, p0, v3

    .line 21
    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 24
    move-result v5

    .line 25
    aput-boolean v5, v1, v3

    .line 27
    if-eqz v5, :cond_1

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    array-length p2, p0

    .line 35
    if-ne v4, p2, :cond_3

    .line 37
    return-object p0

    .line 38
    :cond_3
    invoke-interface {p1, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, [Ljava/lang/Object;

    .line 44
    if-nez v4, :cond_4

    .line 46
    return-object p1

    .line 47
    :cond_4
    move p2, v2

    .line 48
    :goto_1
    if-ge v2, v0, :cond_6

    .line 50
    aget-boolean v3, v1, v2

    .line 52
    if-eqz v3, :cond_5

    .line 54
    add-int/lit8 v3, p2, 0x1

    .line 56
    aget-object v4, p0, v2

    .line 58
    aput-object v4, p1, p2

    .line 60
    move p2, v3

    .line 61
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_6
    return-object p1
.end method

.method public static filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->size([Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    aget-object v4, p0, v2

    .line 12
    if-nez v4, :cond_0

    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-nez v3, :cond_2

    .line 21
    return-object p0

    .line 22
    :cond_2
    sub-int v2, v0, v3

    .line 24
    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, [Ljava/lang/Object;

    .line 30
    move v2, v1

    .line 31
    :goto_1
    if-ge v1, v0, :cond_4

    .line 33
    aget-object v3, p0, v1

    .line 35
    if-eqz v3, :cond_3

    .line 37
    add-int/lit8 v4, v2, 0x1

    .line 39
    aput-object v3, p1, v2

    .line 41
    move v2, v4

    .line 42
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    return-object p1
.end method

.method public static find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    array-length v0, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    aget-object v3, p0, v2

    .line 15
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 21
    return-object v3

    .line 22
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    return-object v1
.end method

.method public static firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method

.method public static getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    .line 4
    if-le v0, p1, :cond_0

    .line 6
    aget-object p0, p0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return-object p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p0

    .line 7
    if-ge v1, v2, :cond_2

    .line 9
    aget-object v2, p0, v1

    .line 11
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 17
    return v1

    .line 18
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    return v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([B)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 6
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([I)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 4
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([J)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 5
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 3
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([Z)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 7
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/Object;

    .line 11
    return-object p0
.end method

.method public static newUnpaddedArray$ravenwood(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, [Ljava/lang/Object;

    .line 7
    return-object p0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [Z

    .line 13
    return-object p0
.end method

.method public static newUnpaddedBooleanArray$ravenwood(I)[Z
    .locals 0

    .line 1
    new-array p0, p0, [Z

    .line 3
    return-object p0
.end method

.method public static newUnpaddedByteArray(I)[B
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [B

    .line 13
    return-object p0
.end method

.method public static newUnpaddedByteArray$ravenwood(I)[B
    .locals 0

    .line 1
    new-array p0, p0, [B

    .line 3
    return-object p0
.end method

.method public static newUnpaddedCharArray(I)[C
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [C

    .line 13
    return-object p0
.end method

.method public static newUnpaddedCharArray$ravenwood(I)[C
    .locals 0

    .line 1
    new-array p0, p0, [C

    .line 3
    return-object p0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [F

    .line 13
    return-object p0
.end method

.method public static newUnpaddedFloatArray$ravenwood(I)[F
    .locals 0

    .line 1
    new-array p0, p0, [F

    .line 3
    return-object p0
.end method

.method public static newUnpaddedIntArray(I)[I
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [I

    .line 13
    return-object p0
.end method

.method public static newUnpaddedIntArray$ravenwood(I)[I
    .locals 0

    .line 1
    new-array p0, p0, [I

    .line 3
    return-object p0
.end method

.method public static newUnpaddedLongArray(I)[J
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [J

    .line 13
    return-object p0
.end method

.method public static newUnpaddedLongArray$ravenwood(I)[J
    .locals 0

    .line 1
    new-array p0, p0, [J

    .line 3
    return-object p0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [Ljava/lang/Object;

    .line 13
    return-object p0
.end method

.method public static newUnpaddedObjectArray$ravenwood(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p0, [Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v1, v2, :cond_1

    .line 16
    return v3

    .line 17
    :cond_1
    move v2, v3

    .line 18
    move v4, v2

    .line 19
    :goto_0
    if-ge v2, v1, :cond_3

    .line 21
    if-nez v4, :cond_3

    .line 23
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v6

    .line 31
    if-eq v5, v6, :cond_2

    .line 33
    move v5, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v5, v3

    .line 36
    :goto_1
    or-int/2addr v4, v5

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    xor-int/lit8 p0, v4, 0x1

    .line 42
    return p0
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 3
    invoke-static {p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-object p1

    .line 10
    :cond_0
    array-length v0, p1

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_3

    .line 15
    aget-object v3, p1, v2

    .line 17
    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 23
    const/4 p2, 0x1

    .line 24
    if-ne v0, p2, :cond_1

    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 30
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, [Ljava/lang/Object;

    .line 36
    invoke-static {p1, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    add-int/lit8 v1, v2, 0x1

    .line 41
    sub-int/2addr v0, v2

    .line 42
    sub-int/2addr v0, p2

    .line 43
    invoke-static {p1, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-object p0

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-object p1
.end method

.method public static removeInt([II)[I
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_4

    .line 10
    aget v3, p0, v2

    .line 12
    if-ne v3, p1, :cond_3

    .line 14
    add-int/lit8 p1, v0, -0x1

    .line 16
    new-array v3, p1, [I

    .line 18
    if-lez v2, :cond_1

    .line 20
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    :cond_1
    if-ge v2, p1, :cond_2

    .line 25
    add-int/lit8 p1, v2, 0x1

    .line 27
    sub-int/2addr v0, v2

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 30
    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    :cond_2
    return-object v3

    .line 34
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_4
    return-object p0
.end method

.method public static removeLong([JJ)[J
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_4

    .line 10
    aget-wide v3, p0, v2

    .line 12
    cmp-long v3, v3, p1

    .line 14
    if-nez v3, :cond_3

    .line 16
    add-int/lit8 p1, v0, -0x1

    .line 18
    new-array p2, p1, [J

    .line 20
    if-lez v2, :cond_1

    .line 22
    invoke-static {p0, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    :cond_1
    if-ge v2, p1, :cond_2

    .line 27
    add-int/lit8 p1, v2, 0x1

    .line 29
    sub-int/2addr v0, v2

    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 32
    invoke-static {p0, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_2
    return-object p2

    .line 36
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    return-object p0
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_4

    .line 10
    aget-object v3, p0, v2

    .line 12
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_3

    .line 18
    add-int/lit8 p1, v0, -0x1

    .line 20
    new-array v3, p1, [Ljava/lang/String;

    .line 22
    if-lez v2, :cond_1

    .line 24
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    :cond_1
    if-ge v2, p1, :cond_2

    .line 29
    add-int/lit8 p1, v2, 0x1

    .line 31
    sub-int/2addr v0, v2

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 34
    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_2
    return-object v3

    .line 38
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    return-object p0
.end method

.method public static size(Ljava/util/Collection;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static size(Ljava/util/Map;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static size([Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public static startsWith([B[B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    array-length v1, p0

    .line 8
    array-length v2, p1

    .line 9
    if-ge v1, v2, :cond_1

    .line 11
    return v0

    .line 12
    :cond_1
    move v1, v0

    .line 13
    :goto_0
    array-length v2, p1

    .line 14
    if-ge v1, v2, :cond_3

    .line 16
    aget-byte v2, p0, v1

    .line 18
    aget-byte v3, p1, v1

    .line 20
    if-eq v2, v3, :cond_2

    .line 22
    return v0

    .line 23
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_4
    :goto_1
    return v0
.end method

.method public static throwsIfOutOfBounds(III)V
    .locals 4

    .line 1
    if-ltz p0, :cond_1

    .line 3
    or-int v0, p1, p2

    .line 5
    if-ltz v0, :cond_0

    .line 7
    sub-int v0, p0, p2

    .line 9
    if-gt p1, v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 14
    const-string/jumbo v1, "length="

    .line 17
    const-string v2, "; regionStart="

    .line 19
    const-string v3, "; regionLength="

    .line 21
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 38
    const-string p2, "Negative length: "

    .line 40
    invoke-static {p0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1
.end method

.method public static toList([Ljava/lang/Object;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    aget-object v3, p0, v2

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method public static total([J)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-eqz p0, :cond_0

    .line 5
    array-length v2, p0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v3, v2, :cond_0

    .line 9
    aget-wide v4, p0, v3

    .line 11
    add-long/2addr v0, v4

    .line 12
    add-int/lit8 v3, v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-wide v0
.end method

.method public static trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 3
    if-nez p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p0

    .line 7
    if-ne v0, p1, :cond_1

    .line 9
    return-object p0

    .line 10
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public static unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    add-int/lit8 v2, v1, -0x1

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-gt v0, v3, :cond_4

    .line 14
    :goto_1
    if-ge v0, v1, :cond_1

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_1

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_2
    if-le v3, v0, :cond_2

    .line 31
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 41
    add-int/lit8 v3, v3, -0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    if-lt v0, v3, :cond_3

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    invoke-static {p0, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    add-int/lit8 v3, v3, -0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    :goto_3
    if-lt v2, v0, :cond_5

    .line 57
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 62
    goto :goto_3

    .line 63
    :cond_5
    sub-int/2addr v1, v0

    .line 64
    return v1
.end method
