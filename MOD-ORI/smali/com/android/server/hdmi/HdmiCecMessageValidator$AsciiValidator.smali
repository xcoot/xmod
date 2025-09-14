.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mMaxLength:I

.field public final mMinLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 3
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    const/16 p1, 0xe

    .line 6
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 9
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public final isValid([B)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x4

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    aget-byte p1, p1, v0

    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    :goto_0
    return p0

    .line 28
    :pswitch_0
    array-length v0, p1

    .line 29
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 30
    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x4

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    move v1, v0

    .line 37
    :goto_1
    array-length v2, p1

    .line 38
    if-ge v1, v2, :cond_3

    .line 39
    .line 40
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    .line 41
    .line 42
    if-ge v1, v2, :cond_3

    .line 43
    .line 44
    aget-byte v2, p1, v1

    .line 45
    .line 46
    const/16 v3, 0x20

    .line 47
    .line 48
    const/16 v4, 0x7e

    .line 49
    .line 50
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v0, 0x1

    .line 61
    :goto_2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    :goto_3
    return p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
