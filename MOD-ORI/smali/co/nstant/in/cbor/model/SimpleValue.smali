.class public final Lco/nstant/in/cbor/model/SimpleValue;
.super Lco/nstant/in/cbor/model/Special;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FALSE:Lco/nstant/in/cbor/model/SimpleValue;

.field public static final NULL:Lco/nstant/in/cbor/model/SimpleValue;

.field public static final TRUE:Lco/nstant/in/cbor/model/SimpleValue;

.field public static final UNDEFINED:Lco/nstant/in/cbor/model/SimpleValue;


# instance fields
.field public final simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 2
    .line 3
    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lco/nstant/in/cbor/model/SimpleValue;->FALSE:Lco/nstant/in/cbor/model/SimpleValue;

    .line 9
    .line 10
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 11
    .line 12
    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lco/nstant/in/cbor/model/SimpleValue;->TRUE:Lco/nstant/in/cbor/model/SimpleValue;

    .line 18
    .line 19
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 20
    .line 21
    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 27
    .line 28
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 29
    .line 30
    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lco/nstant/in/cbor/model/SimpleValue;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValue;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 4
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

    .line 6
    :goto_0
    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    .line 7
    iput p1, p0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    and-int/lit8 p1, p1, 0x1f

    packed-switch p1, :pswitch_data_0

    .line 8
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    .line 9
    :pswitch_0
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    .line 10
    :pswitch_1
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    .line 11
    :pswitch_2
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    .line 12
    :pswitch_3
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    .line 13
    :pswitch_4
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 14
    :goto_1
    iput-object p1, p0, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lco/nstant/in/cbor/model/SimpleValueType;)V
    .locals 1

    .line 1
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    .line 2
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/SimpleValueType;->getValue()I

    move-result v0

    iput v0, p0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    .line 3
    iput-object p1, p0, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p0, p0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    .line 16
    .line 17
    iget p1, v0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    .line 18
    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lco/nstant/in/cbor/model/Special;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p0, p0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
