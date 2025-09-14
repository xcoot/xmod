.class public final Lcom/att/iqi/lib/Metric$ID;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final sIDPattern:Ljava/lang/String; = "[A-Z0-9_]{4}"

.field private static final sPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mID:I

.field private final mStringID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[A-Z0-9_]{4}"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/att/iqi/lib/Metric$ID;->sPattern:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Lcom/att/iqi/lib/Metric$ID$1;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/att/iqi/lib/Metric$ID$1;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    .line 9
    invoke-static {p1}, Lcom/att/iqi/lib/Metric$ID;->idFromInt(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric$ID;->isInvalidId(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Metric ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric$ID;->isInvalidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/att/iqi/lib/Metric$ID;->idFromString(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Metric ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static idFromInt(I)Ljava/lang/String;
    .locals 5

    .line 1
    shr-int/lit8 v0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    int-to-char v0, v0

    .line 6
    shr-int/lit8 v1, p0, 0x10

    .line 7
    .line 8
    and-int/lit16 v1, v1, 0xff

    .line 9
    .line 10
    int-to-char v1, v1

    .line 11
    shr-int/lit8 v2, p0, 0x8

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    int-to-char v2, v2

    .line 16
    and-int/lit16 p0, p0, 0xff

    .line 17
    .line 18
    int-to-char p0, p0

    .line 19
    const/4 v3, 0x4

    .line 20
    new-array v3, v3, [C

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-char v0, v3, v4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-char v1, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-char v2, v3, v0

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    aput-char p0, v3, v0

    .line 33
    .line 34
    new-instance p0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method private static idFromString(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    shl-int/lit8 v0, v0, 0x18

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    shl-int/lit8 v1, v1, 0x10

    .line 26
    .line 27
    or-int/2addr v0, v1

    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    and-int/lit16 v1, v1, 0xff

    .line 34
    .line 35
    shl-int/lit8 v1, v1, 0x8

    .line 36
    .line 37
    or-int/2addr v0, v1

    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    and-int/lit16 p0, p0, 0xff

    .line 44
    .line 45
    or-int/2addr p0, v0

    .line 46
    return p0
.end method

.method private isInvalidId(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/att/iqi/lib/Metric$ID;->sPattern:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method


# virtual methods
.method public asInt()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    .line 2
    .line 3
    return p0
.end method

.method public asString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-class v1, Lcom/att/iqi/lib/Metric$ID;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 14
    .line 15
    iget v1, p1, Lcom/att/iqi/lib/Metric$ID;->mID:I

    .line 16
    .line 17
    iget v2, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    const/16 v0, 0xd15

    .line 12
    .line 13
    add-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const/16 p2, 0xe

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
