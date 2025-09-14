.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mLength:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final isValid([B)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    array-length p1, p1

    .line 7
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    .line 9
    if-ge p1, p0, :cond_0

    .line 11
    const/4 p0, 0x4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0

    .line 15
    :pswitch_0
    array-length p1, p1

    .line 16
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    .line 18
    if-ge p1, p0, :cond_1

    .line 20
    const/4 p0, 0x4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    :goto_1
    return p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
