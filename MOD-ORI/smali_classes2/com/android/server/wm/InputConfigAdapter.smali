.class public abstract Lcom/android/server/wm/InputConfigAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INPUT_FEATURE_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

.field public static final INPUT_FEATURE_TO_CONFIG_MASK:I

.field public static final LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

.field public static final LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    const/16 v5, 0x800

    .line 12
    .line 13
    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 17
    .line 18
    const/16 v5, 0x4000

    .line 19
    .line 20
    const/4 v6, 0x4

    .line 21
    invoke-direct {v4, v6, v5, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 25
    .line 26
    const/16 v7, 0x8

    .line 27
    .line 28
    const/high16 v8, 0x40000

    .line 29
    .line 30
    invoke-direct {v5, v7, v8, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    .line 31
    .line 32
    .line 33
    filled-new-array {v0, v3, v4, v5}, [Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 38
    .line 39
    move v3, v2

    .line 40
    move v4, v3

    .line 41
    :goto_0
    if-ge v3, v6, :cond_0

    .line 42
    .line 43
    aget-object v5, v0, v3

    .line 44
    .line 45
    iget v5, v5, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    .line 46
    .line 47
    or-int/2addr v4, v5

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sput v4, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 54
    .line 55
    const/16 v3, 0x10

    .line 56
    .line 57
    invoke-direct {v0, v3, v7, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 61
    .line 62
    const/high16 v5, 0x800000

    .line 63
    .line 64
    invoke-direct {v4, v5, v3, v1}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 68
    .line 69
    const/16 v3, 0x200

    .line 70
    .line 71
    invoke-direct {v1, v8, v3, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    .line 72
    .line 73
    .line 74
    new-instance v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 75
    .line 76
    const/high16 v5, 0x20000000

    .line 77
    .line 78
    const/16 v7, 0x400

    .line 79
    .line 80
    invoke-direct {v3, v5, v7, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    .line 81
    .line 82
    .line 83
    filled-new-array {v0, v4, v1, v3}, [Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 88
    .line 89
    move v1, v2

    .line 90
    :goto_1
    if-ge v2, v6, :cond_1

    .line 91
    .line 92
    aget-object v3, v0, v2

    .line 93
    .line 94
    iget v3, v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    .line 95
    .line 96
    or-int/2addr v1, v3

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    sput v1, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    .line 101
    .line 102
    return-void
.end method

.method public static applyMapping(I[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;)I
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    .line 7
    aget-object v4, p1, v2

    .line 8
    .line 9
    iget v5, v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mFlag:I

    .line 10
    .line 11
    and-int/2addr v5, p0

    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move v5, v1

    .line 17
    :goto_1
    iget-boolean v6, v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInverted:Z

    .line 18
    .line 19
    if-eq v5, v6, :cond_1

    .line 20
    .line 21
    iget v4, v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    .line 22
    .line 23
    or-int/2addr v3, v4

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return v3
.end method

.method public static getInputConfigFromWindowParams(III)I
    .locals 1

    .line 1
    const/16 v0, 0x7dd

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x40

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    sget-object v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/android/server/wm/InputConfigAdapter;->applyMapping(I[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    or-int/2addr p0, p1

    .line 16
    sget-object p1, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/android/server/wm/InputConfigAdapter;->applyMapping(I[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    or-int/2addr p0, p1

    .line 23
    return p0
.end method
