.class public final synthetic Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    new-array p0, p1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 17
    return-object p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
