.class public final synthetic Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    .line 8
    iget p0, p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    .line 17
    iget-object p0, p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    .line 19
    return-object p0

    .line 20
    :pswitch_1
    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 22
    new-instance p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 24
    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 33
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 39
    return-object p0

    .line 40
    :pswitch_2
    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-object p0, p1

    .line 46
    check-cast p0, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 48
    return-object p1

    .line 49
    :pswitch_3
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 51
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_4
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 58
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
